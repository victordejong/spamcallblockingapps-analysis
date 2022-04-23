package p131c.p431l.p432a.p468n;

import android.content.Context;
import android.content.SharedPreferences;
/* renamed from: c.l.a.n.j */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/j.class */
public class C6851j<T> {

    /* renamed from: a */
    public SharedPreferences f21045a;

    public C6851j(Context context, String str) {
        this.f21045a = context.getSharedPreferences(str, 0);
    }

    /* renamed from: a */
    public int m19574a(T t) {
        return m19573a((C6851j<T>) t, 0);
    }

    /* renamed from: a */
    public int m19573a(T t, int i) {
        return this.f21045a.getInt(t.toString(), i);
    }

    /* renamed from: a */
    public int m19569a(String str, int i) {
        return this.f21045a.getInt(str, i);
    }

    /* renamed from: a */
    public long m19572a(T t, long j) {
        return this.f21045a.getLong(t.toString(), j);
    }

    /* renamed from: a */
    public Boolean m19571a(T t, Boolean bool) {
        return Boolean.valueOf(this.f21045a.getBoolean(t.toString(), bool.booleanValue()));
    }

    /* renamed from: a */
    public String m19570a(T t, String str) {
        return this.f21045a.getString(t.toString(), str);
    }

    /* renamed from: b */
    public void m19568b(T t, int i) {
        SharedPreferences.Editor edit = this.f21045a.edit();
        edit.putInt(t.toString(), i);
        edit.apply();
    }

    /* renamed from: b */
    public void m19567b(T t, long j) {
        SharedPreferences.Editor edit = this.f21045a.edit();
        edit.putLong(t.toString(), j);
        edit.apply();
    }

    /* renamed from: b */
    public void m19566b(T t, Boolean bool) {
        SharedPreferences.Editor edit = this.f21045a.edit();
        edit.putBoolean(t.toString(), bool.booleanValue());
        edit.apply();
    }

    /* renamed from: b */
    public void m19565b(String str, int i) {
        SharedPreferences.Editor edit = this.f21045a.edit();
        edit.putInt(str, i);
        edit.apply();
    }
}
