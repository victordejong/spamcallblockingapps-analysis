package com.callapp.contacts.activity.contact.details.overlay;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.CallappAnimationUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/ToolTipPopup.class */
public class ToolTipPopup {

    /* renamed from: a */
    private final int f22074a;

    /* renamed from: b */
    private final int f22075b;

    /* renamed from: c */
    private final int f22076c;

    /* renamed from: d */
    private final int f22077d;

    /* renamed from: e */
    private final int f22078e;

    /* renamed from: f */
    private final int f22079f;

    /* renamed from: g */
    private PopupWindow f22080g;

    /* renamed from: h */
    private ViewGroup f22081h;

    /* renamed from: i */
    private TextView f22082i;

    /* renamed from: j */
    private ImageView f22083j;

    /* renamed from: k */
    private ImageView f22084k;

    /* renamed from: l */
    private View f22085l;

    /* renamed from: m */
    private Drawable f22086m;

    /* renamed from: n */
    private ArrowPosition f22087n;

    /* renamed from: o */
    private ObjectAnimator f22088o;

    /* renamed from: p */
    private ObjectAnimator f22089p;

    /* renamed from: q */
    private boolean f22090q;

    /* renamed from: com.callapp.contacts.activity.contact.details.overlay.ToolTipPopup$5 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$5.class */
    public static /* synthetic */ class C63175 {

        /* renamed from: a */
        static final /* synthetic */ int[] f22099a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ArrowPosition.values().length];
            f22099a = iArr;
            try {
                iArr[ArrowPosition.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f22099a[ArrowPosition.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition.class */
    public enum ArrowPosition {
        TOP,
        BOTTOM
    }

    private ToolTipPopup(Context context, int i) {
        this.f22074a = (int) CallAppApplication.get().getResources().getDimension(2131166092);
        this.f22075b = (int) Activities.m27699a(12.0f);
        this.f22076c = (int) Activities.m27699a(14.0f);
        this.f22077d = 14;
        this.f22078e = (int) CallAppApplication.get().getResources().getDimension(2131166090);
        this.f22079f = (int) CallAppApplication.get().getResources().getDimension(2131166091);
        this.f22086m = null;
        this.f22087n = ArrowPosition.TOP;
        this.f22090q = false;
        this.f22080g = new PopupWindow(context);
        setContentView(((LayoutInflater) context.getSystemService("layout_inflater")).inflate(i, (ViewGroup) null));
        this.f22081h = (ViewGroup) this.f22085l.findViewById(2131364158);
        TextView textView = (TextView) this.f22085l.findViewById(2131364165);
        this.f22082i = textView;
        textView.setText(Activities.getString(2131886652));
        this.f22083j = (ImageView) this.f22085l.findViewById(2131362031);
        this.f22084k = (ImageView) this.f22085l.findViewById(2131362028);
    }

    private ToolTipPopup(Context context, String str) {
        this(context, 2131559055);
        setText(str);
    }

    /* renamed from: a */
    public static ToolTipPopup m30851a(final View view, String str, final int i, final PopupWindow.OnDismissListener onDismissListener, final View view2) {
        CallappAnimationUtils.m27187a(view2, (float) BitmapDescriptorFactory.HUE_RED, 0.5f, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, 7);
        final PopupWindow.OnDismissListener onDismissListener2 = new PopupWindow.OnDismissListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.ToolTipPopup.3
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                CallappAnimationUtils.m27171c(view2);
                onDismissListener.onDismiss();
            }
        };
        if (view != null) {
            ToolTipPopup toolTipPopup = new ToolTipPopup(view.getContext(), str);
            CallAppApplication.get().m31869a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.ToolTipPopup.4
                @Override // java.lang.Runnable
                public final void run() {
                    if (!ToolTipPopup.this.isCancelled()) {
                        ToolTipPopup.this.setOnDismissListener(onDismissListener2);
                        ToolTipPopup.m30849a(ToolTipPopup.this, view, i);
                    }
                }
            }, 1000L);
            return toolTipPopup;
        }
        return null;
    }

    /* renamed from: a */
    public void m30852a() {
        ObjectAnimator m27182a = CallappAnimationUtils.m27182a(this.f22080g.getContentView(), 100, 0, 8, new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.ToolTipPopup.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ToolTipPopup.this.m30846b();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ToolTipPopup.this.m30846b();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        this.f22089p = m27182a;
        if (m27182a != null) {
            m27182a.start();
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m30849a(ToolTipPopup toolTipPopup, View view, int i) {
        boolean z;
        ImageView imageView;
        ImageView imageView2;
        if (toolTipPopup.f22085l == null) {
            z = false;
        } else {
            Drawable drawable = toolTipPopup.f22086m;
            if (drawable == null) {
                toolTipPopup.f22080g.setBackgroundDrawable(new BitmapDrawable());
            } else {
                toolTipPopup.f22080g.setBackgroundDrawable(drawable);
            }
            toolTipPopup.f22080g.setWidth(-2);
            toolTipPopup.f22080g.setHeight(-2);
            toolTipPopup.f22080g.setContentView(toolTipPopup.f22085l);
            z = true;
        }
        if (z) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
            toolTipPopup.f22085l.measure(-2, -2);
            int measuredWidth = toolTipPopup.f22085l.getMeasuredWidth();
            int measuredHeight = toolTipPopup.f22085l.getMeasuredHeight();
            int screenWidth = Activities.getScreenWidth(1);
            int i2 = measuredWidth;
            if (measuredWidth > screenWidth) {
                i2 = screenWidth - (toolTipPopup.f22078e * 2);
            }
            int i3 = i2;
            if (i2 > DialogPopup.MAX_ALLOWED_DIALOG_WIDTH_PX) {
                i3 = DialogPopup.MAX_ALLOWED_DIALOG_WIDTH_PX;
            }
            ViewUtils.m27286h(toolTipPopup.f22082i, i3 - (toolTipPopup.f22078e * 2));
            if (rect.top < Activities.getScreenHeight(1) / 2) {
                toolTipPopup.f22087n = ArrowPosition.BOTTOM;
            }
            if (C63175.f22099a[toolTipPopup.f22087n.ordinal()] != 1) {
                imageView = toolTipPopup.f22083j;
                imageView2 = toolTipPopup.f22084k;
            } else {
                imageView = toolTipPopup.f22084k;
                imageView2 = toolTipPopup.f22083j;
            }
            imageView.setVisibility(0);
            imageView2.setVisibility(4);
            toolTipPopup.setTextViewPadding(toolTipPopup.f22087n);
            int measuredWidth2 = imageView.getMeasuredWidth();
            int centerX = rect.centerX();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            int i4 = i3 / 2;
            if (centerX + i4 <= screenWidth && centerX - i4 >= 0) {
                marginLayoutParams.leftMargin = ((i3 - measuredWidth2) / 2) - toolTipPopup.f22078e;
            } else if (centerX > screenWidth / 2) {
                marginLayoutParams.leftMargin = ((centerX - (screenWidth - i3)) - toolTipPopup.f22078e) - (measuredWidth2 / 2);
            } else {
                marginLayoutParams.leftMargin = (centerX - toolTipPopup.f22078e) - (measuredWidth2 / 2);
            }
            int width = (view.getWidth() - i3) / 2;
            int i5 = toolTipPopup.f22087n == ArrowPosition.TOP ? (-view.getHeight()) - measuredHeight : (-toolTipPopup.f22079f) - i;
            try {
                toolTipPopup.f22080g.getContentView().setAlpha(BitmapDescriptorFactory.HUE_RED);
                toolTipPopup.f22080g.showAsDropDown(view, width, i5);
                ObjectAnimator m27173b = CallappAnimationUtils.m27173b(toolTipPopup.f22080g.getContentView(), 700, 0);
                toolTipPopup.f22088o = m27173b;
                if (m27173b == null) {
                    return;
                }
                m27173b.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.ToolTipPopup.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        ToolTipPopup.this.m30852a();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
                toolTipPopup.f22088o.start();
            } catch (WindowManager.BadTokenException | IllegalArgumentException e) {
                CLog.m27611a(ToolTipPopup.class, e.getMessage());
            }
        }
    }

    /* renamed from: b */
    public void m30846b() {
        PopupWindow popupWindow = this.f22080g;
        if (popupWindow != null) {
            try {
                popupWindow.dismiss();
            } catch (RuntimeException e) {
                CLog.m27611a(ToolTipPopup.class, "removeToolTipFromWindow() Activity is destroyed: " + e.getMessage());
            }
        }
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f22080g.setOnDismissListener(onDismissListener);
    }

    private void setTextViewPadding(ArrowPosition arrowPosition) {
        int i;
        int i2;
        if (C63175.f22099a[arrowPosition.ordinal()] != 1) {
            i2 = this.f22076c;
            i = this.f22075b;
        } else {
            i2 = this.f22075b;
            i = this.f22076c;
        }
        TextView textView = this.f22082i;
        int i3 = this.f22074a;
        textView.setPadding(i3, i2, i3, i);
    }

    /* renamed from: a */
    public final void m30847a(boolean z) {
        if (!z) {
            m30846b();
            ObjectAnimator objectAnimator = this.f22089p;
            if (objectAnimator == null) {
                return;
            }
            objectAnimator.cancel();
            return;
        }
        ObjectAnimator objectAnimator2 = this.f22088o;
        if (objectAnimator2 == null || !objectAnimator2.isRunning()) {
            m30852a();
        } else {
            this.f22088o.cancel();
        }
    }

    public boolean isCancelled() {
        return this.f22090q;
    }

    public boolean isTooltipShowing() {
        PopupWindow popupWindow = this.f22080g;
        return popupWindow != null && popupWindow.isShowing();
    }

    public void setCancelled(boolean z) {
        this.f22090q = z;
    }

    public void setContentView(View view) {
        this.f22085l = view;
        this.f22080g.setContentView(view);
    }

    public void setText(String str) {
        this.f22082i.setText(str);
    }
}
