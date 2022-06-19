package p201p6;

import android.os.Process;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import android.util.Log;
import androidx.recyclerview.widget.C0608b;
import com.google.android.gms.internal.ads.C1676a;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.IllegalFormatException;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import p093f6.C2763a;
import p134j4.C3259w;
import p161l9.AbstractC3541a;
import p211q6.C4164g;
import p220r4.AbstractC4193b;
import p275w5.AbstractC4739b;
/* renamed from: p6.c */
/* loaded from: classes-dex2jar.jar:p6/c.class */
public class C4018c implements AbstractC4193b, AbstractC3541a {

    /* renamed from: b */
    public static volatile C4018c f12636b;

    /* renamed from: a */
    public Object f12637a;

    public C4018c(int i) {
        if (i == 1) {
            this.f12637a = new HashMap();
        } else if (i != 5) {
            this.f12637a = new HashSet();
        } else {
            this.f12637a = new Hashtable();
        }
    }

    public /* synthetic */ C4018c(String str) {
        StringBuilder m8753i = C0082b.m8753i(39, "UID: [", Process.myUid(), "]  PID: [", Process.myPid());
        m8753i.append("] ");
        String sb = m8753i.toString();
        this.f12637a = str.length() != 0 ? sb.concat(str) : new String(sb);
    }

    /* renamed from: g */
    public static String m1505g(String str, String str2, Object... objArr) {
        String str3 = str2;
        if (objArr.length > 0) {
            try {
                str3 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e) {
                String valueOf = String.valueOf(str2);
                if (valueOf.length() != 0) {
                    "Unable to format ".concat(valueOf);
                }
                String join = TextUtils.join(", ", objArr);
                str3 = C1676a.m4788i(new StringBuilder(String.valueOf(str2).length() + 3 + String.valueOf(join).length()), str2, " [", join, "]");
            }
        }
        return C0608b.m7625j(new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str3).length()), str, " : ", str3);
    }

    /* renamed from: a */
    public Set m1511a() {
        Set unmodifiableSet;
        synchronized (((Set) this.f12637a)) {
            unmodifiableSet = Collections.unmodifiableSet((Set) this.f12637a);
        }
        return unmodifiableSet;
    }

    /* renamed from: b */
    public int m1510b(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 3)) {
            return Log.d("PlayCore", m1505g((String) this.f12637a, str, objArr));
        }
        return 0;
    }

    /* renamed from: c */
    public int m1509c(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", m1505g((String) this.f12637a, str, objArr));
        }
        return 0;
    }

    /* renamed from: d */
    public int m1508d(Throwable th, String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            return Log.e("PlayCore", m1505g((String) this.f12637a, str, objArr), th);
        }
        return 0;
    }

    /* renamed from: e */
    public int m1507e(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            return Log.i("PlayCore", m1505g((String) this.f12637a, str, objArr));
        }
        return 0;
    }

    /* renamed from: f */
    public int m1506f(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 5)) {
            return Log.w("PlayCore", m1505g((String) this.f12637a, str, objArr));
        }
        return 0;
    }

    @Override // p161l9.AbstractC3541a
    public Object get() {
        AbstractC4739b<C4164g> abstractC4739b = ((C2763a) this.f12637a).f9462c;
        Objects.requireNonNull(abstractC4739b, "Cannot return null from a non-@Nullable @Provides method");
        return abstractC4739b;
    }

    @Override // p220r4.AbstractC4193b
    public void onSuccess(Object obj) {
        C3259w c3259w = (C3259w) this.f12637a;
        List list = (List) obj;
        int m2504a = c3259w.f11006b.m2504a();
        Iterator it2 = ((ArrayList) c3259w.m2495h()).iterator();
        while (it2.hasNext()) {
            File file = (File) it2.next();
            if (!list.contains(file.getName()) && C3259w.m2499d(file, true) != m2504a) {
                C3259w.m2493j(file);
            }
        }
    }
}
