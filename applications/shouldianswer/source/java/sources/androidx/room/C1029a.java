package androidx.room;

import android.content.Context;
import androidx.p042i.p043a.AbstractC0779c;
import androidx.room.AbstractC1063j;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: androidx.room.a */
/* loaded from: classes-dex2jar.jar:androidx/room/a.class */
public class C1029a {

    /* renamed from: a */
    public final AbstractC0779c.AbstractC0783c f3229a;

    /* renamed from: b */
    public final Context f3230b;

    /* renamed from: c */
    public final String f3231c;

    /* renamed from: d */
    public final AbstractC1063j.C1067d f3232d;

    /* renamed from: e */
    public final List<AbstractC1063j.AbstractC1065b> f3233e;

    /* renamed from: f */
    public final boolean f3234f;

    /* renamed from: g */
    public final AbstractC1063j.EnumC1066c f3235g;

    /* renamed from: h */
    public final Executor f3236h;

    /* renamed from: i */
    public final Executor f3237i;

    /* renamed from: j */
    public final boolean f3238j;

    /* renamed from: k */
    public final boolean f3239k;

    /* renamed from: l */
    public final boolean f3240l;

    /* renamed from: m */
    public final String f3241m;

    /* renamed from: n */
    public final File f3242n;

    /* renamed from: o */
    private final Set<Integer> f3243o;

    public C1029a(Context context, String str, AbstractC0779c.AbstractC0783c abstractC0783c, AbstractC1063j.C1067d c1067d, List<AbstractC1063j.AbstractC1065b> list, boolean z, AbstractC1063j.EnumC1066c enumC1066c, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file) {
        this.f3229a = abstractC0783c;
        this.f3230b = context;
        this.f3231c = str;
        this.f3232d = c1067d;
        this.f3233e = list;
        this.f3234f = z;
        this.f3235g = enumC1066c;
        this.f3236h = executor;
        this.f3237i = executor2;
        this.f3238j = z2;
        this.f3239k = z3;
        this.f3240l = z4;
        this.f3243o = set;
        this.f3241m = str2;
        this.f3242n = file;
    }

    /* renamed from: a */
    public boolean m4503a(int i, int i2) {
        boolean z;
        if (!(i > i2) || !this.f3240l) {
            if (this.f3239k) {
                Set<Integer> set = this.f3243o;
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
