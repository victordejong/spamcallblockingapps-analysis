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

    /* renamed from: a  reason: collision with root package name */
    private final int f12285a;

    /* renamed from: b  reason: collision with root package name */
    private final int f12286b;

    /* renamed from: c  reason: collision with root package name */
    private final int f12287c;

    /* renamed from: d  reason: collision with root package name */
    private final int f12288d;
    private final int e;
    private final int f;
    private PopupWindow g;
    private ViewGroup h;
    private TextView i;
    private ImageView j;
    private ImageView k;
    private View l;
    private Drawable m;
    private ArrowPosition n;
    private ObjectAnimator o;
    private ObjectAnimator p;
    private boolean q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.contacts.activity.contact.details.overlay.ToolTipPopup$5  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$5.class */
    public static /* synthetic */ class AnonymousClass5 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12297a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ArrowPosition.values().length];
            f12297a = iArr;
            try {
                iArr[ArrowPosition.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f12297a[ArrowPosition.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/overlay/ToolTipPopup$ArrowPosition.class */
    public enum ArrowPosition {
        TOP,
        BOTTOM
    }

    private ToolTipPopup(Context context, int i) {
        this.f12285a = (int) CallAppApplication.get().getResources().getDimension(2131166092);
        this.f12286b = (int) Activities.a(12.0f);
        this.f12287c = (int) Activities.a(14.0f);
        this.f12288d = 14;
        this.e = (int) CallAppApplication.get().getResources().getDimension(2131166090);
        this.f = (int) CallAppApplication.get().getResources().getDimension(2131166091);
        this.m = null;
        this.n = ArrowPosition.TOP;
        this.q = false;
        this.g = new PopupWindow(context);
        setContentView(((LayoutInflater) context.getSystemService("layout_inflater")).inflate(i, (ViewGroup) null));
        this.h = (ViewGroup) this.l.findViewById(2131364158);
        TextView textView = (TextView) this.l.findViewById(2131364165);
        this.i = textView;
        textView.setText(Activities.getString(2131886652));
        this.j = (ImageView) this.l.findViewById(2131362031);
        this.k = (ImageView) this.l.findViewById(2131362028);
    }

    private ToolTipPopup(Context context, String str) {
        this(context, 2131559055);
        setText(str);
    }

    public static ToolTipPopup a(final View view, String str, final int i, final PopupWindow.OnDismissListener onDismissListener, final View view2) {
        CallappAnimationUtils.a(view2, (float) BitmapDescriptorFactory.HUE_RED, 0.5f, (int) ConnectionResult.DRIVE_EXTERNAL_STORAGE_REQUIRED, 7);
        final PopupWindow.OnDismissListener onDismissListener2 = new PopupWindow.OnDismissListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.ToolTipPopup.3
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                CallappAnimationUtils.c(view2);
                onDismissListener.onDismiss();
            }
        };
        if (view == null) {
            return null;
        }
        ToolTipPopup toolTipPopup = new ToolTipPopup(view.getContext(), str);
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.contact.details.overlay.ToolTipPopup.4
            @Override // java.lang.Runnable
            public final void run() {
                if (!ToolTipPopup.this.isCancelled()) {
                    ToolTipPopup.this.setOnDismissListener(onDismissListener2);
                    ToolTipPopup.a(ToolTipPopup.this, view, i);
                }
            }
        }, 1000L);
        return toolTipPopup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        ObjectAnimator a2 = CallappAnimationUtils.a(this.g.getContentView(), 100, 0, 8, new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.ToolTipPopup.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ToolTipPopup.this.b();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ToolTipPopup.this.b();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
        this.p = a2;
        if (a2 != null) {
            a2.start();
        }
    }

    static /* synthetic */ void a(ToolTipPopup toolTipPopup, View view, int i) {
        boolean z;
        ImageView imageView;
        ImageView imageView2;
        if (toolTipPopup.l == null) {
            z = false;
        } else {
            Drawable drawable = toolTipPopup.m;
            if (drawable == null) {
                toolTipPopup.g.setBackgroundDrawable(new BitmapDrawable());
            } else {
                toolTipPopup.g.setBackgroundDrawable(drawable);
            }
            toolTipPopup.g.setWidth(-2);
            toolTipPopup.g.setHeight(-2);
            toolTipPopup.g.setContentView(toolTipPopup.l);
            z = true;
        }
        if (z) {
            int[] iArr = new int[2];
            view.getLocationOnScreen(iArr);
            Rect rect = new Rect(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
            toolTipPopup.l.measure(-2, -2);
            int measuredWidth = toolTipPopup.l.getMeasuredWidth();
            int measuredHeight = toolTipPopup.l.getMeasuredHeight();
            int screenWidth = Activities.getScreenWidth(1);
            int i2 = measuredWidth;
            if (measuredWidth > screenWidth) {
                i2 = screenWidth - (toolTipPopup.e * 2);
            }
            int i3 = i2;
            if (i2 > DialogPopup.MAX_ALLOWED_DIALOG_WIDTH_PX) {
                i3 = DialogPopup.MAX_ALLOWED_DIALOG_WIDTH_PX;
            }
            ViewUtils.h(toolTipPopup.i, i3 - (toolTipPopup.e * 2));
            if (rect.top < Activities.getScreenHeight(1) / 2) {
                toolTipPopup.n = ArrowPosition.BOTTOM;
            }
            if (AnonymousClass5.f12297a[toolTipPopup.n.ordinal()] != 1) {
                imageView = toolTipPopup.j;
                imageView2 = toolTipPopup.k;
            } else {
                imageView = toolTipPopup.k;
                imageView2 = toolTipPopup.j;
            }
            imageView.setVisibility(0);
            imageView2.setVisibility(4);
            toolTipPopup.setTextViewPadding(toolTipPopup.n);
            int measuredWidth2 = imageView.getMeasuredWidth();
            int centerX = rect.centerX();
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) imageView.getLayoutParams();
            int i4 = i3 / 2;
            if (centerX + i4 <= screenWidth && centerX - i4 >= 0) {
                marginLayoutParams.leftMargin = ((i3 - measuredWidth2) / 2) - toolTipPopup.e;
            } else if (centerX > screenWidth / 2) {
                marginLayoutParams.leftMargin = ((centerX - (screenWidth - i3)) - toolTipPopup.e) - (measuredWidth2 / 2);
            } else {
                marginLayoutParams.leftMargin = (centerX - toolTipPopup.e) - (measuredWidth2 / 2);
            }
            int width = (view.getWidth() - i3) / 2;
            int i5 = toolTipPopup.n == ArrowPosition.TOP ? (-view.getHeight()) - measuredHeight : (-toolTipPopup.f) - i;
            try {
                toolTipPopup.g.getContentView().setAlpha(BitmapDescriptorFactory.HUE_RED);
                toolTipPopup.g.showAsDropDown(view, width, i5);
                ObjectAnimator b2 = CallappAnimationUtils.b(toolTipPopup.g.getContentView(), 700, 0);
                toolTipPopup.o = b2;
                if (b2 != null) {
                    b2.addListener(new Animator.AnimatorListener() { // from class: com.callapp.contacts.activity.contact.details.overlay.ToolTipPopup.1
                        @Override // android.animation.Animator.AnimatorListener
                        public void onAnimationCancel(Animator animator) {
                            ToolTipPopup.this.a();
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
                    toolTipPopup.o.start();
                }
            } catch (WindowManager.BadTokenException | IllegalArgumentException e) {
                CLog.a(ToolTipPopup.class, e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        PopupWindow popupWindow = this.g;
        if (popupWindow != null) {
            try {
                popupWindow.dismiss();
            } catch (RuntimeException e) {
                CLog.a(ToolTipPopup.class, "removeToolTipFromWindow() Activity is destroyed: " + e.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.g.setOnDismissListener(onDismissListener);
    }

    private void setTextViewPadding(ArrowPosition arrowPosition) {
        int i;
        int i2;
        if (AnonymousClass5.f12297a[arrowPosition.ordinal()] != 1) {
            i2 = this.f12287c;
            i = this.f12286b;
        } else {
            i2 = this.f12286b;
            i = this.f12287c;
        }
        TextView textView = this.i;
        int i3 = this.f12285a;
        textView.setPadding(i3, i2, i3, i);
    }

    public final void a(boolean z) {
        if (!z) {
            b();
            ObjectAnimator objectAnimator = this.p;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                return;
            }
            return;
        }
        ObjectAnimator objectAnimator2 = this.o;
        if (objectAnimator2 == null || !objectAnimator2.isRunning()) {
            a();
        } else {
            this.o.cancel();
        }
    }

    public boolean isCancelled() {
        return this.q;
    }

    public boolean isTooltipShowing() {
        PopupWindow popupWindow = this.g;
        return popupWindow != null && popupWindow.isShowing();
    }

    public void setCancelled(boolean z) {
        this.q = z;
    }

    public void setContentView(View view) {
        this.l = view;
        this.g.setContentView(view);
    }

    public void setText(String str) {
        this.i.setText(str);
    }
}
