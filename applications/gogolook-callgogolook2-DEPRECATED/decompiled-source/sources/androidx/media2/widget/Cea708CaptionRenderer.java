package androidx.media2.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.CharacterStyle;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.SubscriptSpan;
import android.text.style.SuperscriptSpan;
import android.text.style.UnderlineSpan;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.CaptioningManager;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.media2.widget.Cea708CCParser;
import androidx.media2.widget.ClosedCaptionWidget;
import androidx.media2.widget.SubtitleController;
import androidx.media2.widget.SubtitleTrack;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CaptionRenderer.class */
public class Cea708CaptionRenderer extends SubtitleController.Renderer {
    public Cea708CCWidget mCCWidget;
    public final Context mContext;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget.class */
    public class Cea708CCWidget extends ClosedCaptionWidget implements Cea708CCParser.DisplayListener {
        public final CCHandler mCCHandler;

        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCHandler.class */
        public class CCHandler implements Handler.Callback {
            public static final int CAPTION_ALL_WINDOWS_BITMAP = 255;
            public static final long CAPTION_CLEAR_INTERVAL_MS = 60000;
            public static final int CAPTION_WINDOWS_MAX = 8;
            public static final boolean DEBUG = false;
            public static final int MSG_CAPTION_CLEAR = 2;
            public static final int MSG_DELAY_CANCEL = 1;
            public static final String TAG = "CCHandler";
            public static final int TENTHS_OF_SECOND_IN_MILLIS = 100;
            public final CCLayout mCCLayout;
            public CCWindowLayout mCurrentWindowLayout;
            public boolean mIsDelayed = false;
            public final CCWindowLayout[] mCaptionWindowLayouts = new CCWindowLayout[8];
            public final ArrayList<Cea708CCParser.CaptionEvent> mPendingCaptionEvents = new ArrayList<>();
            public final Handler mHandler = new Handler(this);

            public CCHandler(CCLayout cCLayout) {
                this.mCCLayout = cCLayout;
            }

            private void clearWindows(int i) {
                if (i != 0) {
                    Iterator<CCWindowLayout> it = getWindowsFromBitmap(i).iterator();
                    while (it.hasNext()) {
                        it.next().clear();
                    }
                }
            }

            private void defineWindow(Cea708CCParser.CaptionWindow captionWindow) {
                int i;
                if (captionWindow != null && (i = captionWindow.f116id) >= 0) {
                    CCWindowLayout[] cCWindowLayoutArr = this.mCaptionWindowLayouts;
                    if (i < cCWindowLayoutArr.length) {
                        CCWindowLayout cCWindowLayout = cCWindowLayoutArr[i];
                        CCWindowLayout cCWindowLayout2 = cCWindowLayout;
                        if (cCWindowLayout == null) {
                            cCWindowLayout2 = new CCWindowLayout(Cea708CCWidget.this, this.mCCLayout.getContext());
                        }
                        cCWindowLayout2.initWindow(this.mCCLayout, captionWindow);
                        this.mCaptionWindowLayouts[i] = cCWindowLayout2;
                        this.mCurrentWindowLayout = cCWindowLayout2;
                    }
                }
            }

            private void delay(int i) {
                if (i >= 0 && i <= 255) {
                    this.mIsDelayed = true;
                    Handler handler = this.mHandler;
                    handler.sendMessageDelayed(handler.obtainMessage(1), i * 100);
                }
            }

            private void delayCancel() {
                this.mIsDelayed = false;
                processPendingBuffer();
            }

            private void deleteWindows(int i) {
                if (i != 0) {
                    Iterator<CCWindowLayout> it = getWindowsFromBitmap(i).iterator();
                    while (it.hasNext()) {
                        CCWindowLayout next = it.next();
                        next.removeFromCaptionView();
                        this.mCaptionWindowLayouts[next.getCaptionWindowId()] = null;
                    }
                }
            }

            private void displayWindows(int i) {
                if (i != 0) {
                    Iterator<CCWindowLayout> it = getWindowsFromBitmap(i).iterator();
                    while (it.hasNext()) {
                        it.next().show();
                    }
                }
            }

