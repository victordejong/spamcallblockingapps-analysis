package com.truecaller.videocallerid.utils;

import android.graphics.PointF;
import android.media.MediaRecorder;
import android.util.Size;
import android.view.Display;
import android.view.ScaleGestureDetector;
import androidx.camera.view.PreviewView;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LiveData;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.mopub.mobileads.resource.DrawableConstants;
import com.truecaller.log.AssertionUtil;
import io.agora.rtc.Constants;
import java.io.File;
import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Semaphore;
import javax.inject.Inject;
import javax.inject.Named;
import kotlin.Metadata;
import n3.e.b.j1.a1;
import n3.e.b.j1.q0;
import p1727n3.p1758e.p1767b.AbstractC25926h0;
import p1727n3.p1758e.p1767b.AbstractC25929i0;
import p1727n3.p1758e.p1767b.AbstractC25931i1;
import p1727n3.p1758e.p1767b.AbstractC26075l0;
import p1727n3.p1758e.p1767b.C25898c1;
import p1727n3.p1758e.p1767b.C26077m0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
import p1727n3.p1758e.p1767b.p1768j1.C26014t0;
import p1727n3.p1758e.p1775c.C26109c;
import p1727n3.p1807k.p1821i.C26574e;
import p1727n3.p1868v.AbstractC26985a0;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p947k.p969c.AbstractC15991h;
import p193e.p194a.p947k.p969c.AbstractC16076s1;
import p193e.p194a.p947k.p969c.C16004i;
import p193e.p194a.p947k.p969c.C16017j0;
import p193e.p194a.p947k.p969c.C16019k;
import p193e.p194a.p947k.p969c.C16027m;
import p193e.p194a.p947k.p969c.C16030n;
import p193e.p194a.p947k.p969c.C16035o;
import p193e.p194a.p947k.p969c.View$OnTouchListenerC16022l;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.i0;
import q3.a.j;
import q3.a.j0;
import q3.a.n;
import q3.a.n0;
import q3.a.w2.i;
import q3.a.x2.g1;
import q3.a.x2.z0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��È\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\b��\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B7\b\u0007\u0012\b\b\u0001\u0010d\u001a\u00020S\u0012\b\b\u0001\u0010X\u001a\u00020\u0003\u0012\b\b\u0001\u0010M\u001a\u00020J\u0012\u0006\u0010P\u001a\u00020N\u0012\u0006\u0010F\u001a\u00020D¢\u0006\u0004\bo\u0010pJ\u0015\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0004H\u0016¢\u0006\u0004\b\t\u0010\u0007J\u0015\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016¢\u0006\u0004\b\n\u0010\u0007J\u0017\u0010\f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\u0004H\u0016¢\u0006\u0004\b\f\u0010\u0007J\u0015\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016¢\u0006\u0004\b\r\u0010\u0007J\u0015\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u0007J\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\bH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0010J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0010J\u0017\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\bH\u0007¢\u0006\u0004\b\u001b\u0010\u0014J\u000f\u0010\u001c\u001a\u00020\bH\u0007¢\u0006\u0004\b\u001c\u0010\u0014J\u0013\u0010\u001d\u001a\u00020\u0005H\u0082@ø\u0001��¢\u0006\u0004\b\u001d\u0010\u001eJ\u0013\u0010\u001f\u001a\u00020\u0005H\u0082@ø\u0001��¢\u0006\u0004\b\u001f\u0010\u001eJ\u0015\u0010 \u001a\u0004\u0018\u00010\bH\u0082@ø\u0001��¢\u0006\u0004\b \u0010\u001eJI\u0010'\u001a\u0004\u0018\u00018\u0001\"\u0004\b��\u0010!\"\u0004\b\u0001\u0010\"*\u00028��2\"\u0010&\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010$\u0012\u0006\u0012\u0004\u0018\u00010%0#H\u0082@ø\u0001��¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\u00052\u0006\u0010*\u001a\u00020)H\u0002¢\u0006\u0004\b+\u0010,J<\u0010/\u001a\b\u0012\u0004\u0012\u00028��0\u0004\"\u0004\b��\u0010!2\u001c\u0010.\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0$\u0012\u0006\u0012\u0004\u0018\u00010%0-H\u0002ø\u0001��¢\u0006\u0004\b/\u00100R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u00106R\u0016\u0010:\u001a\u0002088\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u00109R\u0016\u0010=\u001a\u00020;8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010<R*\u0010C\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010>8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010?\u001a\u0004\b@\u0010A\"\u0004\b2\u0010BR\u0016\u0010F\u001a\u00020D8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010ER\u0018\u0010I\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010HR\u0016\u0010M\u001a\u00020J8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010P\u001a\u00020N8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010OR\u0016\u0010R\u001a\u00020\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010QR\u0016\u0010V\u001a\u00020S8\u0016@\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bT\u0010UR\u0016\u0010X\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010WR\"\u0010\\\u001a\u00020\u00058\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\f\u0010Q\u001a\u0004\bY\u0010\u0010\"\u0004\bZ\u0010[R\"\u0010b\u001a\b\u0012\u0004\u0012\u00020^0]8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\bY\u0010_\u001a\u0004\b`\u0010aR\u0016\u0010d\u001a\u00020S8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010cR\u0018\u0010g\u001a\u0004\u0018\u00010e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010fR\u0016\u0010k\u001a\u00020h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010jR\u0016\u0010n\u001a\u00020l8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010m\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006q"}, d2 = {"Lcom/truecaller/videocallerid/utils/CameraViewManagerImpl;", "Le/a/k/c/h;", "Ln3/v/a0;", "Lq3/a/i0;", "Lq3/a/n0;", "", "m", "()Lq3/a/n0;", "Ls1/s;", "h", "startRecording", "Le/a/k/c/j0;", "a", "Q0", "d", "f", "()Z", "k", AbstractC2405c.f7629a, "l", "()V", "n", "j", "", "ratio", "g", "(F)V", "onLifecycleStart", "onLifecycleStop", "t", "(Ls1/w/d;)Ljava/lang/Object;", "q", "u", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "R", "Lkotlin/Function2;", "Ls1/w/d;", "", "block", "s", "(Ljava/lang/Object;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;", "Ln3/e/b/m0;", "cameraSelector", "r", "(Ln3/e/b/m0;)Z", "Lkotlin/Function1;", "action", "p", "(Ls1/z/b/l;)Lq3/a/n0;", "Ln3/e/b/h0;", "e", "Ln3/e/b/h0;", "camera", "Landroid/media/MediaRecorder;", "Landroid/media/MediaRecorder;", "recorder", "Ljava/util/concurrent/ExecutorService;", "Ljava/util/concurrent/ExecutorService;", "recorderExecutor", "Lq3/a/b3/c;", "Lq3/a/b3/c;", "mutex", "Lkotlin/Function0;", "Ls1/z/b/a;", "getOnRecordingMaxDurationReached", "()Ls1/z/b/a;", "(Ls1/z/b/a;)V", "onRecordingMaxDurationReached", "Le/a/k/c/s1;", "Le/a/k/c/s1;", "videoFileUtil", "Ln3/e/c/c;", "Ln3/e/c/c;", "cameraProvider", "Landroidx/camera/view/PreviewView;", "o", "Landroidx/camera/view/PreviewView;", "previewView", "Landroidx/fragment/app/Fragment;", "Landroidx/fragment/app/Fragment;", "lifecycleOwner", "Z", "useCasesBound", "Ls1/w/f;", "getCoroutineContext", "()Ls1/w/f;", "coroutineContext", "Lq3/a/i0;", "coroutineScope", C22021b.f61237c, "setRecording", "(Z)V", "recording", "Lq3/a/x2/z0;", "Landroid/graphics/PointF;", "Lq3/a/x2/z0;", "getFocusPoints", "()Lq3/a/x2/z0;", "focusPoints", "Ls1/w/f;", "ioContext", "Ljava/io/File;", "Ljava/io/File;", "tempRecordingFile", "Ljava/util/concurrent/Semaphore;", "i", "Ljava/util/concurrent/Semaphore;", "recordingSurfaceLock", "", "I", "lensFacing", "<init>", "(Ls1/w/f;Lq3/a/i0;Landroidx/camera/view/PreviewView;Landroidx/fragment/app/Fragment;Le/a/k/c/s1;)V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl.class */
public final class CameraViewManagerImpl implements AbstractC15991h, AbstractC26985a0, i0 {

