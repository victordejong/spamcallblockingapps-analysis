package p169m6;

import android.content.Context;
import android.database.Cursor;
import android.provider.ContactsContract;
import ba.C0748b;
import java.util.Objects;
import p095f8.C2780h;
import p117h8.C3043q;
import p149k8.C3389e;
import p182n8.C3792a;
/* renamed from: m6.d */
/* loaded from: classes2-dex2jar.jar:m6/d.class */
public final /* synthetic */ class RunnableC3651d implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f11963a;

    /* renamed from: b */
    public final /* synthetic */ Object f11964b;

    /* renamed from: c */
    public final /* synthetic */ Object f11965c;

    public /* synthetic */ RunnableC3651d(Object obj, Object obj2, int i) {
        this.f11963a = i;
        this.f11964b = obj;
        this.f11965c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11963a) {
            case 0:
                C3652e c3652e = (C3652e) this.f11964b;
                C3648b c3648b = (C3648b) this.f11965c;
                Objects.requireNonNull(c3652e);
                c3652e.m1929e(c3648b.f11944a, c3648b.f11945b);
                return;
            default:
                C3792a c3792a = (C3792a) this.f11964b;
                int i = C3792a.f12267b;
                Objects.requireNonNull(c3792a);
                try {
                    C2780h.m3049g0(c3792a.f12268a.f12269a, "contactssyncschedulestarted", false);
                    C0748b.m7409b().m7404g(new C3389e("GPref.setContactsSyncScheduleStarted", 2));
                    Cursor query = c3792a.f12268a.f12269a.getContentResolver().query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, null, "data1 NOT NULL AND contact_last_updated_timestamp > ? ", new String[]{String.valueOf(C2780h.m3044j(c3792a.f12268a.f12269a))}, "contact_last_updated_timestamp DESC");
                    query.getCount();
                    if (query.moveToNext()) {
                        query.getInt(query.getColumnIndex("_id"));
                        String string = query.getString(query.getColumnIndex("contact_last_updated_timestamp"));
                        Context context = c3792a.f12268a.f12269a;
                        Long valueOf = Long.valueOf(string);
                        if (valueOf.longValue() > C2780h.m3022w(context, "ccolastcontactchange")) {
                            C2780h.m3022w(context, "ccolastcontactchange");
                            C2780h.m3041k0(context, "ccolastcontactchange", valueOf.longValue());
                        }
                    }
                    query.close();
                    new C3043q().m2723B(c3792a.f12268a.f12269a, true);
                    return;
                } catch (Exception e) {
                    return;
                }
        }
    }
}
