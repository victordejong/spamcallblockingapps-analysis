package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p282l.p284k.C8906a;
import p081h.p203i.p204a.p224e.p282l.p284k.C8912g;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/Cap.class */
public class Cap extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Cap> CREATOR = new C8912g();

    /* renamed from: a */
    public final int f7030a;
    @Nullable

    /* renamed from: b */
    public final C8906a f7031b;
    @Nullable

    /* renamed from: c */
    public final Float f7032c;

    public Cap(int i) {
        this(i, (C8906a) null, (Float) null);
    }

    public Cap(int i, @Nullable IBinder iBinder, @Nullable Float f) {
        this(i, iBinder == null ? null : new C8906a(AbstractC7106b.BinderC7107a.m21060a(iBinder)), f);
    }

    public Cap(int i, @Nullable C8906a aVar, @Nullable Float f) {
        C7021t.m21285a(i != 3 || (aVar != null && (f != null && (f.floatValue() > 0.0f ? 1 : (f.floatValue() == 0.0f ? 0 : -1)) > 0)), String.format("Invalid Cap: type=%s bitmapDescriptor=%s bitmapRefWidth=%s", Integer.valueOf(i), aVar, f));
        this.f7030a = i;
        this.f7031b = aVar;
        this.f7032c = f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cap)) {
            return false;
        }
        Cap cap = (Cap) obj;
        return this.f7030a == cap.f7030a && C7018s.m21297a(this.f7031b, cap.f7031b) && C7018s.m21297a(this.f7032c, cap.f7032c);
    }

    public int hashCode() {
        return C7018s.m21296a(Integer.valueOf(this.f7030a), this.f7031b, this.f7032c);
    }

    public String toString() {
        int i = this.f7030a;
        StringBuilder sb = new StringBuilder(23);
        sb.append("[Cap: type=");
        sb.append(i);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21225a(parcel, 2, this.f7030a);
        C8906a aVar = this.f7031b;
        C7031b.m21222a(parcel, 3, aVar == null ? null : aVar.m16808a().asBinder(), false);
        C7031b.m21218a(parcel, 4, this.f7032c, false);
        C7031b.m21229a(parcel, a);
    }
}
