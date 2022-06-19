package p165m2;

import android.text.TextUtils;
import android.util.Log;
import com.google.ads.mediation.adcolony.AdColonyMediationAdapter;
import com.google.android.gms.ads.AdError;
import com.jirbo.adcolony.C1975a;
import java.lang.ref.WeakReference;
import java.util.Objects;
import p068d2.C2168b;
import p068d2.C2268g;
/* renamed from: m2.d */
/* loaded from: classes-dex2jar.jar:m2/d.class */
public class C3637d implements C1975a.AbstractC1976a {

    /* renamed from: a */
    public final /* synthetic */ String f11911a;

    /* renamed from: b */
    public final /* synthetic */ C3638e f11912b;

    public C3637d(C3638e c3638e, String str) {
        this.f11912b = c3638e;
        this.f11911a = str;
    }

    @Override // com.jirbo.adcolony.C1975a.AbstractC1976a
    /* renamed from: a */
    public void mo1945a() {
        if (TextUtils.isEmpty(this.f11911a)) {
            AdError createAdapterError = AdColonyMediationAdapter.createAdapterError(101, "Missing or invalid Zone ID.");
            String str = AdColonyMediationAdapter.TAG;
            createAdapterError.getMessage();
            this.f11912b.f11914b.onFailure(createAdapterError);
            return;
        }
        C2268g m3987c = C1975a.m3986d().m3987c(this.f11912b.f11915c);
        C2168b.m3785m(C3636c.m1950M());
        C3636c m1950M = C3636c.m1950M();
        String str2 = this.f11911a;
        C3638e c3638e = this.f11912b;
        Objects.requireNonNull(m1950M);
        C3636c.f11910b.put(str2, new WeakReference<>(c3638e));
        C2168b.m3786l(this.f11911a, C3636c.m1950M(), m3987c);
    }

    @Override // com.jirbo.adcolony.C1975a.AbstractC1976a
    /* renamed from: b */
    public void mo1944b(AdError adError) {
        Log.w(AdColonyMediationAdapter.TAG, adError.getMessage());
        this.f11912b.f11914b.onFailure(adError);
    }
}