    /* renamed from: a */
    public volatile boolean f16114a;

    /* renamed from: d */
    public C26109c f16117d;

    /* renamed from: e */
    public AbstractC25926h0 f16118e;

    /* renamed from: f */
    public int f16119f;

    /* renamed from: g */
    public MediaRecorder f16120g;

    /* renamed from: h */
    public File f16121h;

    /* renamed from: j */
    public volatile boolean f16123j;

    /* renamed from: k */
    public ExecutorService f16124k;

    /* renamed from: l */
    public a<s> f16125l;

    /* renamed from: m */
    public final f f16126m;

    /* renamed from: n */
    public final i0 f16127n;

    /* renamed from: o */
    public final PreviewView f16128o;

    /* renamed from: p */
    public final Fragment f16129p;

    /* renamed from: q */
    public final AbstractC16076s1 f16130q;

    /* renamed from: b */
    public final z0<PointF> f16115b = g1.a(0, 1, i.b, 1);

    /* renamed from: c */
    public final c f16116c = g.a(false, 1);

    /* renamed from: i */
    public Semaphore f16122i = new Semaphore(1);

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$asyncWithLock$1", f = "CameraViewManager.kt", l = {530, 518}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$a.class */
    public static final class C4751a extends s1.w.k.a.i implements p<i0, d<? super T>, Object> {

        /* renamed from: e */
        public Object f16131e;

        /* renamed from: f */
        public int f16132f;

        /* renamed from: h */
        public final /* synthetic */ l f16134h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4751a(l lVar, d dVar) {
            super(2, dVar);
            CameraViewManagerImpl.this = r5;
            this.f16134h = lVar;
        }

        /* renamed from: i */
        public final d<s> m34420i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C4751a(this.f16134h, dVar);
        }