            private ArrayList<CCWindowLayout> getWindowsFromBitmap(int i) {
                CCWindowLayout cCWindowLayout;
                ArrayList<CCWindowLayout> arrayList = new ArrayList<>();
                for (int i2 = 0; i2 < 8; i2++) {
                    if (!(((1 << i2) & i) == 0 || (cCWindowLayout = this.mCaptionWindowLayouts[i2]) == null)) {
                        arrayList.add(cCWindowLayout);
                    }
                }
                return arrayList;
            }

            private void hideWindows(int i) {
                if (i != 0) {
                    Iterator<CCWindowLayout> it = getWindowsFromBitmap(i).iterator();
                    while (it.hasNext()) {
                        it.next().hide();
                    }
                }
            }

            private void processPendingBuffer() {
                Iterator<Cea708CCParser.CaptionEvent> it = this.mPendingCaptionEvents.iterator();
                while (it.hasNext()) {
                    processCaptionEvent(it.next());
                }
                this.mPendingCaptionEvents.clear();
            }

            private void sendBufferToCurrentWindow(String str) {
                CCWindowLayout cCWindowLayout = this.mCurrentWindowLayout;
                if (cCWindowLayout != null) {
                    cCWindowLayout.sendBuffer(str);
                    this.mHandler.removeMessages(2);
                    Handler handler = this.mHandler;
                    handler.sendMessageDelayed(handler.obtainMessage(2), 60000L);
                }
            }

            private void sendControlToCurrentWindow(char c) {
                CCWindowLayout cCWindowLayout = this.mCurrentWindowLayout;
                if (cCWindowLayout != null) {
                    cCWindowLayout.sendControl(c);
                }
            }

            private void setCurrentWindowLayout(int i) {
                CCWindowLayout cCWindowLayout;
                if (i >= 0) {
                    CCWindowLayout[] cCWindowLayoutArr = this.mCaptionWindowLayouts;
                    if (i < cCWindowLayoutArr.length && (cCWindowLayout = cCWindowLayoutArr[i]) != null) {
                        this.mCurrentWindowLayout = cCWindowLayout;
                    }
                }
            }

            private void setPenAttr(Cea708CCParser.CaptionPenAttr captionPenAttr) {
                CCWindowLayout cCWindowLayout = this.mCurrentWindowLayout;
                if (cCWindowLayout != null) {
                    cCWindowLayout.setPenAttr(captionPenAttr);
                }
            }

            private void setPenColor(Cea708CCParser.CaptionPenColor captionPenColor) {
                CCWindowLayout cCWindowLayout = this.mCurrentWindowLayout;
                if (cCWindowLayout != null) {
                    cCWindowLayout.setPenColor(captionPenColor);
                }
            }

            private void setPenLocation(Cea708CCParser.CaptionPenLocation captionPenLocation) {
                CCWindowLayout cCWindowLayout = this.mCurrentWindowLayout;
                if (cCWindowLayout != null) {
                    cCWindowLayout.setPenLocation(captionPenLocation.row, captionPenLocation.column);
                }
            }

            private void setWindowAttr(Cea708CCParser.CaptionWindowAttr captionWindowAttr) {
                CCWindowLayout cCWindowLayout = this.mCurrentWindowLayout;
                if (cCWindowLayout != null) {
                    cCWindowLayout.setWindowAttr(captionWindowAttr);
                }
            }

            private void toggleWindows(int i) {
                if (i != 0) {
                    Iterator<CCWindowLayout> it = getWindowsFromBitmap(i).iterator();
                    while (it.hasNext()) {
                        CCWindowLayout next = it.next();
                        if (next.isShown()) {
                            next.hide();
                        } else {
                            next.show();
                        }
                    }
                }
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i = message.what;
                if (i == 1) {
                    delayCancel();
                    return true;
                } else if (i != 2) {
                    return false;
                } else {
                    clearWindows(255);
                    return true;
                }
            }

