package com.truecaller.videocallerid.p187ui.fullscreenpopupvideo;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.fragment.app.Fragment;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.videocallerid.C4718R;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p948a.p951b.AbstractC15626j;
import p193e.p194a.p947k.p948a.p951b.C15613a;
import p193e.p194a.p947k.p948a.p951b.animationAnimation$AnimationListenerC15618b;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0019\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\t\u0010\bJ\u000f\u0010\n\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\bR%\u0010\u0011\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R%\u0010\u0014\u001a\n \f*\u0004\u0018\u00010\u000b0\u000b8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0010R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00158B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/FullScreenPopupVideoActivity;", "Ln3/b/a/h;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "onStart", "()V", "onPause", "finish", "Landroid/view/animation/Animation;", "kotlin.jvm.PlatformType", "e", "Ls1/g;", "getExitAnimation", "()Landroid/view/animation/Animation;", "exitAnimation", "d", "getEnterAnimation", "enterAnimation", "Landroid/view/View;", "qa", "()Landroid/view/View;", "acsContainer", "<init>", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.fullscreenpopupvideo.FullScreenPopupVideoActivity */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/fullscreenpopupvideo/FullScreenPopupVideoActivity.class */
public final class FullScreenPopupVideoActivity extends AbstractC15626j {

    /* renamed from: d */
    public final g f16013d = C25225a.m3978P1(new C4728a(0, this));

    /* renamed from: e */
    public final g f16014e = C25225a.m3978P1(new C4728a(1, this));

    /* renamed from: com.truecaller.videocallerid.ui.fullscreenpopupvideo.FullScreenPopupVideoActivity$a */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/videocallerid/ui/fullscreenpopupvideo/FullScreenPopupVideoActivity$a.class */
    public static final class C4728a extends m implements a<Animation> {

        /* renamed from: b */
        public final /* synthetic */ int f16015b;

        /* renamed from: c */
        public final /* synthetic */ Object f16016c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4728a(int i, Object obj) {
            super(0);
            this.f16015b = i;
            this.f16016c = obj;
        }

        /* JADX WARN: Type inference failed for: r0v11, types: [android.content.Context, com.truecaller.videocallerid.ui.fullscreenpopupvideo.FullScreenPopupVideoActivity] */
        /* JADX WARN: Type inference failed for: r0v5, types: [android.content.Context, com.truecaller.videocallerid.ui.fullscreenpopupvideo.FullScreenPopupVideoActivity] */
        public final Object invoke() {
            int i = this.f16015b;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                return AnimationUtils.loadAnimation((FullScreenPopupVideoActivity) this.f16016c, C4718R.anim.vid_exit_transition);
            }
            return AnimationUtils.loadAnimation((FullScreenPopupVideoActivity) this.f16016c, C4718R.anim.vid_enter_transition);
        }
    }

    /* renamed from: ra */
    public static final void m34461ra(Context context, VideoExpansionType videoExpansionType) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(videoExpansionType, "videoExpansionType");
        try {
            l.e(context, AnalyticsConstants.CONTEXT);
            l.e(videoExpansionType, "videoExpansionType");
            Intent intent = new Intent(context, FullScreenPopupVideoActivity.class);
            intent.putExtra("ARG_VID_EXPANSION_TYPE", videoExpansionType);
            context.startActivity(intent);
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }

    public void finish() {
        Animation animation = (Animation) this.f16014e.getValue();
        animation.setFillAfter(true);
        animation.setAnimationListener(new animationAnimation$AnimationListenerC15618b(this));
        View m34462qa = m34462qa();
        if (m34462qa != null) {
            m34462qa.startAnimation(animation);
        }
    }

    public void onCreate(Bundle bundle) {
        FullScreenPopupVideoActivity.super.onCreate(bundle);
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        Objects.requireNonNull(C15613a.f44141i);
        c26907a.m1120m(16908290, new C15613a(), null);
        c26907a.mo1127f();
    }

    public void onPause() {
        FullScreenPopupVideoActivity.super.onPause();
        finish();
    }

    public void onStart() {
        View m34462qa;
        FullScreenPopupVideoActivity.super.onStart();
        if (!((Animation) this.f16013d.getValue()).hasStarted() && (m34462qa = m34462qa()) != null) {
            m34462qa.startAnimation((Animation) this.f16013d.getValue());
        }
    }

    /* renamed from: qa */
    public final View m34462qa() {
        View view;
        Fragment m42943J = getSupportFragmentManager().m42943J(16908290);
        return (m42943J == null || (view = m42943J.getView()) == null) ? null : view.findViewById(C4718R.C4720id.fullScreenPopupVideoContainer);
    }
}
