package org.mistergroup.shouldianswer.model;

import androidx.room.AbstractC1063j;
import androidx.room.C1062i;
import kotlin.C1775o;
import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1703n;
import org.mistergroup.shouldianswer.MyApp;
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/AppDatabase.class */
public abstract class AppDatabase extends AbstractC1063j {

    /* renamed from: d */
    public static final C2343a f6633d = new C2343a(null);

    /* renamed from: e */
    private static AppDatabase f6634e;

    /* renamed from: org.mistergroup.shouldianswer.model.AppDatabase$a */
    /* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/model/AppDatabase$a.class */
    public static final class C2343a {
        private C2343a() {
        }

        public /* synthetic */ C2343a(C1691e c1691e) {
            this();
        }

        /* renamed from: a */
        public final AppDatabase m1524a() {
            if (AppDatabase.f6634e == null) {
                synchronized (C1703n.m3107a(AppDatabase.class)) {
                    AppDatabase.f6634e = (AppDatabase) C1062i.m4452a(MyApp.f5480c.m1802a().getApplicationContext(), AppDatabase.class, "siadb6").m4434a();
                    C1775o c1775o = C1775o.f4450a;
                }
            }
            AppDatabase appDatabase = AppDatabase.f6634e;
            if (appDatabase != null) {
                return appDatabase;
            }
            throw new TypeCastException("null cannot be cast to non-null type org.mistergroup.shouldianswer.model.AppDatabase");
        }
    }

    /* renamed from: l */
    public abstract AbstractC2465y mo1510l();

    /* renamed from: m */
    public abstract AbstractC2445p mo1509m();

    /* renamed from: n */
    public abstract AbstractC2419e mo1508n();

    /* renamed from: o */
    public abstract AbstractC2456u mo1507o();
}