            public void processCaptionEvent(Cea708CCParser.CaptionEvent captionEvent) {
                if (this.mIsDelayed) {
                    this.mPendingCaptionEvents.add(captionEvent);
                    return;
                }
                switch (captionEvent.type) {
                    case 1:
                        sendBufferToCurrentWindow((String) captionEvent.obj);
                        return;
                    case 2:
                        sendControlToCurrentWindow(((Character) captionEvent.obj).charValue());
                        return;
                    case 3:
                        setCurrentWindowLayout(((Integer) captionEvent.obj).intValue());
                        return;
                    case 4:
                        clearWindows(((Integer) captionEvent.obj).intValue());
                        return;
                    case 5:
                        displayWindows(((Integer) captionEvent.obj).intValue());
                        return;
                    case 6:
                        hideWindows(((Integer) captionEvent.obj).intValue());
                        return;
                    case 7:
                        toggleWindows(((Integer) captionEvent.obj).intValue());
                        return;
                    case 8:
                        deleteWindows(((Integer) captionEvent.obj).intValue());
                        return;
                    case 9:
                        delay(((Integer) captionEvent.obj).intValue());
                        return;
                    case 10:
                        delayCancel();
                        return;
                    case 11:
                        reset();
                        return;
                    case 12:
                        setPenAttr((Cea708CCParser.CaptionPenAttr) captionEvent.obj);
                        return;
                    case 13:
                        setPenColor((Cea708CCParser.CaptionPenColor) captionEvent.obj);
                        return;
                    case 14:
                        setPenLocation((Cea708CCParser.CaptionPenLocation) captionEvent.obj);
                        return;
                    case 15:
                        setWindowAttr((Cea708CCParser.CaptionWindowAttr) captionEvent.obj);
                        return;
                    case 16:
                        defineWindow((Cea708CCParser.CaptionWindow) captionEvent.obj);
                        return;
                    default:
                        return;
                }
            }

            public void reset() {
                this.mCurrentWindowLayout = null;
                this.mIsDelayed = false;
                this.mPendingCaptionEvents.clear();
                for (int i = 0; i < 8; i++) {
                    CCWindowLayout[] cCWindowLayoutArr = this.mCaptionWindowLayouts;
                    if (cCWindowLayoutArr[i] != null) {
                        cCWindowLayoutArr[i].removeFromCaptionView();
                    }
                    this.mCaptionWindowLayouts[i] = null;
                }
                this.mCCLayout.setVisibility(4);
                this.mHandler.removeMessages(2);
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCLayout.class */
        public class CCLayout extends ScaledLayout implements ClosedCaptionWidget.ClosedCaptionLayout {
            public static final float SAFE_TITLE_AREA_SCALE_END_X = 0.9f;
            public static final float SAFE_TITLE_AREA_SCALE_END_Y = 0.9f;
            public static final float SAFE_TITLE_AREA_SCALE_START_X = 0.1f;
            public static final float SAFE_TITLE_AREA_SCALE_START_Y = 0.1f;
            public final ScaledLayout mSafeTitleAreaLayout;

            public CCLayout(Context context) {
                super(context);
                this.mSafeTitleAreaLayout = new ScaledLayout(context);
                addView(this.mSafeTitleAreaLayout, new ScaledLayout.ScaledLayoutParams(0.1f, 0.9f, 0.1f, 0.9f));
            }

            public void addOrUpdateViewToSafeTitleArea(CCWindowLayout cCWindowLayout, ScaledLayout.ScaledLayoutParams scaledLayoutParams) {
                if (this.mSafeTitleAreaLayout.indexOfChild(cCWindowLayout) < 0) {
                    this.mSafeTitleAreaLayout.addView(cCWindowLayout, scaledLayoutParams);
                } else {
                    this.mSafeTitleAreaLayout.updateViewLayout(cCWindowLayout, scaledLayoutParams);
                }
            }

            public void removeViewFromSafeTitleArea(CCWindowLayout cCWindowLayout) {
                this.mSafeTitleAreaLayout.removeView(cCWindowLayout);
            }

            @Override // androidx.media2.widget.ClosedCaptionWidget.ClosedCaptionLayout
            public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle) {
                int childCount = this.mSafeTitleAreaLayout.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    ((CCWindowLayout) this.mSafeTitleAreaLayout.getChildAt(i)).setCaptionStyle(captionStyle);
                }
            }

            @Override // androidx.media2.widget.ClosedCaptionWidget.ClosedCaptionLayout
            public void setFontScale(float f) {
                int childCount = this.mSafeTitleAreaLayout.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    ((CCWindowLayout) this.mSafeTitleAreaLayout.getChildAt(i)).setFontScale(f);
                }
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCView.class */
        public class CCView extends SubtitleView {
            public CCView(Cea708CCWidget cea708CCWidget, Context context) {
                this(cea708CCWidget, context, null);
            }

            public CCView(Cea708CCWidget cea708CCWidget, Context context, AttributeSet attributeSet) {
                this(context, attributeSet, 0);
            }

