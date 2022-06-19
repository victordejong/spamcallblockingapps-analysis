package p193e.p194a.p195a.p269n;

import android.content.ContentResolver;
import android.net.Uri;
import com.truecaller.messaging.mediamanager.AttachmentType;
import com.truecaller.messaging.mediamanager.SortOption;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p231g.AbstractC6115g;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6147o;
import p193e.p194a.p372b0.p430q.C8582g0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.n.i */
/* loaded from: classes7-dex2jar.jar:e/a/a/n/i.class */
public final class C7005i implements AbstractC7004h {

    /* renamed from: a */
    public final f f22612a;

    /* renamed from: b */
    public final ContentResolver f22613b;

    /* renamed from: c */
    public final AbstractC6115g f22614c;

    @e(c = "com.truecaller.messaging.mediamanager.MessageAttachmentFetcherImpl$fetchMessageAttachments$2", f = "MessageAttachmentFetcher.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.n.i$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/n/i$a.class */
    public static final class C7006a extends i implements p<i0, d<? super AbstractC6147o>, Object> {

        /* renamed from: f */
        public final /* synthetic */ AttachmentType f22616f;

        /* renamed from: g */
        public final /* synthetic */ String f22617g;

        /* renamed from: h */
        public final /* synthetic */ SortOption f22618h;

        /* renamed from: i */
        public final /* synthetic */ long f22619i;

        /* renamed from: j */
        public final /* synthetic */ int f22620j;

        /* renamed from: k */
        public final /* synthetic */ int f22621k;

        /* renamed from: l */
        public final /* synthetic */ String[] f22622l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7006a(AttachmentType attachmentType, String str, SortOption sortOption, long j, int i, int i2, String[] strArr, d dVar) {
            super(2, dVar);
            C7005i.this = r5;
            this.f22616f = attachmentType;
            this.f22617g = str;
            this.f22618h = sortOption;
            this.f22619i = j;
            this.f22620j = i;
            this.f22621k = i2;
            this.f22622l = strArr;
        }

        /* renamed from: i */
        public final d<s> m30309i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7006a(this.f22616f, this.f22617g, this.f22618h, this.f22619i, this.f22620j, this.f22621k, this.f22622l, dVar);
        }

        /* renamed from: k */
        public final Object m30308k(Object obj, Object obj2) {
            return m30309i(obj, (d) obj2).m30307s(s.a);
        }

        /* renamed from: s */
        public final Object m30307s(Object obj) {
            String str;
            String str2;
            C25225a.m3932a3(obj);
            StringBuilder sb = new StringBuilder();
            int ordinal = this.f22616f.ordinal();
            if (ordinal == 0) {
                str = "\n    (entity_mime_type LIKE 'image/%' AND entity_mime_type != 'image/gif')\n    OR entity_mime_type LIKE 'video/%'\n";
            } else if (ordinal == 1) {
                str = "\n    NOT (\n    (entity_mime_type LIKE 'image/%' AND entity_mime_type != 'image/gif')\n    OR entity_mime_type LIKE 'video/%'\n)\n        AND NOT (entity_mime_type LIKE 'audio/%')\n        AND \n    entity_mime_type NOT IN (\n        'image/gif',\n        'tenor/gif',\n        'application/vnd.truecaller.location'\n    ) AND (\n        entity_mime_type != 'text/plain' OR\n        entity_link IS NOT NULL\n    )\n\n        AND entity_mime_type NOT LIKE 'application/vnd.truecaller.linkpreview%'\n        AND entity_link IS NULL\n";
            } else if (ordinal == 2) {
                str = "entity_mime_type LIKE 'audio/%'";
            } else if (ordinal != 3) {
                throw new s1.i();
            } else {
                str = "entity_mime_type LIKE 'application/vnd.truecaller.linkpreview%' OR entity_link IS NOT NULL";
            }
            sb.append('(' + str + ')');
            String str3 = this.f22617g;
            if (str3 != null) {
                sb.append(" AND (" + str3 + ')');
            }
            String sb2 = sb.toString();
            l.d(sb2, "StringBuilder().apply(builderAction).toString()");
            int ordinal2 = this.f22618h.ordinal();
            if (ordinal2 == 0) {
                str2 = "message_sequence_number DESC, message_date DESC, message_id DESC";
            } else if (ordinal2 == 1) {
                str2 = "message_sequence_number ASC, message_date ASC, message_id ASC";
            } else if (ordinal2 == 2) {
                str2 = "entity_size DESC";
            } else if (ordinal2 != 3) {
                throw new s1.i();
            } else {
                str2 = "entity_size ASC";
            }
            return C7005i.this.f22614c.mo31784h(C7005i.this.f22613b.query(C8582g0.m28312h(this.f22619i, this.f22620j, this.f22621k), null, sb2, this.f22622l, str2));
        }
    }

    @Inject
    public C7005i(@Named("IO") f fVar, ContentResolver contentResolver, AbstractC6115g abstractC6115g) {
        l.e(fVar, "asyncContext");
        l.e(contentResolver, "contentResolver");
        l.e(abstractC6115g, "cursorsFactory");
        this.f22612a = fVar;
        this.f22613b = contentResolver;
        this.f22614c = abstractC6115g;
    }

    @Override // p193e.p194a.p195a.p269n.AbstractC7004h
    /* renamed from: a */
    public Object mo30311a(long j, int i, int i2, AttachmentType attachmentType, SortOption sortOption, String str, String[] strArr, d<? super AbstractC6147o> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f22612a, new C7006a(attachmentType, str, sortOption, j, i, i2, strArr, null), dVar);
    }

    @Override // p193e.p194a.p195a.p269n.AbstractC7004h
    /* renamed from: b */
    public Object mo30310b(long j, int i, int i2, d<? super Integer> dVar) {
        ContentResolver contentResolver = this.f22613b;
        Uri m28312h = C8582g0.m28312h(j, i, i2);
        l.d(m28312h, "MessageAttachmentsQuery.…d, filter, splitCriteria)");
        String str = "\n    entity_mime_type NOT IN (\n        'image/gif',\n        'tenor/gif',\n        'application/vnd.truecaller.location'\n    ) AND (\n        entity_mime_type != 'text/plain' OR\n        entity_link IS NOT NULL\n    )\n";
        l.d(str, "StringBuilder().apply(builderAction).toString()");
        Integer m13700D = C19286f.m13700D(contentResolver, m28312h, "COUNT()", str, null);
        return new Integer(m13700D != null ? m13700D.intValue() : 0);
    }
}
