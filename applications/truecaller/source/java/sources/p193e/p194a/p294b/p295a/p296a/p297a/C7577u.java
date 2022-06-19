package p193e.p194a.p294b.p295a.p296a.p297a;

import android.content.Context;
import android.widget.Toast;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.b.a.a.a.u */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/u.class */
public final class C7577u extends m implements l<Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ C7559k f23896b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7577u(C7559k c7559k) {
        super(1);
        this.f23896b = c7559k;
    }

    /* renamed from: d */
    public Object m29511d(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if (booleanValue) {
            Toast.makeText((Context) this.f23896b.requireActivity(), (CharSequence) "Profile deleted successfully", 0).show();
            this.f23896b.requireActivity().finish();
        } else if (!booleanValue) {
            Toast.makeText((Context) this.f23896b.requireActivity(), (CharSequence) "Couldn't delete profile. Please try again.", 0).show();
        }
        return s.a;
    }
}