            public CCView(Context context, AttributeSet attributeSet, int i) {
                super(context, attributeSet, i);
            }

            public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle) {
                if (Build.VERSION.SDK_INT >= 21) {
                    if (captionStyle.hasForegroundColor()) {
                        setForegroundColor(captionStyle.foregroundColor);
                    }
                    if (captionStyle.hasBackgroundColor()) {
                        setBackgroundColor(captionStyle.backgroundColor);
                    }
                    if (captionStyle.hasEdgeType()) {
                        setEdgeType(captionStyle.edgeType);
                    }
                    if (captionStyle.hasEdgeColor()) {
                        setEdgeColor(captionStyle.edgeColor);
                    }
                }
                setTypeface(captionStyle.getTypeface());
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$CCWindowLayout.class */
        public class CCWindowLayout extends RelativeLayout implements View.OnLayoutChangeListener {
            public static final int ANCHOR_HORIZONTAL_16_9_MAX = 209;
            public static final int ANCHOR_HORIZONTAL_MODE_CENTER = 1;
            public static final int ANCHOR_HORIZONTAL_MODE_LEFT = 0;
            public static final int ANCHOR_HORIZONTAL_MODE_RIGHT = 2;
            public static final int ANCHOR_MODE_DIVIDER = 3;
            public static final int ANCHOR_RELATIVE_POSITIONING_MAX = 99;
            public static final int ANCHOR_VERTICAL_MAX = 74;
            public static final int ANCHOR_VERTICAL_MODE_BOTTOM = 2;
            public static final int ANCHOR_VERTICAL_MODE_CENTER = 1;
            public static final int ANCHOR_VERTICAL_MODE_TOP = 0;
            public static final int MAX_COLUMN_COUNT_16_9 = 42;
            public static final float PROPORTION_PEN_SIZE_LARGE = 1.25f;
            public static final float PROPORTION_PEN_SIZE_SMALL = 0.75f;
            public static final String TAG = "CCWindowLayout";
            public final SpannableStringBuilder mBuilder;
            public CCLayout mCCLayout;
            public CCView mCCView;
            public CaptioningManager.CaptionStyle mCaptionStyle;
            public int mCaptionWindowId;
            public final List<CharacterStyle> mCharacterStyles;
            public float mFontScale;
            public int mLastCaptionLayoutHeight;
            public int mLastCaptionLayoutWidth;
            public int mRow;
            public int mRowLimit;
            public float mTextSize;
            public String mWidestChar;

            public CCWindowLayout(Cea708CCWidget cea708CCWidget, Context context) {
                this(cea708CCWidget, context, null);
            }

            public CCWindowLayout(Cea708CCWidget cea708CCWidget, Context context, AttributeSet attributeSet) {
                this(context, attributeSet, 0);
            }

            public CCWindowLayout(Context context, AttributeSet attributeSet, int i) {
                super(context, attributeSet, i);
                this.mRowLimit = 0;
                this.mBuilder = new SpannableStringBuilder();
                this.mCharacterStyles = new ArrayList();
                this.mRow = -1;
                this.mCCView = new CCView(Cea708CCWidget.this, context);
                addView(this.mCCView, new RelativeLayout.LayoutParams(-2, -2));
                CaptioningManager captioningManager = (CaptioningManager) context.getSystemService("captioning");
                this.mFontScale = captioningManager.getFontScale();
                setCaptionStyle(captioningManager.getUserStyle());
                this.mCCView.setText("");
                updateWidestChar();
            }

            private int getScreenColumnCount() {
                return 42;
            }

            private void updateText(String str, boolean z) {
                if (!z) {
                    this.mBuilder.clear();
                }
                if (str != null && str.length() > 0) {
                    int length = this.mBuilder.length();
                    this.mBuilder.append((CharSequence) str);
                    for (CharacterStyle characterStyle : this.mCharacterStyles) {
                        SpannableStringBuilder spannableStringBuilder = this.mBuilder;
                        spannableStringBuilder.setSpan(characterStyle, length, spannableStringBuilder.length(), 33);
                    }
                }
                String[] split = TextUtils.split(this.mBuilder.toString(), "\n");
                String join = TextUtils.join("\n", Arrays.copyOfRange(split, Math.max(0, split.length - (this.mRowLimit + 1)), split.length));
                SpannableStringBuilder spannableStringBuilder2 = this.mBuilder;
                spannableStringBuilder2.delete(0, spannableStringBuilder2.length() - join.length());
                int length2 = this.mBuilder.length() - 1;
                int i = 0;
                while (i <= length2 && this.mBuilder.charAt(i) <= ' ') {
                    i++;
                }
                int i2 = length2;
                while (i2 >= i && this.mBuilder.charAt(i2) <= ' ') {
                    i2--;
                }
                if (i == 0 && i2 == length2) {
                    this.mCCView.setText(this.mBuilder);
                    return;
                }
                SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder();
                spannableStringBuilder3.append((CharSequence) this.mBuilder);
                if (i2 < length2) {
                    spannableStringBuilder3.delete(i2 + 1, length2 + 1);
                }
                if (i > 0) {
                    spannableStringBuilder3.delete(0, i);
                }
                this.mCCView.setText(spannableStringBuilder3);
            }

            private void updateTextSize() {
                if (this.mCCLayout != null) {
                    StringBuilder sb = new StringBuilder();
                    int screenColumnCount = getScreenColumnCount();
                    for (int i = 0; i < screenColumnCount; i++) {
                        sb.append(this.mWidestChar);
                    }
                    String sb2 = sb.toString();
                    Paint paint = new Paint();
                    paint.setTypeface(this.mCaptionStyle.getTypeface());
                    float f = 0.0f;
                    float f2 = 255.0f;
                    while (f < f2) {
                        float f3 = (f + f2) / 2.0f;
                        paint.setTextSize(f3);
                        if (this.mCCLayout.getWidth() * 0.8f > paint.measureText(sb2)) {
                            f = f3 + 0.01f;
                        } else {
                            f2 = f3 - 0.01f;
                        }
                    }
                    this.mTextSize = f2 * this.mFontScale;
                    this.mCCView.setTextSize(this.mTextSize);
                }
            }

            private void updateWidestChar() {
                Paint paint = new Paint();
                paint.setTypeface(this.mCaptionStyle.getTypeface());
                Charset forName = Charset.forName("ISO-8859-1");
                float f = 0.0f;
                for (int i = 0; i < 256; i++) {
                    String str = new String(new byte[]{(byte) i}, forName);
                    float measureText = paint.measureText(str);
                    f = f;
                    if (f < measureText) {
                        this.mWidestChar = str;
                        f = measureText;
                    }
                }
                updateTextSize();
            }

            public void appendText(String str) {
                updateText(str, true);
            }

            public void clear() {
                clearText();
                hide();
            }

            public void clearText() {
                this.mBuilder.clear();
                this.mCCView.setText("");
            }

            public int getCaptionWindowId() {
                return this.mCaptionWindowId;
            }

            public void hide() {
                setVisibility(4);
                requestLayout();
            }

            /* JADX WARN: Code restructure failed: missing block: B:19:0x007e, code lost:
                if (r0 > 1.0f) goto L_0x0081;
             */
            /* JADX WARN: Code restructure failed: missing block: B:24:0x00b8, code lost:
                if (r0 > 1.0f) goto L_0x00bb;
             */
            /* JADX WARN: Removed duplicated region for block: B:53:0x01fe  */
            /* JADX WARN: Removed duplicated region for block: B:61:0x024f  */
            /* JADX WARN: Removed duplicated region for block: B:64:0x0295  */
            /* JADX WARN: Removed duplicated region for block: B:65:0x029c  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void initWindow(androidx.media2.widget.Cea708CaptionRenderer.Cea708CCWidget.CCLayout r11, androidx.media2.widget.Cea708CCParser.CaptionWindow r12) {
                /*
                    Method dump skipped, instructions count: 673
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.Cea708CaptionRenderer.Cea708CCWidget.CCWindowLayout.initWindow(androidx.media2.widget.Cea708CaptionRenderer$Cea708CCWidget$CCLayout, androidx.media2.widget.Cea708CCParser$CaptionWindow):void");
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                int i9 = i3 - i;
                int i10 = i4 - i2;
                if (i9 != this.mLastCaptionLayoutWidth || i10 != this.mLastCaptionLayoutHeight) {
                    this.mLastCaptionLayoutWidth = i9;
                    this.mLastCaptionLayoutHeight = i10;
                    updateTextSize();
                }
            }

            public void removeFromCaptionView() {
                CCLayout cCLayout = this.mCCLayout;
                if (cCLayout != null) {
                    cCLayout.removeViewFromSafeTitleArea(this);
                    this.mCCLayout.removeOnLayoutChangeListener(this);
                    this.mCCLayout = null;
                }
            }

            public void sendBuffer(String str) {
                appendText(str);
            }

            public void sendControl(char c) {
            }

            public void setCaptionStyle(CaptioningManager.CaptionStyle captionStyle) {
                this.mCaptionStyle = captionStyle;
                this.mCCView.setCaptionStyle(captionStyle);
            }

            public void setCaptionWindowId(int i) {
                this.mCaptionWindowId = i;
            }

            public void setFontScale(float f) {
                this.mFontScale = f;
                updateTextSize();
            }

            public void setPenAttr(Cea708CCParser.CaptionPenAttr captionPenAttr) {
                this.mCharacterStyles.clear();
                if (captionPenAttr.italic) {
                    this.mCharacterStyles.add(new StyleSpan(2));
                }
                if (captionPenAttr.underline) {
                    this.mCharacterStyles.add(new UnderlineSpan());
                }
                int i = captionPenAttr.penSize;
                if (i == 0) {
                    this.mCharacterStyles.add(new RelativeSizeSpan(0.75f));
                } else if (i == 2) {
                    this.mCharacterStyles.add(new RelativeSizeSpan(1.25f));
                }
                int i2 = captionPenAttr.penOffset;
                if (i2 == 0) {
                    this.mCharacterStyles.add(new SubscriptSpan());
                } else if (i2 == 2) {
                    this.mCharacterStyles.add(new SuperscriptSpan());
                }
            }

            public void setPenColor(Cea708CCParser.CaptionPenColor captionPenColor) {
            }

            public void setPenLocation(int i, int i2) {
                int i3 = this.mRow;
                if (i3 >= 0) {
                    while (i3 < i) {
                        appendText("\n");
                        i3++;
                    }
                }
                this.mRow = i;
            }

            public void setRowLimit(int i) {
                if (i >= 0) {
                    this.mRowLimit = i;
                    return;
                }
                throw new IllegalArgumentException("A rowLimit should have a positive number");
            }

            public void setText(String str) {
                updateText(str, false);
            }

            public void setWindowAttr(Cea708CCParser.CaptionWindowAttr captionWindowAttr) {
            }

            public void show() {
                setVisibility(0);
                requestLayout();
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout.class */
        public class ScaledLayout extends ViewGroup {
            public static final boolean DEBUG = false;
            public static final String TAG = "ScaledLayout";
            public Rect[] mRectArray;
            public final Comparator<Rect> mRectTopLeftSorter = new Comparator<Rect>() { // from class: androidx.media2.widget.Cea708CaptionRenderer.Cea708CCWidget.ScaledLayout.1
                public int compare(Rect rect, Rect rect2) {
                    int i = rect.top;
                    int i2 = rect2.top;
                    return i != i2 ? i - i2 : rect.left - rect2.left;
                }
            };

            /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CaptionRenderer$Cea708CCWidget$ScaledLayout$ScaledLayoutParams.class */
            public class ScaledLayoutParams extends ViewGroup.LayoutParams {
                public static final float SCALE_UNSPECIFIED = -1.0f;
                public float scaleEndCol;
                public float scaleEndRow;
                public float scaleStartCol;
                public float scaleStartRow;

                public ScaledLayoutParams(float f, float f2, float f3, float f4) {
                    super(-1, -1);
                    this.scaleStartRow = f;
                    this.scaleEndRow = f2;
                    this.scaleStartCol = f3;
                    this.scaleEndCol = f4;
                }

                public ScaledLayoutParams(Context context, AttributeSet attributeSet) {
                    super(-1, -1);
                }
            }

            public ScaledLayout(Context context) {
                super(context);
            }

            @Override // android.view.ViewGroup
            public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
                return layoutParams instanceof ScaledLayoutParams;
            }

            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                int childCount = getChildCount();
                for (int i = 0; i < childCount; i++) {
                    View childAt = getChildAt(i);
                    if (childAt.getVisibility() != 8) {
                        Rect[] rectArr = this.mRectArray;
                        if (i < rectArr.length) {
                            int i2 = rectArr[i].left;
                            int i3 = rectArr[i].top;
                            int save = canvas.save();
                            canvas.translate(i2 + paddingLeft, i3 + paddingTop);
                            childAt.draw(canvas);
                            canvas.restoreToCount(save);
                        } else {
                            return;
                        }
                    }
                }
            }

            @Override // android.view.ViewGroup
            public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
                return new ScaledLayoutParams(getContext(), attributeSet);
            }

