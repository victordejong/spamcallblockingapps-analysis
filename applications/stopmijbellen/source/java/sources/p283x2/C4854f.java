package p283x2;

import android.content.Context;
import android.util.Log;
import android.view.WindowManager;
import java.io.File;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import p008a7.C0042i;
import p018b3.AbstractC0721a;
import p022b7.EnumC0736a;
import p032c7.C0852e;
import p082e7.C2604a;
import p093f6.C2763a;
import p124i4.C3102d;
import p134j4.C3224k2;
import p134j4.ServiceConnectionC3230m0;
import p161l9.AbstractC3541a;
import p189o4.AbstractC3882s;
import p218r2.EnumC4186d;
import p233s6.AbstractC4320o;
import p286x5.AbstractC4871e;
import p291y.C4951d;
import p293y2.AbstractC4985e;
import p293y2.C4979a;
import p293y2.C4980b;
/* renamed from: x2.f */
/* loaded from: classes-dex2jar.jar:x2/f.class */
public class C4854f implements AbstractC3541a, AbstractC3882s, AbstractC4320o {

    /* renamed from: a */
    public final /* synthetic */ int f14882a;

    /* renamed from: b */
    public Object f14883b;

    public /* synthetic */ C4854f(Object obj, int i) {
        this.f14882a = i;
        this.f14883b = obj;
    }

    /* renamed from: a */
    public void m362a(float f) {
        if (f > 0.0f) {
            return;
        }
        throw new IllegalArgumentException("Invalid Media duration");
    }

    /* renamed from: b */
    public void m361b(EnumC0736a enumC0736a) {
        C3102d.m2633f((C0042i) this.f14883b);
        JSONObject jSONObject = new JSONObject();
        WindowManager windowManager = C2604a.f9034a;
        try {
            jSONObject.put("interactionType", enumC0736a);
        } catch (JSONException e) {
        }
        C4951d.f15103a.m202a(((C0042i) this.f14883b).f92e.m2859f(), "adUserInteraction", jSONObject);
    }

