package com.truecaller.videocallerid.p187ui.utils;

import android.animation.Animator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.widget.Button;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.videocallerid.p187ui.videoplayer.AvatarVideoPlayerView;
import kotlin.Metadata;
import p1727n3.p1807k.p1821i.C26574e;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p947k.p948a.p963j.C15804a;
import p193e.p194a.p947k.p948a.p963j.C15814h;
import p193e.p194a.p947k.p948a.p964k.AbstractC15816a;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\u0018�� \u00162\u00020\u0001:\u0001$J+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0017¢\u0006\u0004\b\r\u0010\u000eJ)\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0010\b\u0002\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR%\u0010\"\u001a\n \u001d*\u0004\u0018\u00010\u001c0\u001c8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R%\u0010+\u001a\n \u001d*\u0004\u0018\u00010'0'8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u001f\u001a\u0004\b)\u0010*R\u0018\u0010.\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010-R*\u00106\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R%\u0010;\u001a\n \u001d*\u0004\u0018\u000107078B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u0010\u001f\u001a\u0004\b9\u0010:R*\u0010?\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010/8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b<\u00101\u001a\u0004\b=\u00103\"\u0004\b>\u00105¨\u0006@"}, d2 = {"Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;", "Landroidx/cardview/widget/CardView;", "", "message", "", "showGotIt", "Le/a/k/a/k/a;", "avatarVideoConfig", "Ls1/s;", "j", "(Ljava/lang/String;ZLe/a/k/a/k/a;)V", "Landroid/view/MotionEvent;", "event", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "", "startDelay", "Ls1/u/g;", "Le/a/k/a/j/a$a;", "queue", "h", "(JLs1/u/g;)V", "i", "()V", "Le/a/p5/i0;", C22021b.f61237c, "Le/a/p5/i0;", "resourceProvider", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", AbstractC2405c.f7629a, "Ls1/g;", "getMessageTextView", "()Landroid/widget/TextView;", "messageTextView", "Landroid/view/ContextThemeWrapper;", "a", "Landroid/view/ContextThemeWrapper;", "themedContext", "Landroid/widget/Button;", "d", "getGotItButton", "()Landroid/widget/Button;", "gotItButton", "Ln3/k/i/e;", "Ln3/k/i/e;", "gestureDetector", "Lkotlin/Function0;", "f", "Ls1/z/b/a;", "getGotItClickListener", "()Ls1/z/b/a;", "setGotItClickListener", "(Ls1/z/b/a;)V", "gotItClickListener", "Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;", "e", "getVideoAvatarView", "()Lcom/truecaller/videocallerid/ui/videoplayer/AvatarVideoPlayerView;", "videoAvatarView", "g", "getDismissListener", "setDismissListener", "dismissListener", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.utils.ToastWithActionView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/utils/ToastWithActionView.class */
public final class ToastWithActionView extends CardView {

    /* renamed from: i */
    public static final C4737a f16055i = new C4737a(null);

    /* renamed from: a */
    public final ContextThemeWrapper f16056a;

    /* renamed from: b */
    public final C19235i0 f16057b;

    /* renamed from: c */
    public final g f16058c;

    /* renamed from: d */
    public final g f16059d;

    /* renamed from: e */
    public final g f16060e;

    /* renamed from: f */
    public a<s> f16061f;

    /* renamed from: g */
    public a<s> f16062g;

    /* renamed from: h */
    public C26574e f16063h;

    /* renamed from: com.truecaller.videocallerid.ui.utils.ToastWithActionView$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/utils/ToastWithActionView$a.class */
    public static final class C4737a {
        public C4737a(f fVar) {
        }
    }

    /* renamed from: com.truecaller.videocallerid.ui.utils.ToastWithActionView$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/utils/ToastWithActionView$b.class */
    public static final class C4738b implements Animator.AnimatorListener {

        /* renamed from: b */
        public final /* synthetic */ s1.u.g f16065b;

        public C4738b(s1.u.g gVar) {
            ToastWithActionView.this = r4;
            this.f16065b = gVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            s1.u.g gVar = this.f16065b;
            if (gVar != null && gVar.a() > 1) {
                C19286f.m13689O(ToastWithActionView.this);
            }
            a<s> dismissListener = ToastWithActionView.this.getDismissListener();
            if (dismissListener != null) {
                s sVar = (s) dismissListener.invoke();
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public ToastWithActionView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ToastWithActionView(android.content.Context r6, android.util.AttributeSet r7, int r8, int r9) {
        /*
            r5 = this;
            r0 = r9
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L9
            r0 = 0
            r7 = r0
        L9:
            r0 = r9
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L12
            r0 = 0
            r8 = r0
        L12:
            r0 = r6
            java.lang.String r1 = "context"
            s1.z.c.l.e(r0, r1)
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            r0.<init>(r1, r2, r3)
            android.view.ContextThemeWrapper r0 = new android.view.ContextThemeWrapper
            r1 = r0
            r2 = r6
            int r3 = com.truecaller.themes.C4621R.style.ThemeX_Dark
            r1.<init>(r2, r3)
            r7 = r0
            r0 = r5
            r1 = r7
            r0.f16056a = r1
            e.a.p5.i0 r0 = new e.a.p5.i0
            r1 = r0
            r2 = r7
            r1.<init>(r2)
            r6 = r0
            r0 = r5
            r1 = r6
            r0.f16057b = r1
            r0 = r5
            r1 = r5
            int r2 = com.truecaller.videocallerid.C4718R.C4720id.messageTextView
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f16058c = r1
            r0 = r5
            r1 = r5
            int r2 = com.truecaller.videocallerid.C4718R.C4720id.gotItButton
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f16059d = r1
            r0 = r5
            r1 = r5
            int r2 = com.truecaller.videocallerid.C4718R.C4720id.videoAvatarView
            s1.g r1 = p193e.p194a.p1129p5.p1132s0.C19286f.m13660s(r1, r2)
            r0.f16060e = r1
            r0 = r7
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            int r1 = com.truecaller.videocallerid.C4718R.layout.layout_toast_with_action
            r2 = r5
            r3 = 1
            android.view.View r0 = r0.inflate(r1, r2, r3)
            r0 = r5
            r1 = 1
            r0.setUseCompatPadding(r1)
            r0 = r5
            android.content.Context r0 = r0.getContext()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "context"
            s1.z.c.l.d(r0, r1)
            r0 = r5
            r1 = r7
            r2 = 1090519040(0x41000000, float:8.0)
            int r1 = p193e.p194a.p1129p5.p1132s0.C19291g.m13494z(r1, r2)
            float r1 = (float) r1
            r0.setRadius(r1)
            r0 = r5
            r1 = r6
            int r2 = com.truecaller.videocallerid.C4718R.attr.tcx_backgroundTertiary
            int r1 = r1.mo13758l(r2)
            r2 = 1130224026(0x435dd99a, float:221.85)
            int r2 = (int) r2
            int r1 = p1727n3.p1807k.p1812c.C26493a.m1747l(r1, r2)
            r0.setCardBackgroundColor(r1)
            r0 = r5
            android.widget.Button r0 = r0.getGotItButton()
            e.a.k.a.j.i r1 = new e.a.k.a.j.i
            r2 = r1
            r3 = r5
            r2.<init>(r3)
            r0.setOnClickListener(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.videocallerid.p187ui.utils.ToastWithActionView.<init>(android.content.Context, android.util.AttributeSet, int, int):void");
    }

    /* renamed from: g */
    public static final void m34454g(ToastWithActionView toastWithActionView, PopupWindow popupWindow, long j) {
        toastWithActionView.m34452i();
        toastWithActionView.animate().setStartDelay(j).setDuration(200L).setListener(new C15814h(toastWithActionView, popupWindow)).start();
    }

    private final Button getGotItButton() {
        return (Button) this.f16059d.getValue();
    }

    private final TextView getMessageTextView() {
        return (TextView) this.f16058c.getValue();
    }

    private final AvatarVideoPlayerView getVideoAvatarView() {
        return (AvatarVideoPlayerView) this.f16060e.getValue();
    }

    public final a<s> getDismissListener() {
        return this.f16062g;
    }

    public final a<s> getGotItClickListener() {
        return this.f16061f;
    }

    /* renamed from: h */
    public final void m34453h(long j, s1.u.g<C15804a.C15805a> gVar) {
        m34452i();
        animate().setStartDelay(j).setDuration(200L).setListener(new C4738b(gVar)).start();
    }

    /* renamed from: i */
    public final void m34452i() {
        animate().setListener(null).cancel();
    }

    /* renamed from: j */
    public final void m34451j(String str, boolean z, AbstractC15816a abstractC15816a) {
        l.e(str, "message");
        TextView messageTextView = getMessageTextView();
        l.d(messageTextView, "messageTextView");
        messageTextView.setText(str);
        Button gotItButton = getGotItButton();
        l.d(gotItButton, "gotItButton");
        C19286f.m13683U(gotItButton, z);
        if (abstractC15816a == null) {
            AvatarVideoPlayerView videoAvatarView = getVideoAvatarView();
            l.d(videoAvatarView, "videoAvatarView");
            C19286f.m13683U(videoAvatarView, false);
            return;
        }
        AvatarVideoPlayerView videoAvatarView2 = getVideoAvatarView();
        l.d(videoAvatarView2, "videoAvatarView");
        C19286f.m13684T(videoAvatarView2);
        AvatarVideoPlayerView.m34449g(getVideoAvatarView(), abstractC15816a, null, 2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        l.e(motionEvent, "event");
        C26574e c26574e = this.f16063h;
        boolean z = true;
        if (c26574e == null || !((C26574e.C26576b) c26574e.f74449a).f74450a.onTouchEvent(motionEvent)) {
            z = super.onTouchEvent(motionEvent);
        }
        return z;
    }

    public final void setDismissListener(a<s> aVar) {
        this.f16062g = aVar;
    }

    public final void setGotItClickListener(a<s> aVar) {
        this.f16061f = aVar;
    }
}
