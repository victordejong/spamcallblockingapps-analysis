package com.truecaller.insights.categorizer.model;

import androidx.annotation.Keep;
import e.m.e.k;
import e.m.e.r;
import java.util.List;
import kotlin.Metadata;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10115f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\t\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\f\b\u0081\b\u0018��2\u00020\u0001B3\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\u0005\u0012\u0006\u0010\u0013\u001a\u00020\u000b\u0012\u0006\u0010\u0014\u001a\u00020\u000e¢\u0006\u0004\b$\u0010%J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0005HÆ\u0003¢\u0006\u0004\b\n\u0010\bJ\u0010\u0010\f\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000f\u001a\u00020\u000eHÆ\u0003¢\u0006\u0004\b\u000f\u0010\u0010JD\u0010\u0015\u001a\u00020��2\u000e\b\u0002\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\u00052\b\b\u0002\u0010\u0013\u001a\u00020\u000b2\b\b\u0002\u0010\u0014\u001a\u00020\u000eHÆ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\u0017\u0010\rJ\u001a\u0010\u001b\u001a\u00020\u001a2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018HÖ\u0003¢\u0006\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0013\u001a\u00020\u000b8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u001d\u001a\u0004\b\u001e\u0010\rR\u001c\u0010\u0014\u001a\u00020\u000e8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0014\u0010\u001f\u001a\u0004\b \u0010\u0010R\"\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010!\u001a\u0004\b\"\u0010\bR\"\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\u00058\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0012\u0010!\u001a\u0004\b#\u0010\b¨\u0006&"}, d2 = {"Lcom/truecaller/insights/categorizer/model/AndroidMultiClassClassifierModel;", "Le/a/c/g/a0/f;", "", "toString", "()Ljava/lang/String;", "", "Lcom/truecaller/insights/categorizer/model/AndroidClassMeta;", "component1", "()Ljava/util/List;", "Lcom/truecaller/insights/categorizer/model/AndroidWordToClassProb;", "component2", "", "component3", "()I", "", "component4", "()D", "classMetas", "probabilities", "version", "barrierValue", "copy", "(Ljava/util/List;Ljava/util/List;ID)Lcom/truecaller/insights/categorizer/model/AndroidMultiClassClassifierModel;", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "I", "getVersion", "D", "getBarrierValue", "Ljava/util/List;", "getClassMetas", "getProbabilities", "<init>", "(Ljava/util/List;Ljava/util/List;ID)V", "insights_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/categorizer/model/AndroidMultiClassClassifierModel.class */
public final class AndroidMultiClassClassifierModel implements AbstractC10115f {
    private final double barrierValue;
    private final List<AndroidClassMeta> classMetas;
    private final List<AndroidWordToClassProb> probabilities;
    private final int version;

    public AndroidMultiClassClassifierModel(List<AndroidClassMeta> list, List<AndroidWordToClassProb> list2, int i, double d) {
        l.e(list, "classMetas");
        l.e(list2, "probabilities");
        this.classMetas = list;
        this.probabilities = list2;
        this.version = i;
        this.barrierValue = d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [double] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.truecaller.insights.categorizer.model.AndroidMultiClassClassifierModel] */
    public static /* synthetic */ AndroidMultiClassClassifierModel copy$default(AndroidMultiClassClassifierModel androidMultiClassClassifierModel, List list, List list2, int i, double d, int i2, Object obj) {
        List<AndroidClassMeta> list3 = list;
        if ((i2 & 1) != 0) {
            list3 = androidMultiClassClassifierModel.getClassMetas();
        }
        List<AndroidWordToClassProb> list4 = list2;
        if ((i2 & 2) != 0) {
            list4 = androidMultiClassClassifierModel.getProbabilities();
        }
        if ((i2 & 4) != 0) {
            i = androidMultiClassClassifierModel.getVersion();
        }
        ?? r11 = d;
        if ((i2 & 8) != 0) {
            r11 = androidMultiClassClassifierModel.getBarrierValue();
        }
        return androidMultiClassClassifierModel.copy(list3, list4, i, r11);
    }

    public final List<AndroidClassMeta> component1() {
        return getClassMetas();
    }

    public final List<AndroidWordToClassProb> component2() {
        return getProbabilities();
    }

    public final int component3() {
        return getVersion();
    }

    public final double component4() {
        return getBarrierValue();
    }

    public final AndroidMultiClassClassifierModel copy(List<AndroidClassMeta> list, List<AndroidWordToClassProb> list2, int i, double d) {
        l.e(list, "classMetas");
        l.e(list2, "probabilities");
        return new AndroidMultiClassClassifierModel(list, list2, i, d);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AndroidMultiClassClassifierModel)) {
                return false;
            }
            AndroidMultiClassClassifierModel androidMultiClassClassifierModel = (AndroidMultiClassClassifierModel) obj;
            return l.a(getClassMetas(), androidMultiClassClassifierModel.getClassMetas()) && l.a(getProbabilities(), androidMultiClassClassifierModel.getProbabilities()) && getVersion() == androidMultiClassClassifierModel.getVersion() && Double.compare(getBarrierValue(), androidMultiClassClassifierModel.getBarrierValue()) == 0;
        }
        return true;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10115f
    public double getBarrierValue() {
        return this.barrierValue;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10115f
    public List<AndroidClassMeta> getClassMetas() {
        return this.classMetas;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10115f
    public List<AndroidWordToClassProb> getProbabilities() {
        return this.probabilities;
    }

    @Override // p193e.p194a.p437c.p538g.p539a0.AbstractC10115f
    public int getVersion() {
        return this.version;
    }

    public int hashCode() {
        List<AndroidClassMeta> classMetas = getClassMetas();
        int i = 0;
        int hashCode = classMetas != null ? classMetas.hashCode() : 0;
        List<AndroidWordToClassProb> probabilities = getProbabilities();
        if (probabilities != null) {
            i = probabilities.hashCode();
        }
        return ((getVersion() + (((hashCode * 31) + i) * 31)) * 31) + Double.doubleToLongBits(getBarrierValue());
    }

    public String toString() {
        String str;
        try {
            str = new k().n(this, AndroidMultiClassClassifierModel.class);
            l.d(str, "Gson().toJson(this, Andr…ssifierModel::class.java)");
        } catch (r e) {
            str = "";
        }
        return str;
    }
}
