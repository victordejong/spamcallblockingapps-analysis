package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.ConditionVariable;
import androidx.annotation.Nullable;
import java.util.concurrent.Callable;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p203i.p204a.p224e.p235d.C6799g;
@ParametersAreNonnullByDefault
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.b7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/b7.class */
public final class SharedPreferences$OnSharedPreferenceChangeListenerC7184b7 implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: f */
    public Context f17303f;

    /* renamed from: a */
    public final Object f17298a = new Object();

    /* renamed from: b */
    public final ConditionVariable f17299b = new ConditionVariable();

    /* renamed from: c */
    public volatile boolean f17300c = false;

    /* renamed from: d */
    public volatile boolean f17301d = false;
    @Nullable

    /* renamed from: e */
    public SharedPreferences f17302e = null;

    /* renamed from: g */
    public JSONObject f17304g = new JSONObject();

    /* renamed from: a */
    public final <T> T m20975a(AbstractC7409t6<T> t6Var) {
        if (!this.f17299b.block(5000L)) {
            synchronized (this.f17298a) {
                if (!this.f17301d) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.f17300c || this.f17302e == null) {
            synchronized (this.f17298a) {
                if (this.f17300c && this.f17302e != null) {
                }
                return t6Var.m20658c();
            }
        }
        return (t6Var.m20660b() != 1 || !this.f17304g.has(t6Var.m20667a())) ? (T) C7331n1.m20791a(this.f17303f, new CallableC7210d7(this, t6Var)) : t6Var.mo20472a(this.f17304g);
    }

    /* renamed from: a */
    public final void m20978a() {
        if (this.f17302e != null) {
            try {
                this.f17304g = new JSONObject((String) C7331n1.m20791a(this.f17303f, new Callable(this) { // from class: h.i.a.e.j.a.c7

                    /* renamed from: a */
                    public final SharedPreferences$OnSharedPreferenceChangeListenerC7184b7 f17312a;

                    {
                        this.f17312a = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f17312a.m20974b();
                    }
                }));
            } catch (JSONException e) {
            }
        }
    }

    /* renamed from: a */
    public final void m20977a(Context context) {
        if (!this.f17300c) {
            synchronized (this.f17298a) {
                if (!this.f17300c) {
                    if (!this.f17301d) {
                        this.f17301d = true;
                    }
                    this.f17303f = context.getApplicationContext() == null ? context : context.getApplicationContext();
                    Context remoteContext = C6799g.getRemoteContext(context);
                    Context context2 = remoteContext;
                    if (remoteContext == null) {
                        context2 = remoteContext;
                        if (context != null) {
                            Context applicationContext = context.getApplicationContext();
                            context2 = applicationContext;
                            if (applicationContext == null) {
                                context2 = context;
                            }
                        }
                    }
                    if (context2 == null) {
                        this.f17301d = false;
                        this.f17299b.open();
                        return;
                    }
                    C7430v3.m20638c();
                    this.f17302e = context2.getSharedPreferences("google_ads_flags", 0);
                    if (this.f17302e != null) {
                        this.f17302e.registerOnSharedPreferenceChangeListener(this);
                    }
                    m20978a();
                    this.f17300c = true;
                    this.f17301d = false;
                    this.f17299b.open();
                }
            }
        }
    }

    /* renamed from: b */
    public final /* synthetic */ String m20974b() throws Exception {
        return this.f17302e.getString("flag_configuration", "{}");
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            m20978a();
        }
    }
}
