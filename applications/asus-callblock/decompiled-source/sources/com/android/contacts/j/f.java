package com.android.contacts.j;

import android.os.Handler;
import com.android.contacts.dialpad.ResultListFragment;
import com.android.contacts.j.b;
import com.asus.updatesdk.BuildConfig;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public c f1524a;

    /* renamed from: b  reason: collision with root package name */
    public c f1525b;
    public m c;
    public List<a> f;
    public b g;
    public Handler i;
    public ResultListFragment j;
    public g l;
    private final String m = "SmartDialUnbundle";
    public String d = BuildConfig.FLAVOR;
    public d e = null;
    public boolean h = false;
    public Long k = Long.MAX_VALUE;

    public final b.a a(int i) {
        return (this.g == null || this.g.f1510a == null) ? null : this.g.f1510a.get(i);
    }

    public final void a() {
        if (!this.h) {
            l.a();
            if (this.c != null) {
                if (!this.c.f1558b) {
                    this.c = null;
                } else {
                    return;
                }
            }
            this.f1525b.a();
            this.c = new m(this);
            this.c.start();
        }
    }

    public final void a(i iVar) {
        if (this.f1525b != null) {
            this.f1525b.a(iVar);
        }
    }

    public final void a(String str, boolean z) {
        if (!this.h) {
            this.k = Long.valueOf(System.currentTimeMillis());
            this.d = str;
            if (this.e == null) {
                this.e = new d(this, this.i);
                this.e.start();
            }
            this.e.a(this.d, z);
        }
    }

    public final void a(boolean z) {
        if (this.l != null) {
            this.l.i = z;
        }
    }

    public final void b() {
        a(this.d, false);
    }

    public final int c() {
        int i = 0;
        if (this.g != null) {
            b bVar = this.g;
            i = 0;
            if (bVar.f1510a != null) {
                i = bVar.f1510a.size();
            }
        }
        return i;
    }

    public final long d() {
        return this.f1525b != null ? this.f1525b.e : 0L;
    }
}