            @Override // android.view.ViewGroup, android.view.View
            public void onLayout(boolean z, int i, int i2, int i3, int i4) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                int childCount = getChildCount();
                for (int i5 = 0; i5 < childCount; i5++) {
                    View childAt = getChildAt(i5);
                    if (childAt.getVisibility() != 8) {
                        Rect[] rectArr = this.mRectArray;
                        childAt.layout(rectArr[i5].left + paddingLeft, rectArr[i5].top + paddingTop, rectArr[i5].right + paddingTop, rectArr[i5].bottom + paddingLeft);
                    }
                }
            }

            @Override // android.view.View
            public void onMeasure(int i, int i2) {
                int i3;
                int i4;
                int i5;
                int i6;
                int size = View.MeasureSpec.getSize(i);
                int size2 = View.MeasureSpec.getSize(i2);
                int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
                int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
                int childCount = getChildCount();
                this.mRectArray = new Rect[childCount];
                for (int i7 = 0; i7 < childCount; i7++) {
                    View childAt = getChildAt(i7);
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    if (layoutParams instanceof ScaledLayoutParams) {
                        ScaledLayoutParams scaledLayoutParams = (ScaledLayoutParams) layoutParams;
                        float f = scaledLayoutParams.scaleStartRow;
                        float f2 = scaledLayoutParams.scaleEndRow;
                        float f3 = scaledLayoutParams.scaleStartCol;
                        float f4 = scaledLayoutParams.scaleEndCol;
                        if (f < 0.0f || f > 1.0f) {
                            throw new RuntimeException("A child of ScaledLayout should have a range of scaleStartRow between 0 and 1");
                        } else if (f2 < f || i5 > 0) {
                            throw new RuntimeException("A child of ScaledLayout should have a range of scaleEndRow between scaleStartRow and 1");
                        } else if (f4 < 0.0f || f4 > 1.0f) {
                            throw new RuntimeException("A child of ScaledLayout should have a range of scaleStartCol between 0 and 1");
                        } else if (f4 < f3 || i6 > 0) {
                            throw new RuntimeException("A child of ScaledLayout should have a range of scaleEndCol between scaleStartCol and 1");
                        } else {
                            float f5 = paddingLeft;
                            int i8 = (int) (f3 * f5);
                            float f6 = paddingTop;
                            this.mRectArray[i7] = new Rect(i8, (int) (f * f6), (int) (f4 * f5), (int) (f2 * f6));
                            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec((int) (f5 * (f4 - f3)), 1073741824);
                            childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec(0, 0));
                            if (childAt.getMeasuredHeight() > this.mRectArray[i7].height()) {
                                int measuredHeight = ((childAt.getMeasuredHeight() - this.mRectArray[i7].height()) + 1) / 2;
                                Rect[] rectArr = this.mRectArray;
                                rectArr[i7].bottom += measuredHeight;
                                rectArr[i7].top -= measuredHeight;
                                if (rectArr[i7].top < 0) {
                                    rectArr[i7].bottom -= rectArr[i7].top;
                                    rectArr[i7].top = 0;
                                }
                                Rect[] rectArr2 = this.mRectArray;
                                if (rectArr2[i7].bottom > paddingTop) {
                                    rectArr2[i7].top -= rectArr2[i7].bottom - paddingTop;
                                    rectArr2[i7].bottom = paddingTop;
                                }
                            }
                            childAt.measure(makeMeasureSpec, View.MeasureSpec.makeMeasureSpec((int) (f6 * (f2 - f)), 1073741824));
                        }
                    } else {
                        throw new RuntimeException("A child of ScaledLayout cannot have the UNSPECIFIED scale factors");
                    }
                }
                int[] iArr = new int[childCount];
                Rect[] rectArr3 = new Rect[childCount];
                int i9 = 0;
                for (int i10 = 0; i10 < childCount; i10++) {
                    i9 = i9;
                    if (getChildAt(i10).getVisibility() == 0) {
                        iArr[i9] = i9;
                        rectArr3[i9] = this.mRectArray[i10];
                        i9++;
                    }
                }
                Arrays.sort(rectArr3, 0, i9, this.mRectTopLeftSorter);
                int i11 = 0;
                while (true) {
                    i3 = i9 - 1;
                    if (i11 < i3) {
                        int i12 = i11 + 1;
                        for (int i13 = i12; i13 < i9; i13++) {
                            if (Rect.intersects(rectArr3[i11], rectArr3[i13])) {
                                iArr[i13] = iArr[i11];
                                rectArr3[i13].set(rectArr3[i13].left, rectArr3[i11].bottom, rectArr3[i13].right, rectArr3[i11].bottom + rectArr3[i13].height());
                            }
                        }
                        i11 = i12;
                    }
                }
                for (i4 = i3; i4 >= 0; i4--) {
                    if (rectArr3[i4].bottom > paddingTop) {
                        int i14 = rectArr3[i4].bottom - paddingTop;
                        for (int i15 = 0; i15 <= i4; i15++) {
                            if (iArr[i4] == iArr[i15]) {
                                rectArr3[i15].set(rectArr3[i15].left, rectArr3[i15].top - i14, rectArr3[i15].right, rectArr3[i15].bottom - i14);
                            }
                        }
                    }
                }
                setMeasuredDimension(size, size2);
            }
        }

        public Cea708CCWidget(Cea708CaptionRenderer cea708CaptionRenderer, Context context) {
            this(cea708CaptionRenderer, context, null);
        }

        public Cea708CCWidget(Cea708CaptionRenderer cea708CaptionRenderer, Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 0);
        }

        public Cea708CCWidget(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.mCCHandler = new CCHandler((CCLayout) this.mClosedCaptionLayout);
        }

        @Override // androidx.media2.widget.ClosedCaptionWidget
        public ClosedCaptionWidget.ClosedCaptionLayout createCaptionLayout(Context context) {
            return new CCLayout(context);
        }

        @Override // androidx.media2.widget.Cea708CCParser.DisplayListener
        public void emitEvent(Cea708CCParser.CaptionEvent captionEvent) {
            this.mCCHandler.processCaptionEvent(captionEvent);
            setSize(getWidth(), getHeight());
            SubtitleTrack.RenderingWidget.OnChangedListener onChangedListener = this.mListener;
            if (onChangedListener != null) {
                onChangedListener.onChanged(this);
            }
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            ((ViewGroup) this.mClosedCaptionLayout).draw(canvas);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/Cea708CaptionRenderer$Cea708CaptionTrack.class */
    public static class Cea708CaptionTrack extends SubtitleTrack {
        public final Cea708CCParser mCCParser;
        public final Cea708CCWidget mRenderingWidget;

        public Cea708CaptionTrack(Cea708CCWidget cea708CCWidget, MediaFormat mediaFormat) {
            super(mediaFormat);
            this.mRenderingWidget = cea708CCWidget;
            this.mCCParser = new Cea708CCParser(this.mRenderingWidget);
        }

        @Override // androidx.media2.widget.SubtitleTrack
        public SubtitleTrack.RenderingWidget getRenderingWidget() {
            return this.mRenderingWidget;
        }

        @Override // androidx.media2.widget.SubtitleTrack
        public void onData(byte[] bArr, boolean z, long j) {
            this.mCCParser.parse(bArr);
        }

        @Override // androidx.media2.widget.SubtitleTrack
        public void updateView(ArrayList<SubtitleTrack.Cue> arrayList) {
        }
    }

    public Cea708CaptionRenderer(@NonNull Context context) {
        this.mContext = context;
    }

    @Override // androidx.media2.widget.SubtitleController.Renderer
    @NonNull
    public SubtitleTrack createTrack(@NonNull MediaFormat mediaFormat) {
        if ("text/cea-708".equals(mediaFormat.getString("mime"))) {
            if (this.mCCWidget == null) {
                this.mCCWidget = new Cea708CCWidget(this, this.mContext);
            }
            return new Cea708CaptionTrack(this.mCCWidget, mediaFormat);
        }
        throw new RuntimeException("No matching format: " + mediaFormat.toString());
    }

    @Override // androidx.media2.widget.SubtitleController.Renderer
    public boolean supports(@NonNull MediaFormat mediaFormat) {
        if (mediaFormat.containsKey("mime")) {
            return "text/cea-708".equals(mediaFormat.getString("mime"));
        }
        return false;
    }
}
