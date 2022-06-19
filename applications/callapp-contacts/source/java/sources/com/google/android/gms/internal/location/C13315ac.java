package com.google.android.gms.internal.location;
/* renamed from: com.google.android.gms.internal.location.ac */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/ac.class */
public final class C13315ac<E> extends AbstractC13313aa<E> {

    /* renamed from: a */
    private final AbstractC13317ae<E> f50548a;

    public C13315ac(AbstractC13317ae<E> abstractC13317ae, int i) {
        super(abstractC13317ae.size(), i);
        this.f50548a = abstractC13317ae;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13313aa
    /* renamed from: a */
    protected final E mo13350a(int i) {
        return this.f50548a.get(i);
    }
}
