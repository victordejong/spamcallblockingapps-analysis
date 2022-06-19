package androidx.room;

import android.content.Context;
import androidx.room.RoomDatabase;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import p020b.p070r.p071a.AbstractC1773c;
/* renamed from: androidx.room.a */
/* loaded from: classes-dex2jar.jar:androidx/room/a.class */
public class C0997a {

    /* renamed from: a */
    public final AbstractC1773c.AbstractC1777c f4437a;

    /* renamed from: b */
    public final Context f4438b;

    /* renamed from: c */
    public final String f4439c;

    /* renamed from: d */
    public final RoomDatabase.C0996c f4440d;

    /* renamed from: e */
    public final List<RoomDatabase.AbstractC0995b> f4441e;

    /* renamed from: f */
    public final boolean f4442f;

    /* renamed from: g */
    public final RoomDatabase.JournalMode f4443g;

    /* renamed from: h */
    public final Executor f4444h;

    /* renamed from: i */
    public final Executor f4445i;

    /* renamed from: j */
    public final boolean f4446j;

    /* renamed from: k */
    public final boolean f4447k;

    /* renamed from: l */
    public final boolean f4448l;

    /* renamed from: m */
    private final Set<Integer> f4449m;

    /* renamed from: n */
    public final String f4450n;

    /* renamed from: o */
    public final File f4451o;

    public C0997a(Context context, String str, AbstractC1773c.AbstractC1777c abstractC1777c, RoomDatabase.C0996c c0996c, List<RoomDatabase.AbstractC0995b> list, boolean z, RoomDatabase.JournalMode journalMode, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file) {
        this.f4437a = abstractC1777c;
        this.f4438b = context;
        this.f4439c = str;
        this.f4440d = c0996c;
        this.f4441e = list;
        this.f4442f = z;
        this.f4443g = journalMode;
        this.f4444h = executor;
        this.f4445i = executor2;
        this.f4446j = z2;
        this.f4447k = z3;
        this.f4448l = z4;
        this.f4449m = set;
        this.f4450n = str2;
        this.f4451o = file;
    }

    /* renamed from: a */
    public boolean m31265a(int i, int i2) {
        boolean z;
        if (!(i > i2) || !this.f4448l) {
            if (this.f4447k) {
                Set<Integer> set = this.f4449m;
                z = true;
                if (set != null) {
                    if (!set.contains(Integer.valueOf(i))) {
                        z = true;
                    }
                }
                return z;
            }
            z = false;
            return z;
        }
        return false;
    }
}
