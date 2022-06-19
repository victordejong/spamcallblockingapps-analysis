package p303z2;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.util.Base64;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import p028c3.C0816a;
import p170m7.AbstractC3654b;
import p170m7.AbstractC3665i;
import p170m7.C3657e;
import p170m7.C3661g;
import p250u2.AbstractC4463f;
import p250u2.AbstractC4469i;
import p303z2.C5057r;
/* renamed from: z2.m */
/* loaded from: classes2-dex2jar.jar:z2/m.class */
public final /* synthetic */ class C5052m implements C5057r.AbstractC5059b, AbstractC3654b {

    /* renamed from: a */
    public final /* synthetic */ Object f15337a;

    /* renamed from: b */
    public final /* synthetic */ Object f15338b;

    /* renamed from: c */
    public final /* synthetic */ Object f15339c;

    public /* synthetic */ C5052m(Object obj, Object obj2, Object obj3) {
        this.f15337a = obj;
        this.f15338b = obj2;
        this.f15339c = obj3;
    }

    @Override // p170m7.AbstractC3654b
    /* renamed from: a */
    public void mo104a(Exception exc) {
        C3657e.m1928a((Iterator) this.f15337a, (AbstractC3665i) this.f15338b, (C3661g) this.f15339c, exc);
    }

    /* JADX WARN: Type inference failed for: r0v102, types: [long] */
    /* JADX WARN: Type inference failed for: r0v99, types: [long] */
    @Override // p303z2.C5057r.AbstractC5059b
    public Object apply(Object obj) {
        Long l;
        char c;
        C5057r c5057r = (C5057r) this.f15337a;
        AbstractC4469i abstractC4469i = (AbstractC4469i) this.f15338b;
        AbstractC4463f abstractC4463f = (AbstractC4463f) this.f15339c;
        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
        if (c5057r.m87k().compileStatement("PRAGMA page_size").simpleQueryForLong() * c5057r.m87k().compileStatement("PRAGMA page_count").simpleQueryForLong() >= c5057r.f15364d.mo111e()) {
            l = -1L;
        } else {
            Long m86l = c5057r.m86l(sQLiteDatabase, abstractC4469i);
            if (m86l != null) {
                c = m86l.longValue();
            } else {
                ContentValues contentValues = new ContentValues();
                contentValues.put("backend_name", abstractC4469i.mo892b());
                contentValues.put("priority", Integer.valueOf(C0816a.m7345a(abstractC4469i.mo890d())));
                contentValues.put("next_request_ms", (Integer) 0);
                if (abstractC4469i.mo891c() != null) {
                    contentValues.put("extras", Base64.encodeToString(abstractC4469i.mo891c(), 0));
                }
                c = sQLiteDatabase.insert("transport_contexts", null, contentValues);
            }
            int mo112d = c5057r.f15364d.mo112d();
            byte[] bArr = abstractC4463f.mo902d().f13843b;
            boolean z = bArr.length <= mo112d;
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("context_id", Long.valueOf(c));
            contentValues2.put("transport_name", abstractC4463f.mo899g());
            contentValues2.put("timestamp_ms", Long.valueOf(abstractC4463f.mo901e()));
            contentValues2.put("uptime_ms", Long.valueOf(abstractC4463f.mo898h()));
            contentValues2.put("payload_encoding", abstractC4463f.mo902d().f13842a.f13173a);
            contentValues2.put("code", abstractC4463f.mo903c());
            contentValues2.put("num_attempts", (Integer) 0);
            contentValues2.put("inline", Boolean.valueOf(z));
            contentValues2.put("payload", z ? bArr : new byte[0]);
            long insert = sQLiteDatabase.insert("events", null, contentValues2);
            if (!z) {
                int ceil = (int) Math.ceil(bArr.length / mo112d);
                for (int i = 1; i <= ceil; i++) {
                    byte[] copyOfRange = Arrays.copyOfRange(bArr, (i - 1) * mo112d, Math.min(i * mo112d, bArr.length));
                    ContentValues contentValues3 = new ContentValues();
                    contentValues3.put("event_id", Long.valueOf(insert));
                    contentValues3.put("sequence_num", Integer.valueOf(i));
                    contentValues3.put("bytes", copyOfRange);
                    sQLiteDatabase.insert("event_payloads", null, contentValues3);
                }
            }
            for (Map.Entry entry : Collections.unmodifiableMap(abstractC4463f.mo904b()).entrySet()) {
                ContentValues contentValues4 = new ContentValues();
                contentValues4.put("event_id", Long.valueOf(insert));
                contentValues4.put(AppMeasurementSdk.ConditionalUserProperty.NAME, (String) entry.getKey());
                contentValues4.put(AppMeasurementSdk.ConditionalUserProperty.VALUE, (String) entry.getValue());
                sQLiteDatabase.insert("event_metadata", null, contentValues4);
            }
            l = Long.valueOf(insert);
        }
        return l;
    }
}
