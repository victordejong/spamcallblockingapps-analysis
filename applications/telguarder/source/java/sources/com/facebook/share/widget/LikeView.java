package com.facebook.share.widget;

import android.app.Activity;
import android.app.Fragment;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.facebook.FacebookException;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.facebook.common.C0948R;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.FragmentWrapper;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.share.internal.LikeActionController;
import com.facebook.share.internal.LikeBoxCountView;
import com.facebook.share.internal.LikeButton;
import com.pubmatic.sdk.common.POBCommonConstants;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView.class */
public class LikeView extends FrameLayout {
    private static final int NO_FOREGROUND_COLOR = -1;
    private BroadcastReceiver broadcastReceiver;
    private LinearLayout containerView;
    private LikeActionControllerCreationCallback creationCallback;
    private int edgePadding;
    private int internalPadding;
    private LikeActionController likeActionController;
    private LikeBoxCountView likeBoxCountView;
    private LikeButton likeButton;
    private String objectId;
    private ObjectType objectType;
    private OnErrorListener onErrorListener;
    private FragmentWrapper parentFragment;
    private TextView socialSentenceView;
    private Style likeViewStyle = Style.DEFAULT;
    private HorizontalAlignment horizontalAlignment = HorizontalAlignment.DEFAULT;
    private AuxiliaryViewPosition auxiliaryViewPosition = AuxiliaryViewPosition.DEFAULT;
    private int foregroundColor = -1;
    private boolean explicitlyDisabled = true;

