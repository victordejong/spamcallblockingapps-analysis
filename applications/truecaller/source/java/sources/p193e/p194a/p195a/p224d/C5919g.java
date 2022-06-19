package p193e.p194a.p195a.p224d;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import com.huawei.hms.actions.SearchIntents;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import java.io.IOException;
import java.util.UUID;
import javax.inject.Inject;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p224d.AbstractC5931s;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6127a0;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p751f4.p762g.C14022p;
import p193e.p194a.p751f4.p762g.C14030t;
import p193e.p194a.p751f4.p764i.AbstractAsyncTaskC14042e;
import s1.i;
import s1.k;
import s1.z.c.l;
/* renamed from: e.a.a.d.g */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/g.class */
public final class C5919g implements AbstractC5918f {

    /* renamed from: a */
    public final AbstractC8432l f19791a;

    /* renamed from: b */
    public final AbstractC14028r f19792b;

    /* renamed from: c */
    public final ContentResolver f19793c;

    /* renamed from: d */
    public final AbstractC6115g f19794d;

    /* renamed from: e */
    public final AbstractC5931s f19795e;

    /* renamed from: f */
    public final C20592g f19796f;

    @Inject
    public C5919g(AbstractC8432l abstractC8432l, AbstractC14028r abstractC14028r, ContentResolver contentResolver, AbstractC6115g abstractC6115g, AbstractC5931s abstractC5931s, C20592g c20592g) {
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC14028r, "searchManager");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorsFactory");
        l.e(abstractC5931s, AnalyticsConstants.MODE);
        l.e(c20592g, "featuresRegistry");
        this.f19791a = abstractC8432l;
        this.f19792b = abstractC14028r;
        this.f19793c = contentResolver;
        this.f19794d = abstractC6115g;
        this.f19795e = abstractC5931s;
        this.f19796f = c20592g;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5918f
    /* renamed from: a */
    public AbstractC6127a0 mo32222a(String str, CancellationSignal cancellationSignal, String str2, boolean z) {
        Uri uri;
        Cursor cursor;
        AbstractC6127a0 abstractC6127a0;
        l.e(str, SearchIntents.EXTRA_QUERY);
        l.e(cancellationSignal, "cancellationSignal");
        l.e(str2, "conversationType");
        AbstractC5931s abstractC5931s = this.f19795e;
        if ((abstractC5931s instanceof AbstractC5931s.C5932a) || (abstractC5931s instanceof AbstractC5931s.C5935d)) {
            uri = C17891a1.f50888a.buildUpon().appendEncodedPath("new_conversation_items").appendQueryParameter("query_type", "new_conversation").appendQueryParameter("filter", str).appendQueryParameter("im_enabled", String.valueOf(this.f19791a.mo28580d())).appendQueryParameter("conversation_type", str2).build();
            l.d(uri, "NewConversationDestinati…rsationType\n            )");
        } else if (!(abstractC5931s instanceof AbstractC5931s.C5934c) && !(abstractC5931s instanceof AbstractC5931s.C5933b)) {
            throw new i();
        } else {
            uri = C17891a1.f50888a.buildUpon().appendEncodedPath("new_conversation_items").appendQueryParameter("query_type", "forward").appendQueryParameter("filter", str).appendQueryParameter("im_enabled", String.valueOf(this.f19791a.mo28580d())).appendQueryParameter("exclude_im_group_roles", String.valueOf(2)).appendQueryParameter("exclude_hidden_conversations", String.valueOf(z)).build();
            l.d(uri, "NewConversationDestinati…nversations\n            )");
        }
        try {
            cursor = this.f19793c.query(uri, null, null, null, null, cancellationSignal);
        } catch (OperationCanceledException e) {
            cursor = null;
        }
        if (cursor != null) {
            l.d(cursor, "try {\n            conten…\n        } ?: return null");
            abstractC6127a0 = this.f19794d.mo31773s(cursor);
        } else {
            abstractC6127a0 = null;
        }
        if (abstractC6127a0 != null) {
            return abstractC6127a0;
        }
        return null;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5918f
    /* renamed from: b */
    public boolean mo32221b(Contact contact) {
        boolean z = false;
        if (this.f19796f.m10998G().isEnabled()) {
            if (contact == null) {
                z = false;
            } else {
                Cursor query = this.f19793c.query(C17891a1.C17902k.m15672I(), null, "tc_id = ? AND im_business_state = ?", new String[]{contact.getTcId(), String.valueOf(1)}, null);
                z = false;
                if (query != null) {
                    try {
                        l.d(query, "it");
                        z = false;
                        if (query.getCount() > 0) {
                            z = true;
                        }
                        th = null;
                    } finally {
                        try {
                            throw th;
                        } finally {
                        }
                    }
                }
            }
        }
        return z;
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5918f
    /* renamed from: c */
    public k<Contact, Integer> mo32220c(String str, boolean z) {
        k<Contact, Integer> kVar;
        l.e(str, SearchIntents.EXTRA_QUERY);
        try {
            AbstractC14028r abstractC14028r = this.f19792b;
            UUID randomUUID = UUID.randomUUID();
            l.d(randomUUID, "UUID.randomUUID()");
            C14022p mo20839b = abstractC14028r.mo20839b(randomUUID, "newConversation");
            mo20839b.f40557g = z;
            mo20839b.f40566p = str;
            mo20839b.m20844d();
            mo20839b.f40565o = 4;
            C14030t mo20821a = mo20839b.mo20821a();
            kVar = new k<>(mo20821a != null ? mo20821a.m20837a() : null, (Object) null);
        } catch (AbstractAsyncTaskC14042e.C14043a e) {
            kVar = new k<>((Object) null, Integer.valueOf(e.f40614a));
        } catch (IOException e2) {
            kVar = new k<>((Object) null, (Object) null);
        }
        return kVar;
    }
}
