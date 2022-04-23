package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import me.leolin.shortcutbadger.impl.NovaHomeBadger;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.p281j.C8832a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/places/PlaceReport.class */
public class PlaceReport extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new C8832a();

    /* renamed from: a */
    public final int f6960a;

    /* renamed from: b */
    public final String f6961b;

    /* renamed from: c */
    public final String f6962c;

    /* renamed from: d */
    public final String f6963d;

    public PlaceReport(int i, String str, String str2, String str3) {
        this.f6960a = i;
        this.f6961b = str;
        this.f6962c = str2;
        this.f6963d = str3;
    }

    /* renamed from: H */
    public String m31795H() {
        return this.f6962c;
    }

    /* renamed from: c */
    public String m31794c() {
        return this.f6961b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return C7018s.m21297a(this.f6961b, placeReport.f6961b) && C7018s.m21297a(this.f6962c, placeReport.f6962c) && C7018s.m21297a(this.f6963d, placeReport.f6963d);
    }

    public int hashCode() {
        return C7018s.m21296a(this.f6961b, this.f6962c, this.f6963d);
    }

    public String toString() {
        C7018s.C7019a a = C7018s.m21298a(this);
        a.m21295a("placeId", this.f6961b);
        a.m21295a(NovaHomeBadger.TAG, this.f6962c);
        if (!"unknown".equals(this.f6963d)) {
            a.m21295a("source", this.f6963d);
        }
        return a.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 1, this.f6960a);
        C7031b.m21215a(parcel, 2, m31794c(), false);
        C7031b.m21215a(parcel, 3, m31795H(), false);
        C7031b.m21215a(parcel, 4, this.f6963d, false);
        C7031b.m21229a(parcel, a);
    }
}
