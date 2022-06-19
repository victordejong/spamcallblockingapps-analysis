package p193e.p194a.p294b.p295a.p296a.p297a;

import android.content.Intent;
import com.truecaller.bizmon.newBusiness.profile.p150ui.tag.TagPickActivity;
import java.util.Objects;
import s1.s;
import s1.z.b.a;
import s1.z.c.b;
import s1.z.c.j;
/* renamed from: e.a.b.a.a.a.l */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/l.class */
public final /* synthetic */ class C7568l extends j implements a<s> {
    public C7568l(C7559k c7559k) {
        super(0, c7559k, C7559k.class, "openTagPicker", "openTagPicker()V", 0);
    }

    public Object invoke() {
        C7559k c7559k = (C7559k) ((b) this).b;
        int i = C7559k.f23871i;
        Objects.requireNonNull(c7559k);
        c7559k.startActivityForResult(new Intent(c7559k.requireContext(), TagPickActivity.class), 51);
        return s.a;
    }
}
