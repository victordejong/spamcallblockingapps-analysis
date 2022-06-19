package p193e.p194a.p195a.p200c;

import com.truecaller.blocking.FiltersContract;
import com.truecaller.data.entity.Contact;
import java.util.Objects;
import p193e.p194a.p1187r2.AbstractC19851d0;
/* renamed from: e.a.a.c.d5 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/d5.class */
public final class C5228d5<R> implements AbstractC19851d0<Contact> {

    /* renamed from: a */
    public final /* synthetic */ C5240e5 f17941a;

    /* renamed from: b */
    public final /* synthetic */ String f17942b;

    /* renamed from: c */
    public final /* synthetic */ FiltersContract.Filters.EntityType f17943c;

    public C5228d5(C5240e5 c5240e5, String str, FiltersContract.Filters.EntityType entityType) {
        this.f17941a = c5240e5;
        this.f17942b = str;
        this.f17943c = entityType;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(Contact contact) {
        Contact contact2 = contact;
        C5240e5 c5240e5 = this.f17941a;
        String str = this.f17942b;
        FiltersContract.Filters.EntityType entityType = this.f17943c;
        Objects.requireNonNull(c5240e5);
        if (contact2 != null) {
            c5240e5.f17984V.mo11854a().mo20028a(contact2, str, entityType == FiltersContract.Filters.EntityType.BUSINESS ? 2 : 1).mo11828g();
        }
    }
}
