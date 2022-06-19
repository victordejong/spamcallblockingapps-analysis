package p193e.p194a.p195a.p200c;

import android.content.Intent;
import android.os.Bundle;
import com.truecaller.data.entity.Contact;
import com.truecaller.messaging.conversation.CallType;
import com.truecaller.spamcategories.SpamCategoryResult;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p195a.p200c.AbstractC5108b4;
import p193e.p194a.p195a.p200c.AbstractC5276f4;
import p193e.p194a.p195a.p200c.AbstractC5719s4;
import p193e.p194a.p195a.p200c.p218o8.AbstractC5639g;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.c.c5 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c5.class */
public abstract class AbstractC5179c5 extends AbstractC20574a<AbstractC5444k5> implements AbstractC5276f4.AbstractC5277a, AbstractC5276f4.AbstractC5277a, AbstractC5719s4.AbstractC5720a, AbstractC5108b4.AbstractC5109a, AbstractC5639g.AbstractC5640a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbstractC5179c5(f fVar) {
        super(fVar);
        l.e(fVar, "uiContext");
    }

    /* renamed from: Eq */
    public abstract void mo33538Eq();

    /* renamed from: Ij */
    public abstract boolean mo33537Ij(Bundle bundle);

    /* renamed from: Jj */
    public abstract void mo33535Jj(CallType callType);

    /* renamed from: Kj */
    public abstract void mo33534Kj();

    /* renamed from: Lj */
    public abstract void mo33532Lj(boolean z, boolean z2);

    /* renamed from: Mj */
    public abstract void mo33531Mj();

    /* renamed from: Nj */
    public abstract void mo33530Nj();

    /* renamed from: Oj */
    public abstract void mo33529Oj(int i, String str);

    /* renamed from: Pj */
    public abstract void mo33528Pj();

    /* renamed from: Qj */
    public abstract void mo33527Qj();

    /* renamed from: R0 */
    public abstract void mo33526R0(int i);

    /* renamed from: Rj */
    public abstract void mo33525Rj(boolean z);

    /* renamed from: Sj */
    public abstract void mo33524Sj();

    /* renamed from: Tj */
    public abstract void mo33523Tj(Contact contact, byte[] bArr);

    /* renamed from: Uj */
    public abstract void mo33522Uj(boolean z, SpamCategoryResult spamCategoryResult);

    /* renamed from: Uq */
    public abstract void mo33521Uq();

    /* renamed from: Vj */
    public abstract void mo33520Vj();

    /* renamed from: Wj */
    public abstract void mo33519Wj(Bundle bundle);

    /* renamed from: Xj */
    public abstract void mo33518Xj(boolean z);

    /* renamed from: Yj */
    public abstract void mo33517Yj(Bundle bundle);

    /* renamed from: Zj */
    public abstract void mo33516Zj();

    /* renamed from: hb */
    public abstract void mo33508hb();

    /* renamed from: m2 */
    public abstract void mo33501m2(Bundle bundle);

    /* renamed from: o5 */
    public abstract void mo33498o5();

    public abstract void onActivityResult(int i, int i2, Intent intent);

    public abstract void onPause();

    public abstract void onRequestPermissionsResult(int i, String[] strArr, int[] iArr);

    public abstract void onResume();

    public abstract void onStart();

    public abstract void onStop();
}
