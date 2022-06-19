package com.google.android.gms.measurement.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.C3741a;
import com.google.android.gms.internal.measurement.C4146u;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.ds */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ds.class */
public final class C4257ds extends C3741a implements AbstractC4255dq {
    public C4257ds(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final List<C4423jv> mo4462a(C4430kb c4430kb, boolean z) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, c4430kb);
        C4146u.m4942a(m6504a, z);
        Parcel m6503a = m6503a(7, m6504a);
        ArrayList createTypedArrayList = m6503a.createTypedArrayList(C4423jv.CREATOR);
        m6503a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final List<C4442kn> mo4455a(String str, String str2, C4430kb c4430kb) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeString(str2);
        C4146u.m4943a(m6504a, c4430kb);
        Parcel m6503a = m6503a(16, m6504a);
        ArrayList createTypedArrayList = m6503a.createTypedArrayList(C4442kn.CREATOR);
        m6503a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final List<C4442kn> mo4454a(String str, String str2, String str3) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeString(str2);
        m6504a.writeString(str3);
        Parcel m6503a = m6503a(17, m6504a);
        ArrayList createTypedArrayList = m6503a.createTypedArrayList(C4442kn.CREATOR);
        m6503a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final List<C4423jv> mo4453a(String str, String str2, String str3, boolean z) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeString(str2);
        m6504a.writeString(str3);
        C4146u.m4942a(m6504a, z);
        Parcel m6503a = m6503a(15, m6504a);
        ArrayList createTypedArrayList = m6503a.createTypedArrayList(C4423jv.CREATOR);
        m6503a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final List<C4423jv> mo4452a(String str, String str2, boolean z, C4430kb c4430kb) {
        Parcel m6504a = m6504a();
        m6504a.writeString(str);
        m6504a.writeString(str2);
        C4146u.m4942a(m6504a, z);
        C4146u.m4943a(m6504a, c4430kb);
        Parcel m6503a = m6503a(14, m6504a);
        ArrayList createTypedArrayList = m6503a.createTypedArrayList(C4423jv.CREATOR);
        m6503a.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4466a(long j, String str, String str2, String str3) {
        Parcel m6504a = m6504a();
        m6504a.writeLong(j);
        m6504a.writeString(str);
        m6504a.writeString(str2);
        m6504a.writeString(str3);
        m6502b(10, m6504a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4464a(C4423jv c4423jv, C4430kb c4430kb) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, c4423jv);
        C4146u.m4943a(m6504a, c4430kb);
        m6502b(2, m6504a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4463a(C4430kb c4430kb) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, c4430kb);
        m6502b(4, m6504a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4461a(C4442kn c4442kn) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, c4442kn);
        m6502b(13, m6504a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4460a(C4442kn c4442kn, C4430kb c4430kb) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, c4442kn);
        C4146u.m4943a(m6504a, c4430kb);
        m6502b(12, m6504a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4459a(C4450r c4450r, C4430kb c4430kb) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, c4450r);
        C4146u.m4943a(m6504a, c4430kb);
        m6502b(1, m6504a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4457a(C4450r c4450r, String str, String str2) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, c4450r);
        m6504a.writeString(str);
        m6504a.writeString(str2);
        m6502b(5, m6504a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final byte[] mo4458a(C4450r c4450r, String str) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, c4450r);
        m6504a.writeString(str);
        Parcel m6503a = m6503a(9, m6504a);
        byte[] createByteArray = m6503a.createByteArray();
        m6503a.recycle();
        return createByteArray;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: b */
    public final void mo4450b(C4430kb c4430kb) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, c4430kb);
        m6502b(6, m6504a);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: c */
    public final String mo4447c(C4430kb c4430kb) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, c4430kb);
        Parcel m6503a = m6503a(11, m6504a);
        String readString = m6503a.readString();
        m6503a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: d */
    public final void mo4446d(C4430kb c4430kb) {
        Parcel m6504a = m6504a();
        C4146u.m4943a(m6504a, c4430kb);
        m6502b(18, m6504a);
    }
}
