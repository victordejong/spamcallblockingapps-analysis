package p085ea;

import java.util.ArrayList;
import java.util.Random;
/* renamed from: ea.c */
/* loaded from: classes2-dex2jar.jar:ea/c.class */
public class C2634c {

    /* renamed from: c */
    public static Random f9066c;

    /* renamed from: a */
    public int f9067a;

    /* renamed from: b */
    public AbstractC2633b f9068b;

    public C2634c(int i) {
        this.f9067a = i;
    }

    public C2634c(ArrayList<String> arrayList, AbstractC2633b abstractC2633b) {
        this.f9068b = abstractC2633b;
        if (f9066c == null) {
            f9066c = new Random();
        }
        this.f9067a = f9066c.nextInt(255);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        boolean z = false;
        if (obj instanceof C2634c) {
            z = false;
            if (((C2634c) obj).f9067a == this.f9067a) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return this.f9067a;
    }
}
