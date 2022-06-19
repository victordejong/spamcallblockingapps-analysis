package p193e.p194a.p195a.p231g.p232j0;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.net.Uri;
import p193e.p194a.p195a.p231g.p234l0.C6227c;
import s1.z.c.l;
/* renamed from: e.a.a.g.j0.p */
/* loaded from: classes7-dex2jar.jar:e/a/a/g/j0/p.class */
public final class C6148p extends CursorWrapper implements AbstractC6147o {

    /* renamed from: a */
    public final int f20550a = getColumnIndexOrThrow("message_id");

    /* renamed from: b */
    public final int f20551b = getColumnIndexOrThrow("message_date");

    /* renamed from: c */
    public final int f20552c = getColumnIndexOrThrow("message_status");

    /* renamed from: d */
    public final int f20553d = getColumnIndexOrThrow("message_transport");

    /* renamed from: e */
    public final int f20554e = getColumnIndexOrThrow("message_important");

    /* renamed from: f */
    public final int f20555f = getColumnIndexOrThrow("entity_id");

    /* renamed from: g */
    public final int f20556g = getColumnIndexOrThrow("entity_mime_type");

    /* renamed from: h */
    public final int f20557h = getColumnIndexOrThrow("entity_content");

    /* renamed from: i */
    public final int f20558i = getColumnIndexOrThrow("entity_status");

    /* renamed from: j */
    public final int f20559j = getColumnIndexOrThrow("entity_width");

    /* renamed from: k */
    public final int f20560k = getColumnIndexOrThrow("entity_height");

    /* renamed from: l */
    public final int f20561l = getColumnIndexOrThrow("entity_duration");

    /* renamed from: m */
    public final int f20562m = getColumnIndexOrThrow("entity_thumbnail");

    /* renamed from: n */
    public final int f20563n = getColumnIndexOrThrow("entity_filename");

    /* renamed from: o */
    public final int f20564o = getColumnIndexOrThrow("entity_vcard_name");

    /* renamed from: p */
    public final int f20565p = getColumnIndexOrThrow("entity_vcard_contacts_count");

    /* renamed from: q */
    public final int f20566q = getColumnIndexOrThrow("entity_description");

    /* renamed from: r */
    public final int f20567r = getColumnIndexOrThrow("entity_source");

    /* renamed from: s */
    public final int f20568s = getColumnIndexOrThrow("entity_text");

    /* renamed from: t */
    public final int f20569t = getColumnIndexOrThrow("entity_link");

    /* renamed from: u */
    public final int f20570u = getColumnIndexOrThrow("entity_size");

    /* renamed from: v */
    public final int f20571v = getColumnIndexOrThrow("participant_type");

    /* renamed from: w */
    public final int f20572w = getColumnIndexOrThrow("participant_normalized_destination");

    /* renamed from: x */
    public final int f20573x = getColumnIndexOrThrow("participant_name");

    /* renamed from: y */
    public final int f20574y = getColumnIndexOrThrow("participant_peer_id");

    /* renamed from: z */
    public final int f20575z = getColumnIndexOrThrow("message_raw_message_id");

    /* renamed from: A */
    public final int f20549A = getColumnIndexOrThrow("message_forwarding_id");

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6148p(Cursor cursor) {
        super(cursor);
        l.e(cursor, "cursor");
    }

    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6147o
    /* renamed from: a0 */
    public long mo31743a0() {
        return getLong(this.f20555f);
    }

    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    @Override // p193e.p194a.p195a.p231g.p232j0.AbstractC6147o
    /* renamed from: f2 */
    public C6227c mo31742f2() {
        String string = getString(this.f20569t);
        long j = getLong(this.f20550a);
        long j2 = getLong(this.f20551b);
        int i = getInt(this.f20552c);
        int i2 = getInt(this.f20553d);
        boolean z = getInt(this.f20554e) != 0;
        char mo31743a0 = !(string == null || string.length() == 0) ? mo31743a0() + string.hashCode() : mo31743a0();
        String string2 = getString(this.f20556g);
        l.d(string2, "getString(entityType)");
        Uri parse = Uri.parse(getString(this.f20557h));
        l.d(parse, "Uri.parse(getString(entityContent))");
        int i3 = getInt(this.f20558i);
        int i4 = getInt(this.f20559j);
        int i5 = getInt(this.f20560k);
        int i6 = getInt(this.f20561l);
        String string3 = getString(this.f20562m);
        Uri parse2 = string3 != null ? Uri.parse(string3) : null;
        String string4 = getString(this.f20563n);
        String string5 = getString(this.f20564o);
        int i7 = getInt(this.f20565p);
        String string6 = getString(this.f20568s);
        long j3 = getLong(this.f20570u);
        int i8 = getInt(this.f20571v);
        String string7 = getString(this.f20572w);
        l.d(string7, "getString(participantNormalizedDestination)");
        String string8 = getString(this.f20573x);
        String string9 = getString(this.f20566q);
        String string10 = getString(this.f20567r);
        String string11 = getString(this.f20574y);
        String string12 = getString(this.f20575z);
        String string13 = getString(this.f20549A);
        if (!(getInt(this.f20553d) == 2)) {
            string13 = null;
        }
        return new C6227c(j, j2, i, i2, z, mo31743a0, string2, parse, i3, i4, i5, i6, parse2, string4, string5, i7, string6, string, j3, i8, string7, string8, string9, string10, string12, string11, string13);
    }
}
