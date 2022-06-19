package androidx.room;

import android.content.Context;
import androidx.p042i.p043a.AbstractC0750c;
import androidx.room.AbstractC1044i;
import java.io.File;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
/* renamed from: androidx.room.a */
/* loaded from: classes-dex2jar.jar:androidx/room/a.class */
public class C1010a {

    /* renamed from: a */
    public final AbstractC0750c.AbstractC0754c f3436a;

    /* renamed from: b */
    public final Context f3437b;

    /* renamed from: c */
    public final String f3438c;

    /* renamed from: d */
    public final AbstractC1044i.C1048d f3439d;

    /* renamed from: e */
    public final List<AbstractC1044i.AbstractC1046b> f3440e;

    /* renamed from: f */
    public final boolean f3441f;

    /* renamed from: g */
    public final AbstractC1044i.EnumC1047c f3442g;

    /* renamed from: h */
    public final Executor f3443h;

    /* renamed from: i */
    public final Executor f3444i;

    /* renamed from: j */
    public final boolean f3445j;

    /* renamed from: k */
    public final boolean f3446k;

    /* renamed from: l */
    public final boolean f3447l;

    /* renamed from: m */
    public final String f3448m;

    /* renamed from: n */
    public final File f3449n;

    /* renamed from: o */
    private final Set<Integer> f3450o;

    public C1010a(Context context, String str, AbstractC0750c.AbstractC0754c abstractC0754c, AbstractC1044i.C1048d c1048d, List<AbstractC1044i.AbstractC1046b> list, boolean z, AbstractC1044i.EnumC1047c enumC1047c, Executor executor, Executor executor2, boolean z2, boolean z3, boolean z4, Set<Integer> set, String str2, File file) {
        this.f3436a = abstractC0754c;
        this.f3437b = context;
        this.f3438c = str;
        this.f3439d = c1048d;
        this.f3440e = list;
        this.f3441f = z;
        this.f3442g = enumC1047c;
        this.f3443h = executor;
        this.f3444i = executor2;
        this.f3445j = z2;
        this.f3446k = z3;
        this.f3447l = z4;
        this.f3450o = set;
        this.f3448m = str2;
        this.f3449n = file;
    }

    /* renamed from: a */
    public boolean m18354a(int i, int i2) {
        boolean z = false;
        if (!(i > i2) || !this.f3447l) {
            if (this.f3446k) {
                z = true;
                if (this.f3450o != null) {
                    if (!this.f3450o.contains(Integer.valueOf(i))) {
                        z = true;
                    }
                }
            }
            z = false;
        }
        return z;
    }
}
