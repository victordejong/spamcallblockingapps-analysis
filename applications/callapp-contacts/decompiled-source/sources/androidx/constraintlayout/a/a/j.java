package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.a.a.i;
import androidx.constraintlayout.a.a.a.o;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/a/j.class */
public class j extends e implements i {
    public e[] aX = new e[4];
    public int aY = 0;

    @Override // androidx.constraintlayout.a.a.i
    public final void a(e eVar) {
        if (eVar != this && eVar != null) {
            int i = this.aY;
            e[] eVarArr = this.aX;
            if (i + 1 > eVarArr.length) {
                this.aX = (e[]) Arrays.copyOf(eVarArr, eVarArr.length * 2);
            }
            e[] eVarArr2 = this.aX;
            int i2 = this.aY;
            eVarArr2[i2] = eVar;
            this.aY = i2 + 1;
        }
    }

    @Override // androidx.constraintlayout.a.a.e
    public void a(e eVar, HashMap<e, e> hashMap) {
        super.a(eVar, hashMap);
        j jVar = (j) eVar;
        this.aY = 0;
        int i = jVar.aY;
        for (int i2 = 0; i2 < i; i2++) {
            a(hashMap.get(jVar.aX[i2]));
        }
    }

    public final void a(ArrayList<o> arrayList, int i, o oVar) {
        for (int i2 = 0; i2 < this.aY; i2++) {
            oVar.a(this.aX[i2]);
        }
        for (int i3 = 0; i3 < this.aY; i3++) {
            i.a(this.aX[i3], i, arrayList, oVar);
        }
    }

    @Override // androidx.constraintlayout.a.a.i
    public void f_() {
    }

    @Override // androidx.constraintlayout.a.a.i
    public final void h() {
        this.aY = 0;
        Arrays.fill(this.aX, (Object) null);
    }

    public final int o(int i) {
        for (int i2 = 0; i2 < this.aY; i2++) {
            e eVar = this.aX[i2];
            if (i == 0 && eVar.aG != -1) {
                return eVar.aG;
            }
            if (i == 1 && eVar.aH != -1) {
                return eVar.aH;
            }
        }
        return -1;
    }
}
