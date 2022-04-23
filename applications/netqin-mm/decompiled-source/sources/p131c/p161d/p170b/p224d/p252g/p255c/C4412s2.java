package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzfs;
import com.google.android.gms.internal.clearcut.zzfv;
import com.google.android.gms.internal.clearcut.zzfz;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* renamed from: c.d.b.d.g.c.s2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/s2.class */
public final class C4412s2 implements Cloneable {

    /* renamed from: a */
    public zzfv<?, ?> f16630a;

    /* renamed from: b */
    public Object f16631b;

    /* renamed from: c */
    public List<Object> f16632c = new ArrayList();

    /* renamed from: a */
    public final void m25644a(zzfs zzfsVar) throws IOException {
        if (this.f16631b == null) {
            Iterator<Object> it = this.f16632c.iterator();
            if (it.hasNext()) {
                it.next();
                throw new NoSuchMethodError();
            }
            return;
        }
        throw new NoSuchMethodError();
    }

    /* renamed from: c */
    public final byte[] m25643c() throws IOException {
        byte[] bArr = new byte[m25642e()];
        m25644a(zzfs.m10644a(bArr));
        return bArr;
    }

    /* renamed from: e */
    public final int m25642e() {
        if (this.f16631b == null) {
            Iterator<Object> it = this.f16632c.iterator();
            if (!it.hasNext()) {
                return 0;
            }
            it.next();
            throw new NoSuchMethodError();
        }
        throw new NoSuchMethodError();
    }

    public final boolean equals(Object obj) {
        List<Object> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4412s2)) {
            return false;
        }
        C4412s2 s2Var = (C4412s2) obj;
        if (this.f16631b == null || s2Var.f16631b == null) {
            List<Object> list2 = this.f16632c;
            if (list2 != null && (list = s2Var.f16632c) != null) {
                return list2.equals(list);
            }
            try {
                return Arrays.equals(m25643c(), s2Var.m25643c());
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        } else {
            zzfv<?, ?> zzfvVar = this.f16630a;
            if (zzfvVar != s2Var.f16630a) {
                return false;
            }
            if (!zzfvVar.f29281a.isArray()) {
                return this.f16631b.equals(s2Var.f16631b);
            }
            Object obj2 = this.f16631b;
            return obj2 instanceof byte[] ? Arrays.equals((byte[]) obj2, (byte[]) s2Var.f16631b) : obj2 instanceof int[] ? Arrays.equals((int[]) obj2, (int[]) s2Var.f16631b) : obj2 instanceof long[] ? Arrays.equals((long[]) obj2, (long[]) s2Var.f16631b) : obj2 instanceof float[] ? Arrays.equals((float[]) obj2, (float[]) s2Var.f16631b) : obj2 instanceof double[] ? Arrays.equals((double[]) obj2, (double[]) s2Var.f16631b) : obj2 instanceof boolean[] ? Arrays.equals((boolean[]) obj2, (boolean[]) s2Var.f16631b) : Arrays.deepEquals((Object[]) obj2, (Object[]) s2Var.f16631b);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    public final C4412s2 clone() {
        Object clone;
        C4412s2 s2Var = new C4412s2();
        try {
            s2Var.f16630a = this.f16630a;
            if (this.f16632c == null) {
                s2Var.f16632c = null;
            } else {
                s2Var.f16632c.addAll(this.f16632c);
            }
            if (this.f16631b != null) {
                if (this.f16631b instanceof zzfz) {
                    clone = (zzfz) ((zzfz) this.f16631b).clone();
                } else if (this.f16631b instanceof byte[]) {
                    clone = ((byte[]) this.f16631b).clone();
                } else {
                    if (this.f16631b instanceof byte[][]) {
                        byte[][] bArr = (byte[][]) this.f16631b;
                        byte[] bArr2 = new byte[bArr.length];
                        s2Var.f16631b = bArr2;
                        for (int i = 0; i < bArr.length; i++) {
                            bArr2[i] = (byte[]) bArr[i].clone();
                        }
                    } else if (this.f16631b instanceof boolean[]) {
                        clone = ((boolean[]) this.f16631b).clone();
                    } else if (this.f16631b instanceof int[]) {
                        clone = ((int[]) this.f16631b).clone();
                    } else if (this.f16631b instanceof long[]) {
                        clone = ((long[]) this.f16631b).clone();
                    } else if (this.f16631b instanceof float[]) {
                        clone = ((float[]) this.f16631b).clone();
                    } else if (this.f16631b instanceof double[]) {
                        clone = ((double[]) this.f16631b).clone();
                    } else if (this.f16631b instanceof zzfz[]) {
                        zzfz[] zzfzVarArr = (zzfz[]) this.f16631b;
                        zzfz[] zzfzVarArr2 = new zzfz[zzfzVarArr.length];
                        s2Var.f16631b = zzfzVarArr2;
                        for (int i2 = 0; i2 < zzfzVarArr.length; i2++) {
                            zzfzVarArr2[i2] = (zzfz) zzfzVarArr[i2].clone();
                        }
                    }
                }
                s2Var.f16631b = clone;
            }
            return s2Var;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final int hashCode() {
        try {
            return Arrays.hashCode(m25643c()) + 527;
        } catch (IOException e) {
            throw new IllegalStateException(e);
        }
    }
}
