package p459j.p460a.p521j0;

import android.telecom.Call;
import android.telecom.CallAudioState;
import android.util.SparseBooleanArray;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import p459j.p460a.p521j0.p522u.p523d.C12617h0;
/* renamed from: j.a.j0.c */
/* loaded from: classes3-dex2jar.jar:j/a/j0/c.class */
public class C12492c {

    /* renamed from: a */
    public CallAudioState f28173a;

    /* renamed from: b */
    public List<Call> f28174b;

    /* renamed from: e */
    public Call f28177e;

    /* renamed from: f */
    public C12617h0 f28178f;

    /* renamed from: c */
    public List<Call> f28175c = new ArrayList();

    /* renamed from: d */
    public HashMap<Call, C12493a> f28176d = new HashMap<>();

    /* renamed from: g */
    public boolean f28179g = true;

    /* renamed from: h */
    public boolean f28180h = true;

    /* renamed from: i */
    public boolean f28181i = true;

    /* renamed from: j */
    public SparseBooleanArray f28182j = new SparseBooleanArray();

    /* renamed from: j.a.j0.c$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/c$a.class */
    public static class C12493a {

        /* renamed from: a */
        public String f28183a;

        /* renamed from: b */
        public String f28184b;

        /* renamed from: c */
        public boolean f28185c;

        /* renamed from: d */
        public long f28186d = -1;

        /* renamed from: e */
        public boolean f28187e = false;

        /* renamed from: a */
        public long m5988a() {
            return this.f28186d;
        }

        /* renamed from: a */
        public void m5987a(long j) {
            this.f28186d = j;
        }

        /* renamed from: a */
        public void m5986a(String str) {
            this.f28184b = str;
        }

        /* renamed from: a */
        public void m5985a(boolean z) {
            this.f28187e = z;
        }

        /* renamed from: b */
        public String m5984b() {
            return this.f28184b;
        }

        /* renamed from: b */
        public void m5983b(String str) {
            this.f28183a = str;
        }

        /* renamed from: b */
        public void m5982b(boolean z) {
            this.f28185c = z;
        }

        /* renamed from: c */
        public String m5981c() {
            return this.f28183a;
        }

        /* renamed from: d */
        public boolean m5980d() {
            return this.f28187e;
        }

        /* renamed from: e */
        public boolean m5979e() {
            return this.f28185c;
        }
    }

    /* renamed from: j.a.j0.c$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/c$b.class */
    public enum EnumC12494b {
        SPEAKER
    }

    /* renamed from: a */
    public void m6007a(Call call) {
        this.f28175c.add(call);
        this.f28176d.put(call, new C12493a());
    }

    /* renamed from: a */
    public void m6006a(CallAudioState callAudioState) {
        this.f28173a = callAudioState;
    }

    /* renamed from: a */
    public void m6004a(EnumC12494b bVar, boolean z) {
        this.f28182j.put(bVar.ordinal(), z);
    }

    /* renamed from: a */
    public void m6003a(C12617h0 h0Var) {
        this.f28178f = h0Var;
    }

    /* renamed from: a */
    public void m6002a(List<Call> list) {
        this.f28174b = list;
    }

    /* renamed from: a */
    public void m6001a(boolean z) {
        this.f28179g = z;
    }

    /* renamed from: a */
    public boolean m6008a() {
        return this.f28179g;
    }

    /* renamed from: a */
    public boolean m6005a(EnumC12494b bVar) {
        return this.f28182j.get(bVar.ordinal(), false);
    }

    /* renamed from: b */
    public C12493a m5999b(Call call) {
        return this.f28176d.get(call);
    }

    /* renamed from: b */
    public void m5998b(boolean z) {
        this.f28180h = z;
    }

    /* renamed from: b */
    public boolean m6000b() {
        return this.f28180h;
    }

    /* renamed from: c */
    public C12493a m5996c(Call call) {
        this.f28175c.remove(call);
        return this.f28176d.remove(call);
    }

    /* renamed from: c */
    public void m5995c(boolean z) {
        this.f28181i = z;
    }

    /* renamed from: c */
    public boolean m5997c() {
        return this.f28181i;
    }

    /* renamed from: d */
    public CallAudioState m5994d() {
        return this.f28173a;
    }

    /* renamed from: d */
    public void m5993d(Call call) {
        this.f28177e = call;
    }

    /* renamed from: e */
    public List<Call> m5992e() {
        return this.f28175c;
    }

    /* renamed from: f */
    public List<Call> m5991f() {
        return this.f28174b;
    }

    /* renamed from: g */
    public C12617h0 m5990g() {
        return this.f28178f;
    }

    /* renamed from: h */
    public Call m5989h() {
        return this.f28177e;
    }
}
