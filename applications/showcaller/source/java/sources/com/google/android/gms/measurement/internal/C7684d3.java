package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.C7288a;
import com.google.android.gms.internal.measurement.C7526r0;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.d3 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/d3.class */
public final class C7684d3 extends C7288a implements AbstractC7708f3 {
    public C7684d3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: I2 */
    public final List<zzkl> mo6245I2(String str, String str2, boolean z, zzp zzpVar) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(str);
        m7805c0.writeString(str2);
        C7526r0.m6988b(m7805c0, z);
        C7526r0.m6986d(m7805c0, zzpVar);
        Parcel m7806J0 = m7806J0(14, m7805c0);
        ArrayList createTypedArrayList = m7806J0.createTypedArrayList(zzkl.CREATOR);
        m7806J0.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: M0 */
    public final List<zzaa> mo6243M0(String str, String str2, zzp zzpVar) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(str);
        m7805c0.writeString(str2);
        C7526r0.m6986d(m7805c0, zzpVar);
        Parcel m7806J0 = m7806J0(16, m7805c0);
        ArrayList createTypedArrayList = m7806J0.createTypedArrayList(zzaa.CREATOR);
        m7806J0.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: M2 */
    public final List<zzaa> mo6242M2(String str, String str2, String str3) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(null);
        m7805c0.writeString(str2);
        m7805c0.writeString(str3);
        Parcel m7806J0 = m7806J0(17, m7805c0);
        ArrayList createTypedArrayList = m7806J0.createTypedArrayList(zzaa.CREATOR);
        m7806J0.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: V2 */
    public final void mo6241V2(zzp zzpVar) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, zzpVar);
        m7807D0(18, m7805c0);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: Z3 */
    public final void mo6240Z3(zzp zzpVar) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, zzpVar);
        m7807D0(6, m7805c0);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: a1 */
    public final void mo6239a1(zzp zzpVar) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, zzpVar);
        m7807D0(20, m7805c0);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: h6 */
    public final void mo6237h6(zzkl zzklVar, zzp zzpVar) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, zzklVar);
        C7526r0.m6986d(m7805c0, zzpVar);
        m7807D0(2, m7805c0);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: i3 */
    public final void mo6236i3(Bundle bundle, zzp zzpVar) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, bundle);
        C7526r0.m6986d(m7805c0, zzpVar);
        m7807D0(19, m7805c0);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: n6 */
    public final void mo6233n6(zzas zzasVar, zzp zzpVar) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, zzasVar);
        C7526r0.m6986d(m7805c0, zzpVar);
        m7807D0(1, m7805c0);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: q2 */
    public final void mo6231q2(zzaa zzaaVar, zzp zzpVar) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, zzaaVar);
        C7526r0.m6986d(m7805c0, zzpVar);
        m7807D0(12, m7805c0);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: r1 */
    public final String mo6230r1(zzp zzpVar) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, zzpVar);
        Parcel m7806J0 = m7806J0(11, m7805c0);
        String readString = m7806J0.readString();
        m7806J0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: r2 */
    public final void mo6229r2(long j, String str, String str2, String str3) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeLong(j);
        m7805c0.writeString(str);
        m7805c0.writeString(str2);
        m7805c0.writeString(str3);
        m7807D0(10, m7805c0);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: r6 */
    public final List<zzkl> mo6228r6(String str, String str2, String str3, boolean z) {
        Parcel m7805c0 = m7805c0();
        m7805c0.writeString(null);
        m7805c0.writeString(str2);
        m7805c0.writeString(str3);
        C7526r0.m6988b(m7805c0, z);
        Parcel m7806J0 = m7806J0(15, m7805c0);
        ArrayList createTypedArrayList = m7806J0.createTypedArrayList(zzkl.CREATOR);
        m7806J0.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: u3 */
    public final byte[] mo6227u3(zzas zzasVar, String str) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, zzasVar);
        m7805c0.writeString(str);
        Parcel m7806J0 = m7806J0(9, m7805c0);
        byte[] createByteArray = m7806J0.createByteArray();
        m7806J0.recycle();
        return createByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7708f3
    /* renamed from: x5 */
    public final void mo6226x5(zzp zzpVar) {
        Parcel m7805c0 = m7805c0();
        C7526r0.m6986d(m7805c0, zzpVar);
        m7807D0(4, m7805c0);
    }
}
