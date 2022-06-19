package com.truecaller.videocallerid.p187ui.videoplayer;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.videocallerid.C4718R;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p948a.p964k.C15831g;
import p193e.p194a.p947k.p948a.p964k.C15833i;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15864a;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import p193e.p194a.p947k.p972m.C16141o;
import q3.a.x2.i1;
import s1.g;
import s1.h;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\u0018��2\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u001b\u0010\u000f\u001a\u00020\u00062\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00060\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\t¢\u0006\u0004\b\u0012\u0010\fJ\u0015\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\fJ\r\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0013\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u001f\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0014¢\u0006\u0004\b\u001e\u0010\u001fR\"\u0010\"\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010\fR\u001d\u0010)\u001a\u00020%8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010&\u001a\u0004\b'\u0010(R\"\u00100\u001a\u00020\u001b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/¨\u00061"}, d2 = {"Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView;", "Landroid/widget/FrameLayout;", "Le/a/k/a/k/l;", DTBMetricsConfiguration.CONFIG_DIR, "", "analyticsContext", "Ls1/s;", "e", "(Le/a/k/a/k/l;Ljava/lang/String;)V", "", AnalyticsConstants.SHOW, "f", "(Z)V", "Lkotlin/Function0;", "muteButtonClickListener", "d", "(Ls1/z/b/a;)V", "mute", "g", AbstractC2405c.f7629a, "Le/a/k/a/k/z/a;", "getAudioState", "()Le/a/k/a/k/z/a;", "Lq3/a/x2/i1;", "Le/a/k/a/k/z/b;", "getPlayingState", "()Lq3/a/x2/i1;", "", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "a", "Z", "isLandscape", "()Z", "setLandscape", "Le/a/k/m/o;", "Ls1/g;", "getBinding", "()Le/a/k/m/o;", "binding", C22021b.f61237c, "I", "getActivityOrientation", "()I", "setActivityOrientation", "(I)V", "activityOrientation", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.videocallerid.ui.videoplayer.FullScreenRatioVideoPlayerView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView.class */
public final class FullScreenRatioVideoPlayerView extends FrameLayout {

    /* renamed from: a */
    public boolean f16073a = true;

    /* renamed from: b */
    public int f16074b = 1;

    /* renamed from: c */
    public final g f16075c;

    /* renamed from: com.truecaller.videocallerid.ui.videoplayer.FullScreenRatioVideoPlayerView$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$a.class */
    public static final class View$OnClickListenerC4741a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ a f16076a;

        public View$OnClickListenerC4741a(a aVar) {
            this.f16076a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f16076a.invoke();
        }
    }

    /* renamed from: com.truecaller.videocallerid.ui.videoplayer.FullScreenRatioVideoPlayerView$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$b.class */
    public static final class C4742b extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ AbstractC15836l f16078c;

        /* renamed from: d */
        public final /* synthetic */ String f16079d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4742b(AbstractC15836l abstractC15836l, String str) {
            super(0);
            FullScreenRatioVideoPlayerView.this = r4;
            this.f16078c = abstractC15836l;
            this.f16079d = str;
        }

        public Object invoke() {
            FullScreenRatioVideoPlayerView.this.getBinding().f45533d.m34438g(this.f16078c, this.f16079d);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.videocallerid.ui.videoplayer.FullScreenRatioVideoPlayerView$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/videoplayer/FullScreenRatioVideoPlayerView$c.class */
    public static final class C4743c extends m implements a<s> {

        /* renamed from: c */
        public final /* synthetic */ boolean f16081c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4743c(boolean z) {
            super(0);
            FullScreenRatioVideoPlayerView.this = r4;
            this.f16081c = z;
        }

        public Object invoke() {
            AppCompatImageView appCompatImageView = FullScreenRatioVideoPlayerView.this.getBinding().f45534e;
            l.d(appCompatImageView, "binding.muteButton");
            C19286f.m13683U(appCompatImageView, this.f16081c);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullScreenRatioVideoPlayerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f16075c = C25225a.m3982O1(h.c, new C15831g(this, context));
    }

    /* renamed from: b */
    public static void m34445b(FullScreenRatioVideoPlayerView fullScreenRatioVideoPlayerView, boolean z, int i) {
        if ((i & 1) != 0) {
            z = false;
        }
        Objects.requireNonNull(fullScreenRatioVideoPlayerView);
        C19286f.m13656w(fullScreenRatioVideoPlayerView, new C15833i(fullScreenRatioVideoPlayerView, z));
    }

    public final C16141o getBinding() {
        return (C16141o) this.f16075c.getValue();
    }

    /* renamed from: c */
    public final void m34444c(boolean z) {
        getBinding().f45533d.m34439f(z);
    }

    /* renamed from: d */
    public final void m34443d(a<s> aVar) {
        l.e(aVar, "muteButtonClickListener");
        getBinding().f45534e.setOnClickListener(new View$OnClickListenerC4741a(aVar));
    }

    /* renamed from: e */
    public final void m34442e(AbstractC15836l abstractC15836l, String str) {
        l.e(abstractC15836l, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(str, "analyticsContext");
        C19286f.m13656w(this, new C4742b(abstractC15836l, str));
    }

    /* renamed from: f */
    public final void m34441f(boolean z) {
        C19286f.m13656w(this, new C4743c(z));
    }

    /* renamed from: g */
    public final void m34440g(boolean z) {
        getBinding().f45534e.setImageResource(z ? C4718R.C4719drawable.ic_vid_muted_audio : C4718R.C4719drawable.ic_vid_unmuted_audio);
    }

    public final int getActivityOrientation() {
        return this.f16074b;
    }

    public final AbstractC15864a getAudioState() {
        return getBinding().f45533d.getAudioState();
    }

    public final i1<AbstractC15868b> getPlayingState() {
        return getBinding().f45533d.getPlayingState();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.f16074b == 1) {
            size2 = this.f16073a ? (size * 9) / 16 : (size * 16) / 9;
        } else {
            size = this.f16073a ? (size2 * 16) / 9 : (size2 * 9) / 16;
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    public final void setActivityOrientation(int i) {
        this.f16074b = i;
    }

    public final void setLandscape(boolean z) {
        this.f16073a = z;
    }
}
