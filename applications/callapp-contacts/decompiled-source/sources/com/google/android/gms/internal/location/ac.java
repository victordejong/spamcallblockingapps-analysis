package com.google.android.gms.internal.location;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/ac.class */
public final class ac<E> extends aa<E> {

    /* renamed from: a  reason: collision with root package name */
    private final ae<E> f28888a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(ae<E> aeVar, int i) {
        super(aeVar.size(), i);
        this.f28888a = aeVar;
    }

    @Override // com.google.android.gms.internal.location.aa
    protected final E a(int i) {
        return this.f28888a.get(i);
    }
}
