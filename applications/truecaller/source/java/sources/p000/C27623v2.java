package p000;

import android.content.Context;
import android.widget.Toast;
import p193e.p194a.p294b.p295a.p296a.p297a.C7559k;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: v2 */
/* loaded from: classes5-dex2jar.jar:v2.class */
public final class C27623v2 extends m implements l<String, s> {

    /* renamed from: b */
    public final /* synthetic */ int f77865b;

    /* renamed from: c */
    public final /* synthetic */ Object f77866c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C27623v2(int i, Object obj) {
        super(1);
        this.f77865b = i;
        this.f77866c = obj;
    }

    /* renamed from: d */
    public final Object m2d(Object obj) {
        s sVar = s.a;
        int i = this.f77865b;
        if (i == 0) {
            String str = (String) obj;
            s1.z.c.l.e(str, "it");
            Toast.makeText(((C7559k) this.f77866c).getContext(), str, 0).show();
            return sVar;
        } else if (i != 1) {
            throw null;
        } else {
            String str2 = (String) obj;
            s1.z.c.l.e(str2, "it");
            n3.r.a.l requireActivity = ((C7559k) this.f77866c).requireActivity();
            Toast.makeText((Context) requireActivity, (CharSequence) ("Error: " + ((C7559k) this.f77866c).getString(Integer.parseInt(str2))), 0).show();
            return sVar;
        }
    }
}