    /* renamed from: com.facebook.share.widget.LikeView$2 */
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$2.class */
    public static /* synthetic */ class C11792 {

        /* renamed from: $SwitchMap$com$facebook$share$widget$LikeView$AuxiliaryViewPosition */
        static final /* synthetic */ int[] f109x30689ac;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[AuxiliaryViewPosition.values().length];
            f109x30689ac = iArr;
            try {
                iArr[AuxiliaryViewPosition.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f109x30689ac[AuxiliaryViewPosition.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f109x30689ac[AuxiliaryViewPosition.INLINE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$AuxiliaryViewPosition.class */
    public enum AuxiliaryViewPosition {
        BOTTOM("bottom", 0),
        INLINE(POBCommonConstants.BANNER_PLACEMENT_TYPE, 1),
        TOP(ViewHierarchyConstants.DIMENSION_TOP_KEY, 2);
        
        static AuxiliaryViewPosition DEFAULT = BOTTOM;
        private int intValue;
        private String stringValue;

        AuxiliaryViewPosition(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        static AuxiliaryViewPosition fromInt(int i) {
            AuxiliaryViewPosition[] values;
            for (AuxiliaryViewPosition auxiliaryViewPosition : values()) {
                if (auxiliaryViewPosition.getValue() == i) {
                    return auxiliaryViewPosition;
                }
            }
            return null;
        }

        public int getValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$HorizontalAlignment.class */
    public enum HorizontalAlignment {
        CENTER("center", 0),
        LEFT(ViewHierarchyConstants.DIMENSION_LEFT_KEY, 1),
        RIGHT("right", 2);
        
        static HorizontalAlignment DEFAULT = CENTER;
        private int intValue;
        private String stringValue;

        HorizontalAlignment(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        static HorizontalAlignment fromInt(int i) {
            HorizontalAlignment[] values;
            for (HorizontalAlignment horizontalAlignment : values()) {
                if (horizontalAlignment.getValue() == i) {
                    return horizontalAlignment;
                }
            }
            return null;
        }

        public int getValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$LikeActionControllerCreationCallback.class */
    public class LikeActionControllerCreationCallback implements LikeActionController.CreationCallback {
        private boolean isCancelled;

        private LikeActionControllerCreationCallback() {
            LikeView.this = r4;
        }

        public void cancel() {
            this.isCancelled = true;
        }

        @Override // com.facebook.share.internal.LikeActionController.CreationCallback
        public void onComplete(LikeActionController likeActionController, FacebookException facebookException) {
            if (this.isCancelled) {
                return;
            }
            FacebookException facebookException2 = facebookException;
            if (likeActionController != null) {
                if (!likeActionController.shouldEnableView()) {
                    facebookException = new FacebookException("Cannot use LikeView. The device may not be supported.");
                }
                LikeView.this.associateWithLikeActionController(likeActionController);
                LikeView.this.updateLikeStateAndLayout();
                facebookException2 = facebookException;
            }
            if (facebookException2 != null && LikeView.this.onErrorListener != null) {
                LikeView.this.onErrorListener.onError(facebookException2);
            }
            LikeView.this.creationCallback = null;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$LikeControllerBroadcastReceiver.class */
    public class LikeControllerBroadcastReceiver extends BroadcastReceiver {
        private LikeControllerBroadcastReceiver() {
            LikeView.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Bundle extras = intent.getExtras();
            boolean z = true;
            if (extras != null) {
                String string = extras.getString(LikeActionController.ACTION_OBJECT_ID_KEY);
                z = true;
                if (!Utility.isNullOrEmpty(string)) {
                    z = Utility.areObjectsEqual(LikeView.this.objectId, string);
                }
            }
            if (!z) {
                return;
            }
            if (LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_UPDATED.equals(action)) {
                LikeView.this.updateLikeStateAndLayout();
            } else if (LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR.equals(action)) {
                if (LikeView.this.onErrorListener == null) {
                    return;
                }
                LikeView.this.onErrorListener.onError(NativeProtocol.getExceptionFromErrorData(extras));
            } else if (!LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_RESET.equals(action)) {
            } else {
                LikeView likeView = LikeView.this;
                likeView.setObjectIdAndTypeForced(likeView.objectId, LikeView.this.objectType);
                LikeView.this.updateLikeStateAndLayout();
            }
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$ObjectType.class */
    public enum ObjectType {
        UNKNOWN("unknown", 0),
        OPEN_GRAPH("open_graph", 1),
        PAGE("page", 2);
        
        private int intValue;
        private String stringValue;
        public static ObjectType DEFAULT = UNKNOWN;

        ObjectType(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        public static ObjectType fromInt(int i) {
            ObjectType[] values;
            for (ObjectType objectType : values()) {
                if (objectType.getValue() == i) {
                    return objectType;
                }
            }
            return null;
        }

        public int getValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$OnErrorListener.class */
    public interface OnErrorListener {
        void onError(FacebookException facebookException);
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/facebook/share/widget/LikeView$Style.class */
    public enum Style {
        STANDARD("standard", 0),
        BUTTON("button", 1),
        BOX_COUNT("box_count", 2);
        
        private int intValue;
        private String stringValue;
        static Style DEFAULT = STANDARD;

        Style(String str, int i) {
            this.stringValue = str;
            this.intValue = i;
        }

        static Style fromInt(int i) {
            Style[] values;
            for (Style style : values()) {
                if (style.getValue() == i) {
                    return style;
                }
            }
            return null;
        }

        public int getValue() {
            return this.intValue;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.stringValue;
        }
    }

    @Deprecated
    public LikeView(Context context) {
        super(context);
        initialize(context);
    }

    @Deprecated
    public LikeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        parseAttributes(attributeSet);
        initialize(context);
    }

    public void associateWithLikeActionController(LikeActionController likeActionController) {
        this.likeActionController = likeActionController;
        this.broadcastReceiver = new LikeControllerBroadcastReceiver();
        LocalBroadcastManager localBroadcastManager = LocalBroadcastManager.getInstance(getContext());
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_UPDATED);
        intentFilter.addAction(LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR);
        intentFilter.addAction(LikeActionController.ACTION_LIKE_ACTION_CONTROLLER_DID_RESET);
        localBroadcastManager.registerReceiver(this.broadcastReceiver, intentFilter);
    }

    private Activity getActivity() {
        Context context;
        boolean z;
        Context context2 = getContext();
        while (true) {
            context = context2;
            z = context instanceof Activity;
            if (z || !(context instanceof ContextWrapper)) {
                break;
            }
            context2 = ((ContextWrapper) context).getBaseContext();
        }
        if (z) {
            return (Activity) context;
        }
        throw new FacebookException("Unable to get Activity.");
    }

    private Bundle getAnalyticsParameters() {
        Bundle bundle = new Bundle();
        bundle.putString(AnalyticsEvents.PARAMETER_LIKE_VIEW_STYLE, this.likeViewStyle.toString());
        bundle.putString(AnalyticsEvents.PARAMETER_LIKE_VIEW_AUXILIARY_POSITION, this.auxiliaryViewPosition.toString());
        bundle.putString(AnalyticsEvents.PARAMETER_LIKE_VIEW_HORIZONTAL_ALIGNMENT, this.horizontalAlignment.toString());
        bundle.putString("object_id", Utility.coerceValueIfNullOrEmpty(this.objectId, ""));
        bundle.putString("object_type", this.objectType.toString());
        return bundle;
    }

    private void initialize(Context context) {
        this.edgePadding = getResources().getDimensionPixelSize(C0948R.dimen.com_facebook_likeview_edge_padding);
        this.internalPadding = getResources().getDimensionPixelSize(C0948R.dimen.com_facebook_likeview_internal_padding);
        if (this.foregroundColor == -1) {
            this.foregroundColor = getResources().getColor(C0948R.C0949color.com_facebook_likeview_text_color);
        }
        setBackgroundColor(0);
        this.containerView = new LinearLayout(context);
        this.containerView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        initializeLikeButton(context);
        initializeSocialSentenceView(context);
        initializeLikeCountView(context);
        this.containerView.addView(this.likeButton);
        this.containerView.addView(this.socialSentenceView);
        this.containerView.addView(this.likeBoxCountView);
        addView(this.containerView);
        setObjectIdAndTypeForced(this.objectId, this.objectType);
        updateLikeStateAndLayout();
    }

    private void initializeLikeButton(Context context) {
        LikeActionController likeActionController = this.likeActionController;
        LikeButton likeButton = new LikeButton(context, likeActionController != null && likeActionController.isObjectLiked());
        this.likeButton = likeButton;
        likeButton.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.share.widget.LikeView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    LikeView.this.toggleLike();
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            }
        });
        this.likeButton.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
    }

    private void initializeLikeCountView(Context context) {
        this.likeBoxCountView = new LikeBoxCountView(context);
        this.likeBoxCountView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    }

    private void initializeSocialSentenceView(Context context) {
        TextView textView = new TextView(context);
        this.socialSentenceView = textView;
        textView.setTextSize(0, getResources().getDimension(C0948R.dimen.com_facebook_likeview_text_size));
        this.socialSentenceView.setMaxLines(2);
        this.socialSentenceView.setTextColor(this.foregroundColor);
        this.socialSentenceView.setGravity(17);
        this.socialSentenceView.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
    }

    private void parseAttributes(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes;
        if (attributeSet == null || getContext() == null || (obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0948R.styleable.com_facebook_like_view)) == null) {
            return;
        }
        this.objectId = Utility.coerceValueIfNullOrEmpty(obtainStyledAttributes.getString(C0948R.styleable.com_facebook_like_view_com_facebook_object_id), null);
        this.objectType = ObjectType.fromInt(obtainStyledAttributes.getInt(C0948R.styleable.com_facebook_like_view_com_facebook_object_type, ObjectType.DEFAULT.getValue()));
        Style fromInt = Style.fromInt(obtainStyledAttributes.getInt(C0948R.styleable.com_facebook_like_view_com_facebook_style, Style.DEFAULT.getValue()));
        this.likeViewStyle = fromInt;
        if (fromInt == null) {
            throw new IllegalArgumentException("Unsupported value for LikeView 'style'");
        }
        AuxiliaryViewPosition fromInt2 = AuxiliaryViewPosition.fromInt(obtainStyledAttributes.getInt(C0948R.styleable.com_facebook_like_view_com_facebook_auxiliary_view_position, AuxiliaryViewPosition.DEFAULT.getValue()));
        this.auxiliaryViewPosition = fromInt2;
        if (fromInt2 == null) {
            throw new IllegalArgumentException("Unsupported value for LikeView 'auxiliary_view_position'");
        }
        HorizontalAlignment fromInt3 = HorizontalAlignment.fromInt(obtainStyledAttributes.getInt(C0948R.styleable.com_facebook_like_view_com_facebook_horizontal_alignment, HorizontalAlignment.DEFAULT.getValue()));
        this.horizontalAlignment = fromInt3;
        if (fromInt3 == null) {
            throw new IllegalArgumentException("Unsupported value for LikeView 'horizontal_alignment'");
        }
        this.foregroundColor = obtainStyledAttributes.getColor(C0948R.styleable.com_facebook_like_view_com_facebook_foreground_color, -1);
        obtainStyledAttributes.recycle();
    }

    public void setObjectIdAndTypeForced(String str, ObjectType objectType) {
        tearDownObjectAssociations();
        this.objectId = str;
        this.objectType = objectType;
        if (Utility.isNullOrEmpty(str)) {
            return;
        }
        this.creationCallback = new LikeActionControllerCreationCallback();
        if (isInEditMode()) {
            return;
        }
        LikeActionController.getControllerForObjectId(str, objectType, this.creationCallback);
    }

    private void tearDownObjectAssociations() {
        if (this.broadcastReceiver != null) {
            LocalBroadcastManager.getInstance(getContext()).unregisterReceiver(this.broadcastReceiver);
            this.broadcastReceiver = null;
        }
        LikeActionControllerCreationCallback likeActionControllerCreationCallback = this.creationCallback;
        if (likeActionControllerCreationCallback != null) {
            likeActionControllerCreationCallback.cancel();
            this.creationCallback = null;
        }
        this.likeActionController = null;
    }

    public void toggleLike() {
        if (this.likeActionController != null) {
            Activity activity = null;
            if (this.parentFragment == null) {
                activity = getActivity();
            }
            this.likeActionController.toggleLike(activity, this.parentFragment, getAnalyticsParameters());
        }
    }

    private void updateBoxCountCaretPosition() {
        int i = C11792.f109x30689ac[this.auxiliaryViewPosition.ordinal()];
        if (i == 1) {
            this.likeBoxCountView.setCaretPosition(LikeBoxCountView.LikeBoxCountViewCaretPosition.BOTTOM);
        } else if (i == 2) {
            this.likeBoxCountView.setCaretPosition(LikeBoxCountView.LikeBoxCountViewCaretPosition.TOP);
        } else if (i != 3) {
        } else {
            this.likeBoxCountView.setCaretPosition(this.horizontalAlignment == HorizontalAlignment.RIGHT ? LikeBoxCountView.LikeBoxCountViewCaretPosition.RIGHT : LikeBoxCountView.LikeBoxCountViewCaretPosition.LEFT);
        }
    }

    private void updateLayout() {
        TextView textView;
        LikeActionController likeActionController;
        LikeActionController likeActionController2;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.containerView.getLayoutParams();
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.likeButton.getLayoutParams();
        int i = this.horizontalAlignment == HorizontalAlignment.LEFT ? 3 : this.horizontalAlignment == HorizontalAlignment.CENTER ? 1 : 5;
        layoutParams.gravity = i | 48;
        layoutParams2.gravity = i;
        this.socialSentenceView.setVisibility(8);
        this.likeBoxCountView.setVisibility(8);
        if (this.likeViewStyle == Style.STANDARD && (likeActionController2 = this.likeActionController) != null && !Utility.isNullOrEmpty(likeActionController2.getSocialSentence())) {
            textView = this.socialSentenceView;
        } else if (this.likeViewStyle != Style.BOX_COUNT || (likeActionController = this.likeActionController) == null || Utility.isNullOrEmpty(likeActionController.getLikeCountString())) {
            return;
        } else {
            updateBoxCountCaretPosition();
            textView = this.likeBoxCountView;
        }
        textView.setVisibility(0);
        ((LinearLayout.LayoutParams) textView.getLayoutParams()).gravity = i;
        this.containerView.setOrientation(this.auxiliaryViewPosition == AuxiliaryViewPosition.INLINE ? 0 : 1);
        if (this.auxiliaryViewPosition == AuxiliaryViewPosition.TOP || (this.auxiliaryViewPosition == AuxiliaryViewPosition.INLINE && this.horizontalAlignment == HorizontalAlignment.RIGHT)) {
            this.containerView.removeView(this.likeButton);
            this.containerView.addView(this.likeButton);
        } else {
            this.containerView.removeView(textView);
            this.containerView.addView(textView);
        }
        int i2 = C11792.f109x30689ac[this.auxiliaryViewPosition.ordinal()];
        if (i2 == 1) {
            int i3 = this.edgePadding;
            textView.setPadding(i3, i3, i3, this.internalPadding);
        } else if (i2 == 2) {
            int i4 = this.edgePadding;
            textView.setPadding(i4, this.internalPadding, i4, i4);
        } else if (i2 != 3) {
        } else {
            if (this.horizontalAlignment == HorizontalAlignment.RIGHT) {
                int i5 = this.edgePadding;
                textView.setPadding(i5, i5, this.internalPadding, i5);
                return;
            }
            int i6 = this.internalPadding;
            int i7 = this.edgePadding;
            textView.setPadding(i6, i7, i7, i7);
        }
    }

    public void updateLikeStateAndLayout() {
        boolean z = !this.explicitlyDisabled;
        LikeActionController likeActionController = this.likeActionController;
        if (likeActionController == null) {
            this.likeButton.setSelected(false);
            this.socialSentenceView.setText((CharSequence) null);
            this.likeBoxCountView.setText(null);
        } else {
            this.likeButton.setSelected(likeActionController.isObjectLiked());
            this.socialSentenceView.setText(this.likeActionController.getSocialSentence());
            this.likeBoxCountView.setText(this.likeActionController.getLikeCountString());
            z &= this.likeActionController.shouldEnableView();
        }
        super.setEnabled(z);
        this.likeButton.setEnabled(z);
        updateLayout();
    }

    @Deprecated
    public OnErrorListener getOnErrorListener() {
        return this.onErrorListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        setObjectIdAndType(null, ObjectType.UNKNOWN);
        super.onDetachedFromWindow();
    }

    @Deprecated
    public void setAuxiliaryViewPosition(AuxiliaryViewPosition auxiliaryViewPosition) {
        if (auxiliaryViewPosition == null) {
            auxiliaryViewPosition = AuxiliaryViewPosition.DEFAULT;
        }
        if (this.auxiliaryViewPosition != auxiliaryViewPosition) {
            this.auxiliaryViewPosition = auxiliaryViewPosition;
            updateLayout();
        }
    }

    @Override // android.view.View
    @Deprecated
    public void setEnabled(boolean z) {
        this.explicitlyDisabled = true;
        updateLikeStateAndLayout();
    }

    @Deprecated
    public void setForegroundColor(int i) {
        if (this.foregroundColor != i) {
            this.socialSentenceView.setTextColor(i);
        }
    }

    @Deprecated
    public void setFragment(Fragment fragment) {
        this.parentFragment = new FragmentWrapper(fragment);
    }

    @Deprecated
    public void setFragment(androidx.fragment.app.Fragment fragment) {
        this.parentFragment = new FragmentWrapper(fragment);
    }

    @Deprecated
    public void setHorizontalAlignment(HorizontalAlignment horizontalAlignment) {
        if (horizontalAlignment == null) {
            horizontalAlignment = HorizontalAlignment.DEFAULT;
        }
        if (this.horizontalAlignment != horizontalAlignment) {
            this.horizontalAlignment = horizontalAlignment;
            updateLayout();
        }
    }

    @Deprecated
    public void setLikeViewStyle(Style style) {
        if (style == null) {
            style = Style.DEFAULT;
        }
        if (this.likeViewStyle != style) {
            this.likeViewStyle = style;
            updateLayout();
        }
    }

    @Deprecated
    public void setObjectIdAndType(String str, ObjectType objectType) {
        String coerceValueIfNullOrEmpty = Utility.coerceValueIfNullOrEmpty(str, null);
        if (objectType == null) {
            objectType = ObjectType.DEFAULT;
        }
        if (!Utility.areObjectsEqual(coerceValueIfNullOrEmpty, this.objectId) || objectType != this.objectType) {
            setObjectIdAndTypeForced(coerceValueIfNullOrEmpty, objectType);
            updateLikeStateAndLayout();
        }
    }

    @Deprecated
    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.onErrorListener = onErrorListener;
    }
}
