package com.google.android.exoplayer2.decoder;

import com.callapp.contacts.activity.base.BaseViewTypeData;
/* renamed from: com.google.android.exoplayer2.decoder.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/decoder/a.class */
public abstract class AbstractC10929a {

    /* renamed from: a */
    public int f35344a;

    /* renamed from: E_ */
    public final boolean m21920E_() {
        return m21918b(BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW);
    }

    /* renamed from: a */
    public void mo20663a() {
        this.f35344a = 0;
    }

    /* renamed from: a */
    public final void m21919a(int i) {
        this.f35344a = i | this.f35344a;
    }

    /* renamed from: b */
    public final boolean m21918b(int i) {
        return (this.f35344a & i) == i;
    }

    /* renamed from: c */
    public final boolean m21917c() {
        return m21918b(4);
    }

    /* renamed from: d */
    public final boolean m21916d() {
        return m21918b(1);
    }

    /* renamed from: e */
    public final boolean m21915e() {
        return m21918b(268435456);
    }
}
