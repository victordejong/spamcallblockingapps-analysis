package p000;

import android.text.Editable;
import com.google.android.material.textfield.TextInputLayout;
import p193e.p194a.p294b.p355m.AbstractC8078k0;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: z2 */
/* loaded from: classes6-dex2jar.jar:z2.class */
public final class C27627z2 extends m implements l<Editable, s> {

    /* renamed from: b */
    public final /* synthetic */ int f77874b;

    /* renamed from: c */
    public final /* synthetic */ Object f77875c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C27627z2(int i, Object obj) {
        super(1);
        this.f77874b = i;
        this.f77875c = obj;
    }

    /* renamed from: d */
    public final Object m0d(Object obj) {
        s sVar = s.a;
        int i = this.f77874b;
        if (i == 0) {
            Editable editable = (Editable) obj;
            TextInputLayout textInputLayout = ((AbstractC8078k0) this.f77875c).f24973n;
            s1.z.c.l.d(textInputLayout, "tilPincode");
            textInputLayout.setErrorEnabled(false);
            return sVar;
        } else if (i == 1) {
            Editable editable2 = (Editable) obj;
            TextInputLayout textInputLayout2 = ((AbstractC8078k0) this.f77875c).f24971l;
            s1.z.c.l.d(textInputLayout2, "tilBuildingName");
            textInputLayout2.setErrorEnabled(false);
            return sVar;
        } else if (i == 2) {
            Editable editable3 = (Editable) obj;
            TextInputLayout textInputLayout3 = ((AbstractC8078k0) this.f77875c).f24972m;
            s1.z.c.l.d(textInputLayout3, "tilCity");
            textInputLayout3.setErrorEnabled(false);
            return sVar;
        } else if (i != 3) {
            throw null;
        } else {
            Editable editable4 = (Editable) obj;
            TextInputLayout textInputLayout4 = ((AbstractC8078k0) this.f77875c).f24974o;
            s1.z.c.l.d(textInputLayout4, "tilState");
            textInputLayout4.setErrorEnabled(false);
            return sVar;
        }
    }
}