    /* renamed from: c */
    public void m360c(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("Invalid Media volume");
        }
    }

    /* renamed from: d */
    public void m359d() {
        C3102d.m2633f((C0042i) this.f14883b);
        C4951d.f15103a.m202a(((C0042i) this.f14883b).f92e.m2859f(), "bufferFinish", null);
    }

    /* renamed from: e */
    public void m358e() {
        C3102d.m2633f((C0042i) this.f14883b);
        C4951d.f15103a.m202a(((C0042i) this.f14883b).f92e.m2859f(), "bufferStart", null);
    }

    /* renamed from: f */
    public void m357f() {
        C3102d.m2633f((C0042i) this.f14883b);
        C4951d.f15103a.m202a(((C0042i) this.f14883b).f92e.m2859f(), "complete", null);
    }

    /* renamed from: g */
    public void m356g() {
        C3102d.m2633f((C0042i) this.f14883b);
        C4951d.f15103a.m202a(((C0042i) this.f14883b).f92e.m2859f(), "firstQuartile", null);
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        switch (this.f14882a) {
            case 0:
                AbstractC0721a abstractC0721a = (AbstractC0721a) ((AbstractC3541a) this.f14883b).get();
                HashMap hashMap = new HashMap();
                EnumC4186d enumC4186d = EnumC4186d.DEFAULT;
                AbstractC4985e.AbstractC4986a.AbstractC4987a m163a = AbstractC4985e.AbstractC4986a.m163a();
                m163a.mo158b(30000L);
                m163a.mo157c(86400000L);
                hashMap.put(enumC4186d, m163a.mo159a());
                EnumC4186d enumC4186d2 = EnumC4186d.HIGHEST;
                AbstractC4985e.AbstractC4986a.AbstractC4987a m163a2 = AbstractC4985e.AbstractC4986a.m163a();
                m163a2.mo158b(1000L);
                m163a2.mo157c(86400000L);
                hashMap.put(enumC4186d2, m163a2.mo159a());
                EnumC4186d enumC4186d3 = EnumC4186d.VERY_LOW;
                AbstractC4985e.AbstractC4986a.AbstractC4987a m163a3 = AbstractC4985e.AbstractC4986a.m163a();
                m163a3.mo158b(86400000L);
                m163a3.mo157c(86400000L);
                Set<AbstractC4985e.EnumC4988b> unmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(AbstractC4985e.EnumC4988b.NETWORK_UNMETERED, AbstractC4985e.EnumC4988b.DEVICE_IDLE)));
                C4980b.C4982b c4982b = (C4980b.C4982b) m163a3;
                Objects.requireNonNull(unmodifiableSet, "Null flags");
                c4982b.f15185c = unmodifiableSet;
                hashMap.put(enumC4186d3, c4982b.mo159a());
                Objects.requireNonNull(abstractC0721a, "missing required property: clock");
                if (hashMap.keySet().size() < EnumC4186d.values().length) {
                    throw new IllegalStateException("Not all priorities have been configured");
                }
                new HashMap();
                return new C4979a(abstractC0721a, hashMap);
            default:
                AbstractC4871e abstractC4871e = ((C2763a) this.f14883b).f9461b;
                Objects.requireNonNull(abstractC4871e, "Cannot return null from a non-@Nullable @Provides method");
                return abstractC4871e;
        }
    }

    /* renamed from: h */
    public File m355h() {
        File file = new File(((Context) this.f14883b).getFilesDir(), ".com.google.firebase.crashlytics");
        File file2 = file;
        if (!file.exists()) {
            if (file.mkdirs()) {
                file2 = file;
            } else {
                Log.w("FirebaseCrashlytics", "Couldn't create file", null);
                file2 = null;
            }
        }
        return file2;
    }

    /* renamed from: i */
    public void m354i() {
        C3102d.m2633f((C0042i) this.f14883b);
        C4951d.f15103a.m202a(((C0042i) this.f14883b).f92e.m2859f(), "midpoint", null);
    }

    /* renamed from: j */
    public void m353j() {
        C3102d.m2633f((C0042i) this.f14883b);
        C4951d.f15103a.m202a(((C0042i) this.f14883b).f92e.m2859f(), "pause", null);
    }

    /* renamed from: k */
    public void m352k() {
        C3102d.m2633f((C0042i) this.f14883b);
        C4951d.f15103a.m202a(((C0042i) this.f14883b).f92e.m2859f(), "resume", null);
    }

    /* renamed from: l */
    public void m351l() {
        C3102d.m2633f((C0042i) this.f14883b);
        C4951d.f15103a.m202a(((C0042i) this.f14883b).f92e.m2859f(), "skipped", null);
    }

    /* renamed from: m */
    public void m350m(float f, float f2) {
        m362a(f);
        m360c(f2);
        C3102d.m2633f((C0042i) this.f14883b);
        JSONObject jSONObject = new JSONObject();
        C2604a.m3388d(jSONObject, "duration", Float.valueOf(f));
        C2604a.m3388d(jSONObject, "mediaPlayerVolume", Float.valueOf(f2));
        C2604a.m3388d(jSONObject, "deviceVolume", Float.valueOf(C0852e.m7277a().f3142a));
        C4951d.f15103a.m202a(((C0042i) this.f14883b).f92e.m2859f(), "start", jSONObject);
    }

    /* renamed from: n */
    public void m349n() {
        C3102d.m2633f((C0042i) this.f14883b);
        C4951d.f15103a.m202a(((C0042i) this.f14883b).f92e.m2859f(), "thirdQuartile", null);
    }

    /* renamed from: o */
    public void m348o(float f) {
        m360c(f);
        C3102d.m2633f((C0042i) this.f14883b);
        JSONObject jSONObject = new JSONObject();
        C2604a.m3388d(jSONObject, "mediaPlayerVolume", Float.valueOf(f));
        C2604a.m3388d(jSONObject, "deviceVolume", Float.valueOf(C0852e.m7277a().f3142a));
        C4951d.f15103a.m202a(((C0042i) this.f14883b).f92e.m2859f(), "volumeChange", jSONObject);
    }

    @Override // p189o4.AbstractC3882s
    public /* bridge */ /* synthetic */ Object zza() {
        return new ServiceConnectionC3230m0(((C3224k2) ((AbstractC3882s) this.f14883b)).m2534a());
    }
}
