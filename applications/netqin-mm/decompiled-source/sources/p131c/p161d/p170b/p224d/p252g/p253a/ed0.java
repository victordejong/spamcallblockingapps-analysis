package p131c.p161d.p170b.p224d.p252g.p253a;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: c.d.b.d.g.a.ed0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ed0.class */
public final class ed0 extends bd0 {

    /* renamed from: P0 */
    public final long f12834P0;

    /* renamed from: Q0 */
    public final List<dd0> f12835Q0 = new ArrayList();

    /* renamed from: R0 */
    public final List<ed0> f12836R0 = new ArrayList();

    public ed0(int i, long j) {
        super(i);
        this.f12834P0 = j;
    }

    /* renamed from: a */
    public final void m27028a(dd0 dd0Var) {
        this.f12835Q0.add(dd0Var);
    }

    /* renamed from: a */
    public final void m27027a(ed0 ed0Var) {
        this.f12836R0.add(ed0Var);
    }

    /* renamed from: d */
    public final dd0 m27026d(int i) {
        int size = this.f12835Q0.size();
        for (int i2 = 0; i2 < size; i2++) {
            dd0 dd0Var = this.f12835Q0.get(i2);
            if (dd0Var.f12468a == i) {
                return dd0Var;
            }
        }
        return null;
    }

    /* renamed from: e */
    public final ed0 m27025e(int i) {
        int size = this.f12836R0.size();
        for (int i2 = 0; i2 < size; i2++) {
            ed0 ed0Var = this.f12836R0.get(i2);
            if (ed0Var.f12468a == i) {
                return ed0Var;
            }
        }
        return null;
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.bd0
    public final String toString() {
        String c = bd0.m27121c(this.f12468a);
        String arrays = Arrays.toString(this.f12835Q0.toArray());
        String arrays2 = Arrays.toString(this.f12836R0.toArray());
        StringBuilder sb = new StringBuilder(String.valueOf(c).length() + 22 + String.valueOf(arrays).length() + String.valueOf(arrays2).length());
        sb.append(c);
        sb.append(" leaves: ");
        sb.append(arrays);
        sb.append(" containers: ");
        sb.append(arrays2);
        return sb.toString();
    }
}
