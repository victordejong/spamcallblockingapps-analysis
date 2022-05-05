package com.google.android.gms.tagmanager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzgi.class */
final class zzgi extends Number implements Comparable<zzgi> {
    private double zzbgl;
    private long zzbgm;
    private boolean zzbgn = false;

    private zzgi(double d) {
        this.zzbgl = d;
    }

    private zzgi(long j) {
        this.zzbgm = j;
    }

    public static zzgi zza(Double d) {
        return new zzgi(d.doubleValue());
    }

    public static zzgi zzar(long j) {
        return new zzgi(j);
    }

    public static zzgi zzea(String str) throws NumberFormatException {
        try {
            return new zzgi(Long.parseLong(str));
        } catch (NumberFormatException e) {
            try {
                return new zzgi(Double.parseDouble(str));
            } catch (NumberFormatException e2) {
                throw new NumberFormatException(String.valueOf(str).concat(" is not a valid TypedNumber"));
            }
        }
    }

    @Override // java.lang.Number
    public final byte byteValue() {
        return (byte) longValue();
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return this.zzbgn ? this.zzbgm : this.zzbgl;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzgi) && compareTo((zzgi) obj) == 0;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return (float) doubleValue();
    }

    public final int hashCode() {
        return new Long(longValue()).hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        return (int) longValue();
    }

    @Override // java.lang.Number
    public final long longValue() {
        return this.zzbgn ? this.zzbgm : (long) this.zzbgl;
    }

    @Override // java.lang.Number
    public final short shortValue() {
        return (short) longValue();
    }

    public final String toString() {
        return this.zzbgn ? Long.toString(this.zzbgm) : Double.toString(this.zzbgl);
    }

    /* renamed from: zza */
    public final int compareTo(zzgi zzgiVar) {
        return (!this.zzbgn || !zzgiVar.zzbgn) ? Double.compare(doubleValue(), zzgiVar.doubleValue()) : new Long(this.zzbgm).compareTo(Long.valueOf(zzgiVar.zzbgm));
    }

    public final boolean zzpy() {
        return !this.zzbgn;
    }

    public final boolean zzpz() {
        return this.zzbgn;
    }
}
