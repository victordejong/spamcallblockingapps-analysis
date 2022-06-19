package p193e.p194a.p294b.p295a.p325h.p328c;

import androidx.lifecycle.LiveData;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.truecaller.placepicker.data.GeocodedPlace;
import com.truecaller.profile.data.dto.businessV2.BusinessProfile;
import com.truecaller.profile.data.dto.businessV2.LocationDetail;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.n.j;
import p1727n3.p1868v.C27010k0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p294b.p295a.p308b.C7645e;
import p193e.p194a.p294b.p295a.p325h.p326a.AbstractC7810a;
import p193e.p194a.p294b.p295a.p325h.p326a.AbstractC7812c;
import p193e.p194a.p294b.p295a.p325h.p326a.AbstractC7814e;
import p193e.p194a.p294b.p295a.p329i.AbstractC7833a;
import p193e.p194a.p294b.p354l.AbstractC8042q;
import p193e.p194a.p294b.p354l.C8036l;
import s1.k;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B)\b\u0007\u0012\u0006\u0010b\u001a\u00020a\u0012\u0006\u0010W\u001a\u00020T\u0012\u0006\u00100\u001a\u00020-\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\bc\u0010dJ\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004R%\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR*\u0010\u0015\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8G@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R%\u0010\u001d\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u001b\u0010\t\u001a\u0004\b\u001c\u0010\u000bR!\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u001e8\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u001f\u001a\u0004\b \u0010!R%\u0010'\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020$0#0\u00058\u0006@\u0006¢\u0006\f\n\u0004\b%\u0010\t\u001a\u0004\b&\u0010\u000bR1\u0010,\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020)0(0\u00060\u00058\u0006@\u0006¢\u0006\f\n\u0004\b*\u0010\t\u001a\u0004\b+\u0010\u000bR\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00103\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R$\u0010;\u001a\u0004\u0018\u0001048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R!\u0010>\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u001e8\u0006@\u0006¢\u0006\f\n\u0004\b<\u0010\u001f\u001a\u0004\b=\u0010!R*\u0010A\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8G@FX\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010\u0010\u001a\u0004\b@\u0010\u0012\"\u0004\b1\u0010\u0014R*\u0010D\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8G@FX\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010\u0010\u001a\u0004\bC\u0010\u0012\"\u0004\b<\u0010\u0014R!\u0010G\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u001e8\u0006@\u0006¢\u0006\f\n\u0004\bE\u0010\u001f\u001a\u0004\bF\u0010!R*\u0010J\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8G@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0010\u001a\u0004\bH\u0010\u0012\"\u0004\bI\u0010\u0014R*\u0010M\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r8G@FX\u0086\u000e¢\u0006\u0012\n\u0004\bK\u0010\u0010\u001a\u0004\bL\u0010\u0012\"\u0004\bE\u0010\u0014R\"\u0010Q\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001a0\u00060N8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bO\u0010PR.\u0010S\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020)0(0\u00060N8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bR\u0010PR\u0016\u0010W\u001a\u00020T8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bU\u0010VR!\u0010Y\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u001e8\u0006@\u0006¢\u0006\f\n\u0004\bI\u0010\u001f\u001a\u0004\bX\u0010!R\"\u0010[\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u00060N8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bZ\u0010PR(\u0010`\u001a\b\u0012\u0004\u0012\u00020\r0\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\\\u0010\u001f\u001a\u0004\b]\u0010!\"\u0004\b^\u0010_¨\u0006e"}, d2 = {"Le/a/b/a/h/c/l;", "Le/a/b/a/b/e;", "Ls1/s;", "i", "()V", "Landroidx/lifecycle/LiveData;", "Le/a/b/l/l;", "Lcom/truecaller/profile/data/dto/businessV2/LocationDetail;", "p", "Landroidx/lifecycle/LiveData;", "getSuccessClose", "()Landroidx/lifecycle/LiveData;", "successClose", "", "value", "k", "Ljava/lang/String;", "getLandmark", "()Ljava/lang/String;", "f", "(Ljava/lang/String;)V", "landmark", "Le/a/p5/c0;", "w", "Le/a/p5/c0;", "resourceProvider", "", "r", "getCloseEvent", "closeEvent", "Ln3/n/j;", "Ln3/n/j;", "getCityInvalidText", "()Ln3/n/j;", "cityInvalidText", "Le/a/b/l/q;", "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;", "n", "getBizProfileLiveData", "bizProfileLiveData", "Ls1/k;", "", "t", "getShowMapEvent", "showMapEvent", "Le/a/b/a/h/a/e;", "v", "Le/a/b/a/h/a/e;", "validatePincodeUseCase", "h", "Z", "firstTimePincode", "Lcom/truecaller/placepicker/data/GeocodedPlace;", C22021b.f61237c, "Lcom/truecaller/placepicker/data/GeocodedPlace;", "getSelectedMapPlace", "()Lcom/truecaller/placepicker/data/GeocodedPlace;", "setSelectedMapPlace", "(Lcom/truecaller/placepicker/data/GeocodedPlace;)V", "selectedMapPlace", "d", "getPinCodeInvalidText", "pinCodeInvalidText", "m", "getState", "state", "j", "getBuildingName", "buildingName", "e", "getBuildingNameInvalidText", "buildingNameInvalidText", "getPinCode", "g", "pinCode", "l", "getCity", "city", "Ln3/v/k0;", "q", "Ln3/v/k0;", "_closeEvent", "s", "_showMapEvent", "Le/a/b/a/h/a/c;", "u", "Le/a/b/a/h/a/c;", "getPlaceByPincodeUseCase", "getStateInvalidText", "stateInvalidText", "o", "_successClose", AbstractC2405c.f7629a, "getSelectedAddress", "setSelectedAddress", "(Ln3/n/j;)V", "selectedAddress", "Le/a/b/a/h/a/a;", "getBizProfileUseCase", "<init>", "(Le/a/b/a/h/a/a;Le/a/b/a/h/a/c;Le/a/b/a/h/a/e;Le/a/p5/c0;)V", "bizmon_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.b.a.h.c.l */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/h/c/l.class */
public final class C7832l extends C7645e {