        /* renamed from: k */
        public final Object m34419k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C4751a(this.f16134h, dVar).m34418s(s.a);
        }

        /* renamed from: s */
        public final Object m34418s(Object obj) {
            c cVar;
            Object d;
            c cVar2;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f16132f;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    c cVar3 = CameraViewManagerImpl.this.f16116c;
                    this.f16131e = cVar3;
                    this.f16132f = 1;
                    cVar = cVar3;
                    if (cVar3.b((Object) null, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c cVar4 = (c) this.f16131e;
                    try {
                        C25225a.m3932a3(obj);
                        cVar2 = cVar4;
                        d = obj;
                        cVar2.c((Object) null);
                        return d;
                    } catch (Throwable th) {
                        cVar = cVar4;
                        th = th;
                        cVar.c((Object) null);
                        throw th;
                    }
                } else {
                    C25225a.m3932a3(obj);
                    cVar = (c) this.f16131e;
                }
                l lVar = this.f16134h;
                this.f16131e = cVar;
                this.f16132f = 2;
                d = lVar.d(this);
                if (d == aVar) {
                    return aVar;
                }
                cVar2 = cVar;
                cVar2.c((Object) null);
                return d;
            } catch (Throwable th2) {
                th = th2;
                cVar.c((Object) null);
                throw th;
            }
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl", f = "CameraViewManager.kt", l = {349}, m = "bindCameraUseCases")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$b */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$b.class */
    public static final class C4752b extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f16135d;

        /* renamed from: e */
        public int f16136e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4752b(d dVar) {
            super(dVar);
            CameraViewManagerImpl.this = r4;
        }

        /* renamed from: s */
        public final Object m34417s(Object obj) {
            this.f16135d = obj;
            this.f16136e |= Integer.MIN_VALUE;
            return CameraViewManagerImpl.this.m34425q(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$bindCameraUseCases$2", f = "CameraViewManager.kt", l = {378}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$c */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$c.class */
    public static final class C4753c extends s1.w.k.a.i implements p<CameraViewManagerImpl, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f16138e;

        /* renamed from: f */
        public Object f16139f;

        /* renamed from: g */
        public Object f16140g;

        /* renamed from: h */
        public Object f16141h;

        /* renamed from: i */
        public Object f16142i;

        /* renamed from: j */
        public int f16143j;

        public C4753c(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m34416i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            C4753c c4753c = new C4753c(dVar);
            c4753c.f16138e = obj;
            return c4753c;
        }

        /* renamed from: k */
        public final Object m34415k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C4753c c4753c = new C4753c(dVar);
            c4753c.f16138e = obj;
            return c4753c.m34414s(s.a);
        }

        /* renamed from: s */
        public final Object m34414s(Object obj) {
            C26109c c26109c;
            C26077m0 c26077m0;
            C25898c1 c25898c1;
            C25898c1 c25898c12;
            CameraViewManagerImpl cameraViewManagerImpl;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f16143j;
            boolean z = true;
            if (i == 0) {
                C25225a.m3932a3(obj);
                cameraViewManagerImpl = (CameraViewManagerImpl) this.f16138e;
                if (!CameraViewManagerImpl.m34427o(cameraViewManagerImpl)) {
                    return Boolean.TRUE;
                }
                c26109c = cameraViewManagerImpl.f16117d;
                if (c26109c == null) {
                    return Boolean.FALSE;
                }
                Display display = cameraViewManagerImpl.f16128o.getDisplay();
                s1.z.c.l.d(display, "previewView.display");
                int rotation = display.getRotation();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                linkedHashSet.add(new C26014t0(cameraViewManagerImpl.f16119f));
                c26077m0 = new C26077m0(linkedHashSet);
                s1.z.c.l.d(c26077m0, "CameraSelector.Builder()…ing)\n            .build()");
                C25898c1.C25900b c25900b = new C25898c1.C25900b();
                Size size = C16035o.f45208a;
                a1 a1Var = c25900b.f72452a;
                AbstractC25968j0.AbstractC25969a abstractC25969a = q0.d;
                AbstractC25968j0.EnumC25971c enumC25971c = AbstractC25968j0.EnumC25971c.OPTIONAL;
                a1Var.z(abstractC25969a, enumC25971c, size);
                a1 a1Var2 = c25900b.f72452a;
                AbstractC25968j0.AbstractC25969a abstractC25969a2 = q0.c;
                a1Var2.z(abstractC25969a2, enumC25971c, Integer.valueOf(rotation));
                c25898c1 = c25900b.m2916a();
                s1.z.c.l.d(c25898c1, "Preview.Builder()\n      …ion)\n            .build()");
                C25898c1.C25900b c25900b2 = new C25898c1.C25900b();
                c25900b2.f72452a.z(abstractC25969a, enumC25971c, size);
                c25900b2.f72452a.z(abstractC25969a2, enumC25971c, Integer.valueOf(rotation));
                c25898c12 = c25900b2.m2916a();
                s1.z.c.l.d(c25898c12, "Preview.Builder()\n      …ion)\n            .build()");
                this.f16138e = cameraViewManagerImpl;
                this.f16139f = c26109c;
                this.f16140g = c26077m0;
                this.f16141h = c25898c1;
                this.f16142i = c25898c12;
                this.f16143j = 1;
                if (cameraViewManagerImpl.m34421u(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c25898c12 = (C25898c1) this.f16142i;
                c25898c1 = (C25898c1) this.f16141h;
                c26077m0 = (C26077m0) this.f16140g;
                c26109c = (C26109c) this.f16139f;
                C25225a.m3932a3(obj);
                cameraViewManagerImpl = (CameraViewManagerImpl) this.f16138e;
            }
            try {
                c25898c1.m2917r(cameraViewManagerImpl.f16128o.getSurfaceProvider());
                c25898c12.m2917r(new C16004i(cameraViewManagerImpl));
                cameraViewManagerImpl.f16118e = c26109c.m2710a(cameraViewManagerImpl.f16129p, c26077m0, c25898c1, c25898c12);
                cameraViewManagerImpl.f16123j = true;
            } catch (Exception e) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$closeCamera$1", f = "CameraViewManager.kt", l = {198}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$d */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$d.class */
    public static final class C4754d extends s1.w.k.a.i implements l<d<? super s>, Object> {

        /* renamed from: e */
        public int f16144e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4754d(d dVar) {
            super(1, dVar);
            CameraViewManagerImpl.this = r5;
        }

        /* renamed from: d */
        public final Object m34413d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C4754d(dVar).m34411s(s.a);
        }

        /* renamed from: l */
        public final d<s> m34412l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C4754d(dVar);
        }

        /* renamed from: s */
        public final Object m34411s(Object obj) {
            s sVar = s.a;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f16144e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (!CameraViewManagerImpl.m34427o(CameraViewManagerImpl.this)) {
                    return sVar;
                }
                CameraViewManagerImpl cameraViewManagerImpl = CameraViewManagerImpl.this;
                this.f16144e = 1;
                if (cameraViewManagerImpl.m34421u(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C19286f.m13689O(CameraViewManagerImpl.this.f16128o);
            return sVar;
        }
    }

    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$e */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$e.class */
    public static final class C4755e extends m implements l<CameraViewManagerImpl, Boolean> {

        /* renamed from: b */
        public final /* synthetic */ C26077m0 f16146b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4755e(C26077m0 c26077m0) {
            super(1);
            this.f16146b = c26077m0;
        }

        /* renamed from: d */
        public Object m34410d(Object obj) {
            Boolean bool;
            boolean z;
            CameraViewManagerImpl cameraViewManagerImpl = (CameraViewManagerImpl) obj;
            s1.z.c.l.e(cameraViewManagerImpl, "$receiver");
            C26109c c26109c = cameraViewManagerImpl.f16117d;
            if (c26109c != null) {
                try {
                    this.f16146b.m2737d(c26109c.f72833b.f72769a.m2873a());
                    z = true;
                } catch (IllegalArgumentException e) {
                    z = false;
                }
                bool = Boolean.valueOf(z);
            } else {
                bool = null;
            }
            return bool;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$onLifecycleStart$1", f = "CameraViewManager.kt", l = {241}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$f */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$f.class */
    public static final class C4756f extends s1.w.k.a.i implements l<d<? super s>, Object> {

        /* renamed from: e */
        public int f16147e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4756f(d dVar) {
            super(1, dVar);
            CameraViewManagerImpl.this = r5;
        }

        /* renamed from: d */
        public final Object m34409d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C4756f(dVar).m34407s(s.a);
        }

        /* renamed from: l */
        public final d<s> m34408l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C4756f(dVar);
        }

        /* renamed from: s */
        public final Object m34407s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f16147e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                CameraViewManagerImpl cameraViewManagerImpl = CameraViewManagerImpl.this;
                if ((cameraViewManagerImpl.f16118e != null) && !cameraViewManagerImpl.f16123j) {
                    CameraViewManagerImpl cameraViewManagerImpl2 = CameraViewManagerImpl.this;
                    this.f16147e = 1;
                    if (cameraViewManagerImpl2.m34425q(this) == aVar) {
                        return aVar;
                    }
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$onLifecycleStop$1", f = "CameraViewManager.kt", l = {252}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$g */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$g.class */
    public static final class C4757g extends s1.w.k.a.i implements l<d<? super s>, Object> {

        /* renamed from: e */
        public int f16149e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4757g(d dVar) {
            super(1, dVar);
            CameraViewManagerImpl.this = r5;
        }

        /* renamed from: d */
        public final Object m34406d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C4757g(dVar).m34404s(s.a);
        }

        /* renamed from: l */
        public final d<s> m34405l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C4757g(dVar);
        }

        /* renamed from: s */
        public final Object m34404s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f16149e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                CameraViewManagerImpl cameraViewManagerImpl = CameraViewManagerImpl.this;
                this.f16149e = 1;
                Object m34421u = cameraViewManagerImpl.m34421u(this);
                obj = m34421u;
                if (m34421u == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$openCamera$1", f = "CameraViewManager.kt", l = {190}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$h */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$h.class */
    public static final class C4758h extends s1.w.k.a.i implements l<d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f16151e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4758h(d dVar) {
            super(1, dVar);
            CameraViewManagerImpl.this = r5;
        }

        /* renamed from: d */
        public final Object m34403d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C4758h(dVar).m34401s(s.a);
        }

        /* renamed from: l */
        public final d<s> m34402l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C4758h(dVar);
        }

        /* renamed from: s */
        public final Object m34401s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f16151e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (CameraViewManagerImpl.m34427o(CameraViewManagerImpl.this)) {
                    return Boolean.TRUE;
                }
                C19286f.m13684T(CameraViewManagerImpl.this.f16128o);
                CameraViewManagerImpl cameraViewManagerImpl = CameraViewManagerImpl.this;
                this.f16151e = 1;
                Object m34425q = cameraViewManagerImpl.m34425q(this);
                obj = m34425q;
                if (m34425q == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl", f = "CameraViewManager.kt", l = {494}, m = "runSafeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$i */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$i.class */
    public static final class C4759i extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f16153d;

        /* renamed from: e */
        public int f16154e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4759i(d dVar) {
            super(dVar);
            CameraViewManagerImpl.this = r4;
        }

        /* renamed from: s */
        public final Object m34400s(Object obj) {
            this.f16153d = obj;
            this.f16154e |= Integer.MIN_VALUE;
            return CameraViewManagerImpl.this.m34423s(null, null, this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$setUpCamera$1", f = "CameraViewManager.kt", l = {Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$j */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$j.class */
    public static final class C4760j extends s1.w.k.a.i implements l<d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f16156e;

        @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$setUpCamera$1$1", f = "CameraViewManager.kt", l = {131}, m = "invokeSuspend")
        /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$j$a */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$j$a.class */
        public static final class C4761a extends s1.w.k.a.i implements p<CameraViewManagerImpl, d<? super Boolean>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f16158e;

            /* renamed from: f */
            public int f16159f;

            public C4761a(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m34396i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                C4761a c4761a = new C4761a(dVar);
                c4761a.f16158e = obj;
                return c4761a;
            }

            /* renamed from: k */
            public final Object m34395k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                C4761a c4761a = new C4761a(dVar);
                c4761a.f16158e = obj;
                return c4761a.m34394s(s.a);
            }

            /* renamed from: s */
            public final Object m34394s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f16159f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    this.f16159f = 1;
                    Object m34422t = ((CameraViewManagerImpl) this.f16158e).m34422t(this);
                    obj = m34422t;
                    if (m34422t == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4760j(d dVar) {
            super(1, dVar);
            CameraViewManagerImpl.this = r5;
        }

        /* renamed from: d */
        public final Object m34399d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C4760j(dVar).m34397s(s.a);
        }

        /* renamed from: l */
        public final d<s> m34398l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C4760j(dVar);
        }

        /* renamed from: s */
        public final Object m34397s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f16156e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                CameraViewManagerImpl cameraViewManagerImpl = CameraViewManagerImpl.this;
                C4761a c4761a = new C4761a(null);
                this.f16156e = 1;
                Object m34423s = cameraViewManagerImpl.m34423s(cameraViewManagerImpl, c4761a, this);
                obj = m34423s;
                if (m34423s == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Boolean bool = (Boolean) obj;
            return Boolean.valueOf(bool != null ? bool.booleanValue() : false);
        }
    }

    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$k */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$k.class */
    public static final class RunnableC4762k implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ListenableFuture f16160a;

        /* renamed from: b */
        public final /* synthetic */ n f16161b;

        /* renamed from: c */
        public final /* synthetic */ CameraViewManagerImpl f16162c;

        public RunnableC4762k(ListenableFuture listenableFuture, n nVar, CameraViewManagerImpl cameraViewManagerImpl) {
            this.f16160a = listenableFuture;
            this.f16161b = nVar;
            this.f16162c = cameraViewManagerImpl;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i;
            Boolean bool = Boolean.FALSE;
            try {
                this.f16162c.f16117d = (C26109c) this.f16160a.get();
                CameraViewManagerImpl cameraViewManagerImpl = this.f16162c;
                if (cameraViewManagerImpl.f16117d == null) {
                    C19291g.m13552f1(this.f16161b, bool);
                    return;
                }
                C26077m0 c26077m0 = C26077m0.f72752b;
                s1.z.c.l.d(c26077m0, "CameraSelector.DEFAULT_FRONT_CAMERA");
                if (cameraViewManagerImpl.m34424r(c26077m0)) {
                    i = 0;
                } else {
                    CameraViewManagerImpl cameraViewManagerImpl2 = this.f16162c;
                    Objects.requireNonNull(cameraViewManagerImpl2);
                    C26077m0 c26077m02 = C26077m0.f72753c;
                    s1.z.c.l.d(c26077m02, "CameraSelector.DEFAULT_BACK_CAMERA");
                    if (!cameraViewManagerImpl2.m34424r(c26077m02)) {
                        C19291g.m13552f1(this.f16161b, bool);
                        return;
                    }
                    i = 1;
                }
                cameraViewManagerImpl.f16119f = i;
                C19291g.m13552f1(this.f16161b, Boolean.TRUE);
            } catch (Exception e) {
                C19291g.m13552f1(this.f16161b, bool);
            }
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl", f = "CameraViewManager.kt", l = {525, 295, 299}, m = "setUpCameraInternal")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$l */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$l.class */
    public static final class C4763l extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f16163d;

        /* renamed from: e */
        public int f16164e;

        /* renamed from: g */
        public Object f16166g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4763l(d dVar) {
            super(dVar);
            CameraViewManagerImpl.this = r4;
        }

        /* renamed from: s */
        public final Object m34393s(Object obj) {
            this.f16163d = obj;
            this.f16164e |= Integer.MIN_VALUE;
            return CameraViewManagerImpl.this.m34422t(this);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$startRecording$1", f = "CameraViewManager.kt", l = {DrawableConstants.CtaButton.WIDTH_DIPS}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$m */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$m.class */
    public static final class C4764m extends s1.w.k.a.i implements l<d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f16167e;

        @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$startRecording$1$1", f = "CameraViewManager.kt", l = {}, m = "invokeSuspend")
        /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$m$a */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$m$a.class */
        public static final class C4765a extends s1.w.k.a.i implements p<CameraViewManagerImpl, d<? super Boolean>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f16169e;

            public C4765a(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m34389i(Object obj, d<?> dVar) {
                s1.z.c.l.e(dVar, "completion");
                C4765a c4765a = new C4765a(dVar);
                c4765a.f16169e = obj;
                return c4765a;
            }

            /* renamed from: k */
            public final Object m34388k(Object obj, Object obj2) {
                Boolean bool;
                d dVar = (d) obj2;
                s1.z.c.l.e(dVar, "completion");
                dVar.getContext();
                C25225a.m3932a3(s.a);
                CameraViewManagerImpl cameraViewManagerImpl = (CameraViewManagerImpl) obj;
                MediaRecorder mediaRecorder = cameraViewManagerImpl.f16120g;
                if (mediaRecorder != null) {
                    mediaRecorder.start();
                    cameraViewManagerImpl.f16114a = true;
                    bool = Boolean.TRUE;
                } else {
                    bool = null;
                }
                return bool;
            }

            /* renamed from: s */
            public final Object m34387s(Object obj) {
                Boolean bool;
                C25225a.m3932a3(obj);
                CameraViewManagerImpl cameraViewManagerImpl = (CameraViewManagerImpl) this.f16169e;
                MediaRecorder mediaRecorder = cameraViewManagerImpl.f16120g;
                if (mediaRecorder != null) {
                    mediaRecorder.start();
                    cameraViewManagerImpl.f16114a = true;
                    bool = Boolean.TRUE;
                } else {
                    bool = null;
                }
                return bool;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4764m(d dVar) {
            super(1, dVar);
            CameraViewManagerImpl.this = r5;
        }

        /* renamed from: d */
        public final Object m34392d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C4764m(dVar).m34390s(s.a);
        }

        /* renamed from: l */
        public final d<s> m34391l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C4764m(dVar);
        }

        /* renamed from: s */
        public final Object m34390s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f16167e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (CameraViewManagerImpl.this.f16114a) {
                    return Boolean.FALSE;
                }
                CameraViewManagerImpl cameraViewManagerImpl = CameraViewManagerImpl.this;
                C4765a c4765a = new C4765a(null);
                this.f16167e = 1;
                Object m34423s = cameraViewManagerImpl.m34423s(cameraViewManagerImpl, c4765a, this);
                obj = m34423s;
                if (m34423s == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            Boolean bool = (Boolean) obj;
            return Boolean.valueOf(bool != null ? bool.booleanValue() : false);
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$stopRecording$1", f = "CameraViewManager.kt", l = {165, 168, 172, 174, 177}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$n */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$n.class */
    public static final class C4766n extends s1.w.k.a.i implements l<d<? super C16017j0>, Object> {

        /* renamed from: e */
        public Object f16170e;

        /* renamed from: f */
        public boolean f16171f;

        /* renamed from: g */
        public int f16172g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4766n(d dVar) {
            super(1, dVar);
            CameraViewManagerImpl.this = r5;
        }

        /* renamed from: d */
        public final Object m34386d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C4766n(dVar).m34384s(s.a);
        }

        /* renamed from: l */
        public final d<s> m34385l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C4766n(dVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:34:0x00eb  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x013c  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0191  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x01a1  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m34384s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 436
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.truecaller.videocallerid.utils.CameraViewManagerImpl.C4766n.m34384s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$switchCamera$1", f = "CameraViewManager.kt", l = {141}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$o */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$o.class */
    public static final class C4767o extends s1.w.k.a.i implements l<d<? super s>, Object> {

        /* renamed from: e */
        public int f16174e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4767o(d dVar) {
            super(1, dVar);
            CameraViewManagerImpl.this = r5;
        }

        /* renamed from: d */
        public final Object m34383d(Object obj) {
            d dVar = (d) obj;
            s1.z.c.l.e(dVar, "completion");
            return new C4767o(dVar).m34381s(s.a);
        }

        /* renamed from: l */
        public final d<s> m34382l(d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C4767o(dVar);
        }

        /* renamed from: s */
        public final Object m34381s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f16174e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                CameraViewManagerImpl cameraViewManagerImpl = CameraViewManagerImpl.this;
                cameraViewManagerImpl.f16119f = cameraViewManagerImpl.f16119f == 0 ? 1 : 0;
                this.f16174e = 1;
                if (cameraViewManagerImpl.m34425q(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.utils.CameraViewManagerImpl$unbindCameraUseCases$2", f = "CameraViewManager.kt", l = {397}, m = "invokeSuspend")
    /* renamed from: com.truecaller.videocallerid.utils.CameraViewManagerImpl$p */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/CameraViewManagerImpl$p.class */
    public static final class C4768p extends s1.w.k.a.i implements p<CameraViewManagerImpl, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f16176e;

        /* renamed from: f */
        public int f16177f;

        public C4768p(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m34380i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            C4768p c4768p = new C4768p(dVar);
            c4768p.f16176e = obj;
            return c4768p;
        }

        /* renamed from: k */
        public final Object m34379k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C4768p c4768p = new C4768p(dVar);
            c4768p.f16176e = obj;
            return c4768p.m34378s(s.a);
        }

        /* renamed from: s */
        public final Object m34378s(Object obj) {
            CameraViewManagerImpl cameraViewManagerImpl;
            Object obj2 = s.a;
            Object obj3 = s1.w.j.a.a;
            int i = this.f16177f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                CameraViewManagerImpl cameraViewManagerImpl2 = (CameraViewManagerImpl) this.f16176e;
                C26109c c26109c = cameraViewManagerImpl2.f16117d;
                if (c26109c != null) {
                    c26109c.m2708c();
                }
                cameraViewManagerImpl2.f16123j = false;
                this.f16176e = cameraViewManagerImpl2;
                this.f16177f = 1;
                Object a = j.a(cameraViewManagerImpl2.f16126m, new C16019k(cameraViewManagerImpl2), this);
                if (a != obj3) {
                    a = obj2;
                }
                if (a == obj3) {
                    return obj3;
                }
                cameraViewManagerImpl = cameraViewManagerImpl2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
                cameraViewManagerImpl = (CameraViewManagerImpl) this.f16176e;
            }
            cameraViewManagerImpl.f16122i = new Semaphore(1);
            return obj2;
        }
    }

    @Inject
    public CameraViewManagerImpl(@Named("IO") f fVar, i0 i0Var, PreviewView previewView, Fragment fragment, AbstractC16076s1 abstractC16076s1) {
        s1.z.c.l.e(fVar, "ioContext");
        s1.z.c.l.e(i0Var, "coroutineScope");
        s1.z.c.l.e(previewView, "previewView");
        s1.z.c.l.e(fragment, "lifecycleOwner");
        s1.z.c.l.e(abstractC16076s1, "videoFileUtil");
        this.f16126m = fVar;
        this.f16127n = i0Var;
        this.f16128o = previewView;
        this.f16129p = fragment;
        this.f16130q = abstractC16076s1;
        fragment.getLifecycle().mo988a(this);
        C26574e c26574e = new C26574e(previewView.getContext(), new C16027m(this));
        ((C26574e.C26576b) c26574e.f74449a).f74450a.setIsLongpressEnabled(false);
        previewView.setOnTouchListener(new View$OnTouchListenerC16022l(c26574e, new ScaleGestureDetector(previewView.getContext(), new C16030n(this))));
    }

    /* renamed from: o */
    public static final boolean m34427o(CameraViewManagerImpl cameraViewManagerImpl) {
        return C19286f.m13663p(cameraViewManagerImpl.f16128o);
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: Q0 */
    public n0<Boolean> mo18035Q0() {
        return m34426p(new C4758h(null));
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: a */
    public n0<C16017j0> mo18034a() {
        return m34426p(new C4766n(null));
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: b */
    public boolean mo18033b() {
        return this.f16114a;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: c */
    public boolean mo18032c() {
        AbstractC26075l0 mo2761a;
        AbstractC25926h0 abstractC25926h0 = this.f16118e;
        return C12864a2.m22540r((abstractC25926h0 == null || (mo2761a = abstractC25926h0.mo2761a()) == null) ? null : Boolean.valueOf(mo2761a.m2743g()));
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: d */
    public n0<s> mo18031d() {
        return m34426p(new C4754d(null));
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: e */
    public void mo18030e(a<s> aVar) {
        this.f16125l = aVar;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: f */
    public boolean mo18029f() {
        C26077m0 c26077m0 = C26077m0.f72753c;
        s1.z.c.l.d(c26077m0, "CameraSelector.DEFAULT_BACK_CAMERA");
        return m34424r(c26077m0);
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: g */
    public void mo18028g(float f) {
        AbstractC25926h0 abstractC25926h0 = this.f16118e;
        if (abstractC25926h0 != null) {
            AbstractC26075l0 mo2761a = abstractC25926h0.mo2761a();
            s1.z.c.l.d(mo2761a, "camera.cameraInfo");
            LiveData<AbstractC25931i1> m2744f = mo2761a.m2744f();
            s1.z.c.l.d(m2744f, "camera.cameraInfo.zoomState");
            AbstractC25931i1 m42869d = m2744f.m42869d();
            if (m42869d == null) {
                return;
            }
            abstractC25926h0.mo2760b().m2885a(m42869d.mo2752a() * f);
        }
    }

    public f getCoroutineContext() {
        return this.f16127n.getCoroutineContext();
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: h */
    public n0<s> mo18027h() {
        return m34426p(new C4767o(null));
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: i */
    public q3.a.x2.f mo18026i() {
        return this.f16115b;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: j */
    public boolean mo18025j() {
        return this.f16119f == 0;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: k */
    public boolean mo18024k() {
        C26077m0 c26077m0 = C26077m0.f72752b;
        s1.z.c.l.d(c26077m0, "CameraSelector.DEFAULT_FRONT_CAMERA");
        return m34424r(c26077m0);
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: l */
    public void mo18023l() {
        AbstractC25929i0 mo2760b;
        AbstractC26075l0 mo2761a;
        AbstractC25926h0 abstractC25926h0 = this.f16118e;
        if (abstractC25926h0 == null || (mo2760b = abstractC25926h0.mo2760b()) == null) {
            return;
        }
        s1.z.c.l.d(mo2760b, "camera?.cameraControl ?: return");
        AbstractC25926h0 abstractC25926h02 = this.f16118e;
        if (abstractC25926h02 == null || (mo2761a = abstractC25926h02.mo2761a()) == null) {
            return;
        }
        s1.z.c.l.d(mo2761a, "camera?.cameraInfo ?: return");
        LiveData<Integer> m2742h = mo2761a.m2742h();
        s1.z.c.l.d(m2742h, "cameraInfo.torchState");
        Integer m42869d = m2742h.m42869d();
        boolean z = true;
        if (m42869d != null && m42869d.intValue() == 1) {
            z = false;
        }
        mo2760b.m2884b(z);
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: m */
    public n0<Boolean> mo18022m() {
        return m34426p(new C4760j(null));
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    /* renamed from: n */
    public boolean mo18021n() {
        AbstractC26075l0 mo2761a;
        LiveData<Integer> m2742h;
        AbstractC25926h0 abstractC25926h0 = this.f16118e;
        Integer m42869d = (abstractC25926h0 == null || (mo2761a = abstractC25926h0.mo2761a()) == null || (m2742h = mo2761a.m2742h()) == null) ? null : m2742h.m42869d();
        boolean z = true;
        if (m42869d == null || m42869d.intValue() != 1) {
            z = false;
        }
        return z;
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_START)
    public final void onLifecycleStart() {
        m34426p(new C4756f(null));
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_STOP)
    public final void onLifecycleStop() {
        m34426p(new C4757g(null));
    }

    /* renamed from: p */
    public final <T> n0<T> m34426p(l<? super d<? super T>, ? extends Object> lVar) {
        return s1.a.a.a.v0.f.d.H(this, (f) null, j0.d, new C4751a(lVar, null), 1, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0094  */
    /* renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m34425q(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof com.truecaller.videocallerid.utils.CameraViewManagerImpl.C4752b
            if (r0 == 0) goto L27
            r0 = r6
            com.truecaller.videocallerid.utils.CameraViewManagerImpl$b r0 = (com.truecaller.videocallerid.utils.CameraViewManagerImpl.C4752b) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f16136e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f16136e = r1
            r0 = r7
            r6 = r0
            goto L31
        L27:
            com.truecaller.videocallerid.utils.CameraViewManagerImpl$b r0 = new com.truecaller.videocallerid.utils.CameraViewManagerImpl$b
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L31:
            r0 = r6
            java.lang.Object r0 = r0.f16135d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f16136e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5d
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L52
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L82
        L52:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5d:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            com.truecaller.videocallerid.utils.CameraViewManagerImpl$c r0 = new com.truecaller.videocallerid.utils.CameraViewManagerImpl$c
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f16136e = r1
            r0 = r5
            r1 = r5
            r2 = r7
            r3 = r6
            java.lang.Object r0 = r0.m34423s(r1, r2, r3)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L82
            r0 = r9
            return r0
        L82:
            r0 = r6
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L94
            r0 = r6
            boolean r0 = r0.booleanValue()
            r10 = r0
            goto L97
        L94:
            r0 = 0
            r10 = r0
        L97:
            r0 = r10
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.videocallerid.utils.CameraViewManagerImpl.m34425q(s1.w.d):java.lang.Object");
    }

    /* renamed from: r */
    public final boolean m34424r(C26077m0 c26077m0) {
        Boolean bool;
        try {
            bool = new C4755e(c26077m0).m34410d(this);
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            bool = null;
        }
        Boolean bool2 = bool;
        return bool2 != null ? bool2.booleanValue() : false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|28|(2:10|(2:12|13)(2:14|15))(4:16|(3:18|19|(2:21|22))|26|27)|23|26|27))|7|8|28|(0)(0)|23|26|27) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0099, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x009a, code lost:
        com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r6);
        r9 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ <T, R> java.lang.Object m34423s(T r6, s1.z.b.p<? super T, ? super s1.w.d<? super R>, ? extends java.lang.Object> r7, s1.w.d<? super R> r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0 instanceof com.truecaller.videocallerid.utils.CameraViewManagerImpl.C4759i
            if (r0 == 0) goto L2e
            r0 = r8
            com.truecaller.videocallerid.utils.CameraViewManagerImpl$i r0 = (com.truecaller.videocallerid.utils.CameraViewManagerImpl.C4759i) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f16154e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2e
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f16154e = r1
            r0 = r9
            r8 = r0
            goto L38
        L2e:
            com.truecaller.videocallerid.utils.CameraViewManagerImpl$i r0 = new com.truecaller.videocallerid.utils.CameraViewManagerImpl$i
            r1 = r0
            r2 = r5
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L38:
            r0 = r8
            java.lang.Object r0 = r0.f16153d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f16154e
            r10 = r0
            r0 = 0
            r12 = r0
            r0 = r10
            if (r0 == 0) goto L6d
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L62
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)     // Catch: java.lang.Exception -> L99
            r0 = r9
            r6 = r0
            goto L93
        L62:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6d:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r12
            r9 = r0
            r0 = r6
            if (r0 == 0) goto La2
            r0 = r8
            r1 = 1
            r0.f16154e = r1     // Catch: java.lang.Exception -> L99
            r0 = r7
            r1 = r6
            r2 = r8
            java.lang.Object r0 = r0.k(r1, r2)     // Catch: java.lang.Exception -> L99
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r11
            if (r0 != r1) goto L93
            r0 = r11
            return r0
        L93:
            r0 = r6
            r9 = r0
            goto La2
        L99:
            r6 = move-exception
            r0 = r6
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
            r0 = r12
            r9 = r0
        La2:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.videocallerid.utils.CameraViewManagerImpl.m34423s(java.lang.Object, s1.z.b.p, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15991h
    public n0<Boolean> startRecording() {
        return m34426p(new C4764m(null));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01bf  */
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m34422t(s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 465
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.videocallerid.utils.CameraViewManagerImpl.m34422t(s1.w.d):java.lang.Object");
    }

    /* renamed from: u */
    public final /* synthetic */ Object m34421u(d<? super s> dVar) {
        return m34423s(this, new C4768p(null), dVar);
    }
}
