package p000;

import android.view.View;
import com.mopub.common.VideoEvent;
import com.mopub.common.ViewabilityTracker;
import com.mopub.common.ViewabilityVendor;
import com.mopub.common.VisibleForTesting;
import java.util.Set;
/* renamed from: bg1 */
/* loaded from: classes3-dex2jar.jar:bg1.class */
public class bg1 extends ViewabilityTracker {

    /* renamed from: h */
    public h41 f1931h;

    /* renamed from: bg1$a */
    /* loaded from: classes3-dex2jar.jar:bg1$a.class */
    public static /* synthetic */ class C0245a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f1932a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b9 -> B:64:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00bd -> B:76:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00c1 -> B:72:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c5 -> B:54:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c9 -> B:50:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00cd -> B:60:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00d1 -> B:56:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d5 -> B:66:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d9 -> B:62:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00dd -> B:74:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00e1 -> B:70:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00e5 -> B:52:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00e9 -> B:48:0x00a0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00ed -> B:58:0x00ac). Please submit an issue!!! */
        static {
            int[] iArr = new int[VideoEvent.values().length];
            f1932a = iArr;
            try {
                iArr[VideoEvent.AD_IMPRESSED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f1932a[VideoEvent.AD_PAUSED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f1932a[VideoEvent.AD_RESUMED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f1932a[VideoEvent.AD_SKIPPED.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f1932a[VideoEvent.AD_CLICK_THRU.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f1932a[VideoEvent.RECORD_AD_ERROR.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f1932a[VideoEvent.AD_BUFFER_START.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f1932a[VideoEvent.AD_BUFFER_END.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f1932a[VideoEvent.AD_VIDEO_FIRST_QUARTILE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f1932a[VideoEvent.AD_VIDEO_MIDPOINT.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f1932a[VideoEvent.AD_VIDEO_THIRD_QUARTILE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f1932a[VideoEvent.AD_COMPLETE.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f1932a[VideoEvent.AD_FULLSCREEN.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f1932a[VideoEvent.AD_NORMAL.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f1932a[VideoEvent.AD_VOLUME_CHANGE.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    public bg1(v31 v31Var, u31 u31Var, View view) {
        this(v31Var, u31Var, view, h41.g(v31Var));
    }

    @VisibleForTesting
    public bg1(v31 v31Var, u31 u31Var, View view, h41 h41Var) {
        super(v31Var, u31Var, view);
        this.f1931h = h41Var;
        m3889h("ViewabilityTrackerVideo() sesseionId:" + this.f4340f);
    }

    /* renamed from: m */
    public static ViewabilityTracker m5667m(View view, Set<ViewabilityVendor> set) {
        v31 m3895b = ViewabilityTracker.m3895b(z31.f, set, c41.NATIVE);
        return new bg1(m3895b, u31.a(m3895b), view);
    }

    @Override // com.mopub.common.ViewabilityTracker
    public void startTracking() {
        m3889h("ViewabilityTrackerVideo.startTracking() sesseionId: " + this.f4340f);
        m3896a(ViewabilityTracker.STATE.STARTED_VIDEO);
    }

    @Override // com.mopub.common.ViewabilityTracker
    public void trackVideo(VideoEvent videoEvent) {
        i41 i41Var;
        h41 h41Var;
        if (!m3890g()) {
            m3889h("trackVideo() skip event: " + videoEvent.name());
            return;
        }
        m3889h("trackVideo() event: " + videoEvent.name() + " " + this.f4340f);
        switch (C0245a.f1932a[videoEvent.ordinal()]) {
            case 1:
                trackImpression();
                return;
            case 2:
                this.f1931h.j();
                return;
            case 3:
                this.f1931h.l();
                return;
            case 4:
            case 6:
                this.f1931h.m();
                return;
            case 5:
                this.f1931h.a(g41.b);
                return;
            case 7:
                this.f1931h.c();
                return;
            case 8:
                this.f1931h.b();
                return;
            case 9:
                this.f1931h.h();
                return;
            case 10:
                this.f1931h.i();
                return;
            case 11:
                this.f1931h.o();
                return;
            case 12:
                this.f1931h.d();
                return;
            case 13:
                h41Var = this.f1931h;
                i41Var = i41.g;
                break;
            case 14:
                h41Var = this.f1931h;
                i41Var = i41.d;
                break;
            case 15:
                this.f1931h.p(1.0f);
                return;
            default:
                return;
        }
        h41Var.k(i41Var);
    }

    @Override // com.mopub.common.ViewabilityTracker
    public void videoPrepared(float f) {
        m3889h("videoPrepared() duration= " + f);
        if (m3890g()) {
            this.f1931h.n(f, 1.0f);
            return;
        }
        m3889h("videoPrepared() not tracking yet: " + this.f4340f);
    }
}