    /* renamed from: b */
    public GeocodedPlace f24356b;

    /* renamed from: c */
    public j<String> f24357c = new j<>();

    /* renamed from: d */
    public final j<String> f24358d = new j<>();

    /* renamed from: e */
    public final j<String> f24359e = new j<>();

    /* renamed from: f */
    public final j<String> f24360f = new j<>();

    /* renamed from: g */
    public final j<String> f24361g = new j<>();

    /* renamed from: h */
    public boolean f24362h = true;

    /* renamed from: i */
    public String f24363i = "";

    /* renamed from: j */
    public String f24364j = "";

    /* renamed from: k */
    public String f24365k = "";

    /* renamed from: l */
    public String f24366l = "";

    /* renamed from: m */
    public String f24367m = "";

    /* renamed from: n */
    public final LiveData<AbstractC8042q<BusinessProfile>> f24368n;

    /* renamed from: o */
    public final C27010k0<C8036l<LocationDetail>> f24369o;

    /* renamed from: p */
    public final LiveData<C8036l<LocationDetail>> f24370p;

    /* renamed from: q */
    public final C27010k0<C8036l<Boolean>> f24371q;

    /* renamed from: r */
    public final LiveData<C8036l<Boolean>> f24372r;

    /* renamed from: s */
    public final C27010k0<C8036l<k<Double, Double>>> f24373s;

    /* renamed from: t */
    public final LiveData<C8036l<k<Double, Double>>> f24374t;

    /* renamed from: u */
    public final AbstractC7812c f24375u;

    /* renamed from: v */
    public final AbstractC7814e f24376v;

    /* renamed from: w */
    public final AbstractC19223c0 f24377w;

    @Inject
    public C7832l(AbstractC7810a abstractC7810a, AbstractC7812c abstractC7812c, AbstractC7814e abstractC7814e, AbstractC19223c0 abstractC19223c0) {
        l.e(abstractC7810a, "getBizProfileUseCase");
        l.e(abstractC7812c, "getPlaceByPincodeUseCase");
        l.e(abstractC7814e, "validatePincodeUseCase");
        l.e(abstractC19223c0, "resourceProvider");
        this.f24375u = abstractC7812c;
        this.f24376v = abstractC7814e;
        this.f24377w = abstractC19223c0;
        this.f24368n = abstractC7810a.mo29282a();
        C27010k0<C8036l<LocationDetail>> c27010k0 = new C27010k0<>();
        this.f24369o = c27010k0;
        this.f24370p = c27010k0;
        C27010k0<C8036l<Boolean>> c27010k02 = new C27010k0<>();
        this.f24371q = c27010k02;
        this.f24372r = c27010k02;
        C27010k0<C8036l<k<Double, Double>>> c27010k03 = new C27010k0<>();
        this.f24373s = c27010k03;
        this.f24374t = c27010k03;
    }

    /* renamed from: d */
    public final void m29267d(String str) {
        l.e(str, "value");
        if (l.a(this.f24364j, str)) {
            return;
        }
        this.f24364j = str;
        m29460c(2);
    }

    /* renamed from: e */
    public final void m29266e(String str) {
        l.e(str, "value");
        if (l.a(this.f24366l, str)) {
            return;
        }
        this.f24366l = str;
        m29460c(3);
    }

    /* renamed from: f */
    public final void m29265f(String str) {
        l.e(str, "value");
        if (l.a(this.f24365k, str)) {
            return;
        }
        this.f24365k = str;
        m29460c(9);
    }

    /* renamed from: g */
    public final void m29264g(String str) {
        l.e(str, "value");
        if (l.a(this.f24363i, str)) {
            return;
        }
        this.f24363i = str;
        if (this.f24362h) {
            this.f24362h = false;
        } else if (!(this.f24376v.mo29280a(str) instanceof AbstractC7833a.C7834a)) {
            m29266e("");
            m29263h("");
            if (str != null) {
                this.f24375u.mo29281a(Integer.parseInt(str)).m42866g(new C7831k(this));
            }
        }
        m29460c(13);
    }

    /* renamed from: h */
    public final void m29263h(String str) {
        l.e(str, "value");
        if (l.a(this.f24367m, str)) {
            return;
        }
        this.f24367m = str;
        m29460c(15);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x014a, code lost:
        if (r19.f24356b != null) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
        if (r21 != null) goto L11;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m29262i() {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p295a.p325h.p328c.C7832l.m29262i():void");
    }
}
