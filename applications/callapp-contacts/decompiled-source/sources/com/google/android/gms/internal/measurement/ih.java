package com.google.android.gms.internal.measurement;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ih.class */
public final class ih implements Comparable<ih>, Map.Entry {

    /* renamed from: a  reason: collision with root package name */
    final Comparable f29120a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ ik f29121b;

    /* renamed from: c  reason: collision with root package name */
    private Object f29122c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ih(ik ikVar, Comparable comparable, Object obj) {
        this.f29121b = ikVar;
        this.f29120a = comparable;
        this.f29122c = obj;
    }

    private static final boolean a(Object obj, Object obj2) {
        boolean z;
        if (obj != null) {
            z = obj.equals(obj2);
        } else if (obj2 == null) {
            return true;
        } else {
            z = false;
        }
        return z;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(ih ihVar) {
        return this.f29120a.compareTo(ihVar.f29120a);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return a(this.f29120a, entry.getKey()) && a(this.f29122c, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* bridge */ /* synthetic */ Object getKey() {
        return this.f29120a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f29122c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f29120a;
        int i = 0;
        int hashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f29122c;
        if (obj != null) {
            i = obj.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.f29121b.e();
        Object obj2 = this.f29122c;
        this.f29122c = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f29120a);
        String valueOf2 = String.valueOf(this.f29122c);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length());
        sb.append(valueOf);
        sb.append("=");
        sb.append(valueOf2);
        return sb.toString();
    }
}
