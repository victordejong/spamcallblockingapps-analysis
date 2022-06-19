package p117h8;

import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.provider.CallLog;
import android.provider.ContactsContract;
import ba.C0748b;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.sql.Date;
import java.util.List;
import p095f8.C2779g;
import p095f8.C2780h;
import p149k8.C3396l;
import p149k8.C3401q;
import p278w8.C4775f;
import p278w8.C4776g;
import p278w8.C4788o;
import p278w8.C4790q;
import p278w8.C4791r;
import p289x8.AbstractC4932a;
import p289x8.C4933b;
/* renamed from: h8.o */
/* loaded from: classes2-dex2jar.jar:h8/o.class */
public final /* synthetic */ class RunnableC3041o implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f10310a;

    /* renamed from: b */
    public final /* synthetic */ Context f10311b;

    public /* synthetic */ RunnableC3041o(Context context, int i) {
        this.f10310a = i;
        this.f10311b = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10310a) {
            case 0:
                Context context = this.f10311b;
                while (C3043q.f10314b > 0) {
                    try {
                        Thread.sleep(3000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                C3043q.m2699w();
                Cursor query = Build.VERSION.SDK_INT >= 29 ? context.getContentResolver().query(CallLog.Calls.CONTENT_URI.buildUpon().appendQueryParameter("LIMIT", String.valueOf(200)).build(), null, "type!= ? AND _id>?", new String[]{String.valueOf(2), String.valueOf(C3043q.m2699w())}, "date DESC") : context.getContentResolver().query(CallLog.Calls.CONTENT_URI, null, "type!= ? AND _id>?", new String[]{String.valueOf(2), String.valueOf(C3043q.m2699w())}, "date DESC LIMIT 200");
                while (query.moveToNext()) {
                    if (query.getInt(query.getColumnIndex("type")) != 2) {
                        int i = query.getInt(query.getColumnIndex("_id"));
                        if (((C3036l) new C4791r(new C4776g(new C4788o(new AbstractC4932a[0]), C3036l.class), C3037m.f10291k.m239a(Integer.valueOf(i))).m452p()) != null) {
                            continue;
                        } else {
                            C3036l c3036l = new C3036l();
                            c3036l.f10270l = query.getString(query.getColumnIndex("countryiso"));
                            Date date = new Date(query.getLong(query.getColumnIndex("date")));
                            c3036l.f10267i = date;
                            c3036l.f10263e = date;
                            c3036l.f10269k = Integer.valueOf(query.getInt(query.getColumnIndex("duration")));
                            c3036l.f10265g = Integer.valueOf(i);
                            String string = query.getString(query.getColumnIndex(AppMeasurementSdk.ConditionalUserProperty.NAME));
                            c3036l.f10266h = string;
                            c3036l.f10256Q = string;
                            c3036l.f10261c = query.getString(query.getColumnIndex("number"));
                            c3036l.f10268j = Integer.valueOf(query.getInt(query.getColumnIndex("type")));
                            c3036l.f10280v = C3043q.m2705q(c3036l.f10261c);
                            try {
                                c3036l.f10264f = Integer.valueOf(query.getInt(query.getColumnIndex("subscription_id")));
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            c3036l.mo7416a();
                            if (query.getPosition() > 200) {
                                C0748b.m7409b().m7404g(new C3401q(20));
                                C0748b.m7409b().m7404g(new C3396l("MGDB.updateLogWithCallLog"));
                                query.close();
                                return;
                            }
                        }
                    }
                }
                C0748b.m7409b().m7404g(new C3401q(20));
                C0748b.m7409b().m7404g(new C3396l("MGDB.updateLogWithCallLog"));
                query.close();
                return;
            default:
                Context context2 = this.f10311b;
                try {
                    C2779g.m3093v(context2);
                    String valueOf = String.valueOf(C2780h.m3044j(context2));
                    Cursor query2 = context2.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "data1 NOT NULL AND contact_last_updated_timestamp > ? ", new String[]{valueOf}, "_id");
                    query2.getCount();
                    String m3042k = C2780h.m3042k(context2);
                    while (query2.moveToNext()) {
                        String m2696z = C3043q.m2696z(query2.getString(query2.getColumnIndex("data1")), m3042k);
                        if (!m2696z.isEmpty()) {
                            int i2 = query2.getInt(query2.getColumnIndex("contact_id"));
                            int i3 = query2.getInt(query2.getColumnIndex("_id"));
                            String string2 = query2.getString(query2.getColumnIndex("display_name"));
                            String string3 = query2.getString(query2.getColumnIndex("display_name_alt"));
                            String string4 = query2.getString(query2.getColumnIndex("photo_thumb_uri"));
                            C4776g c4776g = new C4776g(new C4788o(new AbstractC4932a[0]), C3033i.class);
                            C4933b<Integer> c4933b = C3034j.f10202g;
                            C4791r c4791r = new C4791r(c4776g, c4933b.m239a(Integer.valueOf(i2)));
                            C4933b<String> c4933b2 = C3034j.f10203h;
                            c4791r.f14720d.m467k("AND", c4933b2.m239a(m2696z));
                            List mo456l = c4791r.mo456l();
                            if (mo456l.size() != 1) {
                                if (mo456l.size() > 1) {
                                    C4791r c4791r2 = new C4791r(new C4776g(new C4775f(), C3033i.class), c4933b.m239a(Integer.valueOf(i2)));
                                    c4791r2.f14720d.m467k("AND", c4933b2.m239a(m2696z));
                                    c4791r2.m481d();
                                }
                                C3033i c3033i = new C3033i();
                                c3033i.f10200i = i3;
                                c3033i.f10194c = i2;
                                c3033i.f10195d = m2696z;
                                c3033i.f10196e = string2;
                                c3033i.f10197f = string3;
                                c3033i.f10199h = string4;
                                c3033i.f10198g = 1;
                                c3033i.mo7416a();
                            } else if (!C3043q.m2712j((C3033i) mo456l.get(0), m2696z, string2, string3, string4, i2)) {
                                C4791r c4791r3 = new C4791r(new C4790q(C3033i.class).m460a(c4933b2.m239a(m2696z), C3034j.f10204i.m239a(string2), C3034j.f10205j.m239a(string3), C3034j.f10207l.m239a(string4), C3034j.f10206k.m239a(1), c4933b.m239a(Integer.valueOf(i2))), c4933b.m239a(Integer.valueOf(i2)));
                                c4791r3.f14720d.m467k("AND", c4933b2.m239a(m2696z));
                                c4791r3.m481d();
                            }
                        }
                    }
                    query2.close();
                    Cursor query3 = context2.getContentResolver().query(ContactsContract.DeletedContacts.CONTENT_URI, null, "contact_deleted_timestamp > ?", new String[]{valueOf}, null);
                    while (query3.moveToNext()) {
                        new C4791r(new C4776g(new C4775f(), C3033i.class), C3034j.f10202g.m239a(Integer.valueOf(query3.getInt(query3.getColumnIndex("contact_id"))))).m481d();
                    }
                    query3.close();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
                C2780h.m3041k0(context2, "contactslastsync", System.currentTimeMillis());
                C0748b.m7409b().m7404g(new C3401q(10));
                C2779g.m3129D(context2);
                return;
        }
    }
}
