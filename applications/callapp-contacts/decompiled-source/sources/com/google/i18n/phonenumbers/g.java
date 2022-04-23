package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.k;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final int f32863a;

    /* renamed from: b  reason: collision with root package name */
    private final String f32864b;

    /* renamed from: c  reason: collision with root package name */
    private final k.a f32865c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(int i, String str, k.a aVar) {
        if (i < 0) {
            throw new IllegalArgumentException("Start index must be >= 0.");
        } else if (str == null || aVar == null) {
            throw null;
        } else {
            this.f32863a = i;
            this.f32864b = str;
            this.f32865c = aVar;
        }
    }

    public final int a() {
        return this.f32863a + this.f32864b.length();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f32864b.equals(gVar.f32864b) && this.f32863a == gVar.f32863a && this.f32865c.equals(gVar.f32865c);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f32863a), this.f32864b, this.f32865c});
    }

    public final String toString() {
        return "PhoneNumberMatch [" + this.f32863a + "," + a() + ") " + this.f32864b;
    }
}
