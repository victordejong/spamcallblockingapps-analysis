package p081h.p203i.p204a.p224e.p259j.p260a;

import android.location.Location;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.ta */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/ta.class */
public final class C7413ta implements MediationAdRequest {

    /* renamed from: a */
    public final Date f17472a;

    /* renamed from: b */
    public final int f17473b;

    /* renamed from: c */
    public final Set<String> f17474c;

    /* renamed from: d */
    public final boolean f17475d;

    /* renamed from: e */
    public final Location f17476e;

    /* renamed from: f */
    public final int f17477f;

    /* renamed from: g */
    public final boolean f17478g;

    public C7413ta(@Nullable Date date, int i, @Nullable Set<String> set, @Nullable Location location, boolean z, int i2, boolean z2) {
        this.f17472a = date;
        this.f17473b = i;
        this.f17474c = set;
        this.f17476e = location;
        this.f17475d = z;
        this.f17477f = i2;
        this.f17478g = z2;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.f17472a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.f17473b;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.f17474c;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.f17476e;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.f17478g;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.f17475d;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.f17477f;
    }
}
