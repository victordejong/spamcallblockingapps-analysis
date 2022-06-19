package p193e.p194a.p1342w4;

import android.content.Context;
import com.truecaller.data.entity.Contact;
import java.util.List;
import java.util.UUID;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p937j4.p938a.AbstractC15561d;
/* renamed from: e.a.w4.i */
/* loaded from: classes13-dex2jar.jar:e/a/w4/i.class */
public abstract class AbstractAsyncTaskC21209i extends AbstractAsyncTaskC21201a {

    /* renamed from: n */
    public final int f59413n;

    /* renamed from: o */
    public final AbstractC21204d f59414o;

    public AbstractAsyncTaskC21209i(Context context, AbstractC15561d abstractC15561d, AbstractC14835j abstractC14835j, AbstractC19854f<AbstractC19463a0> abstractC19854f, Contact contact, int i, String str, UUID uuid, int i2, AbstractC21204d abstractC21204d) {
        super(context, abstractC15561d, abstractC14835j, abstractC19854f, contact, str, uuid, i2);
        this.f59413n = i;
        this.f59414o = abstractC21204d;
    }

    @Override // p193e.p194a.p1342w4.AbstractAsyncTaskC21201a
    /* renamed from: d */
    public List<Contact> mo10134d(Context context, List<String> list) {
        return this.f59413n < list.size() ? super.mo10134d(context, list.subList(0, this.f59413n)) : super.mo10134d(context, list);
    }
}
