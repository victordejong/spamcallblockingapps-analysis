package com.privacystar.core.p011ui.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.p001v4.view.ViewCompat;
import android.support.p004v7.widget.AppCompatEditText;
import android.text.Editable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.PinEntryEditText */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/PinEntryEditText.class */
public class PinEntryEditText extends AppCompatEditText {
    public static final String XML_NAMESPACE_ANDROID = "http://schemas.android.com/apk/res/android";
    private View.OnClickListener mClickListener;
    private Paint mLinesPaint;
    private float mSpace = 10.0f;
    private float mNumChars = 6.0f;
    private float mLineSpacing = 8.0f;
    private float mLineStroke = 1.0f;
    private float mLineStrokeSelected = 2.0f;
    int[] mColors = {-16711936, ViewCompat.MEASURED_STATE_MASK, -7829368};

    public PinEntryEditText(Context context) {
        super(context);
    }

    public PinEntryEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public PinEntryEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        float f = context.getResources().getDisplayMetrics().density;
        this.mLineStroke *= f;
        this.mLineStrokeSelected *= f;
        this.mLinesPaint = new Paint(getPaint());
        this.mLinesPaint.setStrokeWidth(this.mLineStroke);
        if (!isInEditMode()) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(2130968827, typedValue, true);
            this.mColors[0] = typedValue.data;
            context.getTheme().resolveAttribute(2130968833, typedValue, true);
            this.mColors[1] = typedValue.data;
            context.getTheme().resolveAttribute(2130968828, typedValue, true);
            this.mColors[2] = typedValue.data;
        }
        setBackgroundResource(0);
        this.mSpace *= f;
        this.mLineSpacing = f * this.mLineSpacing;
        this.mNumChars = attributeSet.getAttributeIntValue(XML_NAMESPACE_ANDROID, "maxLength", 6);
        super.setCustomSelectionActionModeCallback(new ActionMode.Callback() { // from class: com.privacystar.core.ui.widgets.PinEntryEditText.1
            @Override // android.view.ActionMode.Callback
            public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }

            @Override // android.view.ActionMode.Callback
            public void onDestroyActionMode(ActionMode actionMode) {
            }

            @Override // android.view.ActionMode.Callback
            public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                return false;
            }
        });
        super.setOnClickListener(new View.OnClickListener(this) { // from class: com.privacystar.core.ui.widgets.PinEntryEditText$$Lambda$0
            private final PinEntryEditText arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.arg$1.lambda$init$0$PinEntryEditText(view);
            }
        });
    }

    private void updateColorForLines(boolean z) {
        if (isFocused()) {
            this.mLinesPaint.setStrokeWidth(this.mLineStrokeSelected);
            this.mLinesPaint.setColor(getContext().getResources().getColor(C1566R.color.floatingHintColor));
            if (z) {
                this.mLinesPaint.setColor(getContext().getResources().getColor(C1566R.color.floatingHintColor));
                return;
            }
            return;
        }
        this.mLinesPaint.setStrokeWidth(this.mLineStroke);
        this.mLinesPaint.setColor(getContext().getResources().getColor(C1566R.color.floatingHintColor));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$init$0$PinEntryEditText(View view) {
        setSelection(getText().length());
        if (this.mClickListener != null) {
            this.mClickListener.onClick(view);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        int width = (getWidth() - getPaddingRight()) - getPaddingLeft();
        float f3 = this.mSpace < 0.0f ? width / ((this.mNumChars * 2.0f) - 1.0f) : (width - (this.mSpace * (this.mNumChars - 1.0f))) / this.mNumChars;
        int paddingLeft = getPaddingLeft();
        int height = getHeight();
        int paddingBottom = getPaddingBottom();
        Editable text = getText();
        int length = text.length();
        float[] fArr = new float[length];
        getPaint().getTextWidths(getText(), 0, length, fArr);
        int i = 0;
        while (i < this.mNumChars) {
            updateColorForLines(i == length);
            float f4 = paddingLeft;
            float f5 = height - paddingBottom;
            canvas.drawLine(f4, f5, f4 + f3, f5, this.mLinesPaint);
            if (getText().length() > i) {
                canvas.drawText(text, i, i + 1, ((f3 / 2.0f) + f4) - (fArr[0] / 2.0f), f5 - this.mLineSpacing, getPaint());
            }
            if (this.mSpace < 0.0f) {
                f2 = f4;
                f = f3 * 2.0f;
            } else {
                f2 = f4;
                f = this.mSpace + f3;
            }
            paddingLeft = (int) (f2 + f);
            i++;
        }
    }

    @Override // android.support.p004v7.widget.AppCompatEditText, android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        throw new RuntimeException("setCustomSelectionActionModeCallback() not supported.");
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.mClickListener = onClickListener;
    }
}
