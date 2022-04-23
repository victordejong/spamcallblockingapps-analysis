package com.google.android.gms.tagmanager;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/cm.class */
final class cm extends Number implements Comparable<cm> {

    /* renamed from: a  reason: collision with root package name */
    boolean f4359a = false;

    /* renamed from: b  reason: collision with root package name */
    private double f4360b;
    private long c;

    private cm(double d) {
        this.f4360b = d;
    }

    private cm(long j) {
        this.c = j;
    }

    public static cm a(long j) {
        return new cm(j);
    }

    public static cm a(Double d) {
        return new cm(d.doubleValue());
    }

    public static cm a(String str) {
        cm cmVar;
        try {
            cmVar = new cm(Long.parseLong(str));
        } catch (NumberFormatException e) {
            try {
                cmVar = new cm(Double.parseDouble(str));
            } catch (NumberFormatException e2) {
                throw new NumberFormatException(String.valueOf(str).concat(" is not a valid TypedNumber"));
            }
        }
        return cmVar;
    }

    /* renamed from: a */
    public final int compareTo(cm cmVar) {
        return (!this.f4359a || !cmVar.f4359a) ? Double.compare(doubleValue(), cmVar.doubleValue()) : new Long(this.c).compareTo(Long.valueOf(cmVar.c));
    }

    @Override // java.lang.Number
    public final byte byteValue() {
        return (byte) longValue();
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return this.f4359a ? this.c : this.f4360b;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof cm) && compareTo((cm) obj) == 0;
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
        return this.f4359a ? this.c : (long) this.f4360b;
    }

    @Override // java.lang.Number
    public final short shortValue() {
        return (short) longValue();
    }

    public final String toString() {
        return this.f4359a ? Long.toString(this.c) : Double.toString(this.f4360b);
    }
}
