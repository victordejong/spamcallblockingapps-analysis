package p068d2;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import java.util.Objects;
import org.json.JSONException;
import p068d2.C2230f1;
/* renamed from: d2.c3 */
/* loaded from: classes-dex2jar.jar:d2/c3.class */
public class RunnableC2190c3 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C2267f4 f7985a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC2161a f7986b;

    /* renamed from: c */
    public final /* synthetic */ Context f7987c;

    /* renamed from: d */
    public final /* synthetic */ C2197d3 f7988d;

    public RunnableC2190c3(C2197d3 c2197d3, C2267f4 c2267f4, AbstractC2161a abstractC2161a, Context context) {
        this.f7988d = c2197d3;
        this.f7985a = c2267f4;
        this.f7986b = abstractC2161a;
        this.f7987c = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        C2374o1 c2374o1;
        try {
            c2374o1 = new C2374o1(this.f7985a);
        } catch (JSONException e) {
            c2374o1 = null;
        }
        if (c2374o1 != null) {
            C2197d3 c2197d3 = this.f7988d;
            AbstractC2161a abstractC2161a = this.f7986b;
            Context context = this.f7987c;
            synchronized (c2197d3) {
                try {
                    SQLiteDatabase sQLiteDatabase = c2197d3.f8018b;
                    if (sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
                        c2197d3.f8018b = context.openOrCreateDatabase("adc_events_db", 0, null);
                    }
                    if (c2197d3.f8018b.needUpgrade(c2374o1.f8396a)) {
                        boolean z = c2197d3.m3766c(c2374o1) && c2197d3.f8020d != null;
                        c2197d3.f8019c = z;
                        if (z) {
                            Objects.requireNonNull((C2230f1.C2245m) c2197d3.f8020d);
                            C2396r1.m3611c().f8466d = false;
                        }
                    } else {
                        c2197d3.f8019c = true;
                    }
                    if (c2197d3.f8019c) {
                        abstractC2161a.accept(c2374o1);
                    }
                } catch (SQLiteException e2) {
                    C2408t.m3591d().m3718p().m3686e(0, 1, "Database cannot be opened" + e2.toString(), true);
                }
            }
        }
    }
}
