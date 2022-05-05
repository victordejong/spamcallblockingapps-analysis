package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.content.SharedPreferences;
/* renamed from: j.a.c0.h.l */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/l.class */
public abstract class AbstractC12180l extends AbstractC12178k {

    /* renamed from: a */
    public final Context f27333a;

    public AbstractC12180l(Context context) {
        this.f27333a = context;
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12178k
    /* renamed from: a */
    public int mo6909a(String str, int i) {
        mo6861b(str);
        return this.f27333a.getSharedPreferences(mo6865a(), 0).getInt(str, i);
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12178k
    /* renamed from: a */
    public long mo6908a(String str, long j) {
        mo6861b(str);
        return this.f27333a.getSharedPreferences(mo6865a(), 0).getLong(str, j);
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12178k
    /* renamed from: a */
    public String mo6907a(String str, String str2) {
        mo6861b(str);
        return this.f27333a.getSharedPreferences(mo6865a(), 0).getString(str, str2);
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12178k
    /* renamed from: a */
    public boolean mo6910a(String str) {
        mo6861b(str);
        return this.f27333a.getSharedPreferences(mo6865a(), 0).contains(str);
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12178k
    /* renamed from: a */
    public boolean mo6906a(String str, boolean z) {
        mo6861b(str);
        return this.f27333a.getSharedPreferences(mo6865a(), 0).getBoolean(str, z);
    }

    /* renamed from: b */
    public void mo6861b(String str) {
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12178k
    /* renamed from: b */
    public void mo6905b(String str, int i) {
        mo6861b(str);
        SharedPreferences.Editor edit = this.f27333a.getSharedPreferences(mo6865a(), 0).edit();
        edit.putInt(str, i);
        edit.apply();
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12178k
    /* renamed from: b */
    public void mo6904b(String str, long j) {
        mo6861b(str);
        SharedPreferences.Editor edit = this.f27333a.getSharedPreferences(mo6865a(), 0).edit();
        edit.putLong(str, j);
        edit.apply();
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12178k
    /* renamed from: b */
    public void mo6903b(String str, String str2) {
        mo6861b(str);
        SharedPreferences.Editor edit = this.f27333a.getSharedPreferences(mo6865a(), 0).edit();
        edit.putString(str, str2);
        edit.apply();
    }

    @Override // p459j.p460a.p474c0.p499h.AbstractC12178k
    /* renamed from: b */
    public void mo6902b(String str, boolean z) {
        mo6861b(str);
        SharedPreferences.Editor edit = this.f27333a.getSharedPreferences(mo6865a(), 0).edit();
        edit.putBoolean(str, z);
        edit.apply();
    }
}
