package com.facebook.p105c.p107b;

import android.os.Bundle;
import android.os.Parcel;
import com.facebook.p105c.p107b.AbstractC1970i;
import com.facebook.p105c.p107b.AbstractC1970i.AbstractC1971a;
import java.util.Set;
/* renamed from: com.facebook.c.b.i */
/* loaded from: classes-dex2jar.jar:com/facebook/c/b/i.class */
public abstract class AbstractC1970i<P extends AbstractC1970i, E extends AbstractC1971a> implements AbstractC1962e {

    /* renamed from: a */
    private final Bundle f5887a;

    /* renamed from: com.facebook.c.b.i$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/c/b/i$a.class */
    public static abstract class AbstractC1971a<P extends AbstractC1970i, E extends AbstractC1971a> {

        /* renamed from: a */
        private Bundle f5888a = new Bundle();

        /* renamed from: a */
        public E mo15733a(P p) {
            if (p != null) {
                this.f5888a.putAll(p.m15737b());
            }
            return this;
        }

        /* renamed from: a */
        public E m15732a(String str, String str2) {
            this.f5888a.putString(str, str2);
            return this;
        }
    }

    public AbstractC1970i(Parcel parcel) {
        this.f5887a = parcel.readBundle(AbstractC1971a.class.getClassLoader());
    }

    public AbstractC1970i(AbstractC1971a<P, E> abstractC1971a) {
        this.f5887a = (Bundle) ((AbstractC1971a) abstractC1971a).f5888a.clone();
    }

    /* renamed from: a */
    public Object m15738a(String str) {
        return this.f5887a.get(str);
    }

    /* renamed from: b */
    public Bundle m15737b() {
        return (Bundle) this.f5887a.clone();
    }

    /* renamed from: b */
    public String m15736b(String str) {
        return this.f5887a.getString(str);
    }

    /* renamed from: c */
    public Set<String> m15735c() {
        return this.f5887a.keySet();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeBundle(this.f5887a);
    }
}
