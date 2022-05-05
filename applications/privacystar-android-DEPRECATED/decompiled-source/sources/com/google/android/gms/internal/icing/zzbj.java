package com.google.android.gms.internal.icing;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzbj.class */
final class zzbj implements Iterator {
    private final int limit;
    private int position = 0;
    private final /* synthetic */ zzbi zzdt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbj(zzbi zzbiVar) {
        this.zzdt = zzbiVar;
        this.limit = this.zzdt.size();
    }

    private final byte nextByte() {
        try {
            zzbi zzbiVar = this.zzdt;
            int i = this.position;
            this.position = i + 1;
            return zzbiVar.zzi(i);
        } catch (IndexOutOfBoundsException e) {
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.position < this.limit;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return Byte.valueOf(nextByte());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
