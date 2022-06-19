package com.iab.omid.library.mopub.adsession;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.provider.Settings;
import android.view.View;
import com.iab.omid.library.mopub.p428a.C16343d;
import com.iab.omid.library.mopub.p430b.C16362a;
import com.iab.omid.library.mopub.p430b.C16363b;
import com.iab.omid.library.mopub.p430b.C16366c;
import com.iab.omid.library.mopub.p430b.C16368e;
import com.iab.omid.library.mopub.p430b.C16370f;
import com.iab.omid.library.mopub.p432d.C16382d;
import com.iab.omid.library.mopub.p433e.C16384a;
import com.iab.omid.library.mopub.p434f.AbstractC16386a;
import com.iab.omid.library.mopub.p434f.C16388b;
import com.iab.omid.library.mopub.p434f.C16389c;
import com.iab.omid.library.mopub.p435g.C16391a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;
/* renamed from: com.iab.omid.library.mopub.adsession.k */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/adsession/k.class */
public final class C16360k extends AbstractC16351b {

    /* renamed from: i */
    private static final Pattern f57781i = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: a */
    public final AdSessionConfiguration f57782a;

    /* renamed from: c */
    public AbstractC16386a f57784c;

    /* renamed from: g */
    public boolean f57788g;

    /* renamed from: h */
    public boolean f57789h;

    /* renamed from: j */
    private final C16352c f57790j;

    /* renamed from: k */
    private C16384a f57791k;

    /* renamed from: b */
    public final List<C16366c> f57783b = new ArrayList();

    /* renamed from: d */
    public boolean f57785d = false;

    /* renamed from: e */
    public boolean f57786e = false;

    /* renamed from: f */
    public String f57787f = UUID.randomUUID().toString();

    public C16360k(AdSessionConfiguration adSessionConfiguration, C16352c c16352c) {
        this.f57782a = adSessionConfiguration;
        this.f57790j = c16352c;
        m7368c(null);
        if (c16352c.f57775h == EnumC16353d.HTML || c16352c.f57775h == EnumC16353d.JAVASCRIPT) {
            this.f57784c = new C16388b(c16352c.f57769b);
        } else {
            this.f57784c = new C16389c(Collections.unmodifiableMap(c16352c.f57771d), c16352c.f57772e);
        }
        this.f57784c.mo7309a();
        C16362a.m7365a().f57794a.add(this);
        C16368e.m7358a().m7353a(this.f57784c.m7311c(), "init", adSessionConfiguration.toJsonObject());
    }

    /* renamed from: b */
    private C16366c m7370b(View view) {
        for (C16366c c16366c : this.f57783b) {
            if (c16366c.f57803a.get() == view) {
                return c16366c;
            }
        }
        return null;
    }

    /* renamed from: c */
    private void m7368c(View view) {
        this.f57791k = new C16384a(view);
    }

    @Override // com.iab.omid.library.mopub.adsession.AbstractC16351b
    /* renamed from: a */
    public final void mo7374a() {
        if (this.f57785d) {
            return;
        }
        this.f57785d = true;
        C16362a m7365a = C16362a.m7365a();
        boolean m7364b = m7365a.m7364b();
        m7365a.f57795b.add(this);
        if (!m7364b) {
            C16370f m7349a = C16370f.m7349a();
            C16363b.m7363a().f57801e = m7349a;
            final C16363b m7363a = C16363b.m7363a();
            m7363a.f57798b = new BroadcastReceiver() { // from class: com.iab.omid.library.mopub.b.b.1
                @Override // android.content.BroadcastReceiver
                public final void onReceive(Context context, Intent intent) {
                    KeyguardManager keyguardManager;
                    if (intent == null) {
                        return;
                    }
                    if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                        C16363b.m7362a(C16363b.this, true);
                    } else if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                        C16363b.m7362a(C16363b.this, false);
                    } else if (!"android.intent.action.SCREEN_ON".equals(intent.getAction()) || (keyguardManager = (KeyguardManager) context.getSystemService("keyguard")) == null || keyguardManager.inKeyguardRestrictedInputMode()) {
                    } else {
                        C16363b.m7362a(C16363b.this, false);
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            m7363a.f57797a.registerReceiver(m7363a.f57798b, intentFilter);
            m7363a.f57799c = true;
            m7363a.m7360c();
            if (C16363b.m7363a().m7361b()) {
                C16391a.m7306a();
                C16391a.m7301b();
            }
            C16343d c16343d = m7349a.f57815b;
            c16343d.f57758b = c16343d.m7382a();
            c16343d.m7381b();
            c16343d.f57757a.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, c16343d);
        }
        this.f57784c.m7316a(C16370f.m7349a().f57814a);
        this.f57784c.mo7308a(this, this.f57790j);
    }

    @Override // com.iab.omid.library.mopub.adsession.AbstractC16351b
    /* renamed from: a */
    public final void mo7373a(View view) {
        if (this.f57786e) {
            return;
        }
        C16382d.m7325a(view, "AdView is null");
        if (m7367d() == view) {
            return;
        }
        m7368c(view);
        this.f57784c.m7310d();
        Collection<C16360k> unmodifiableCollection = Collections.unmodifiableCollection(C16362a.m7365a().f57794a);
        if (unmodifiableCollection == null || unmodifiableCollection.size() <= 0) {
            return;
        }
        for (C16360k c16360k : unmodifiableCollection) {
            if (c16360k != this && c16360k.m7367d() == view) {
                c16360k.f57791k.clear();
            }
        }
    }

    @Override // com.iab.omid.library.mopub.adsession.AbstractC16351b
    /* renamed from: a */
    public final void mo7372a(View view, EnumC16355f enumC16355f, String str) {
        if (this.f57786e) {
            return;
        }
        if (view == null) {
            throw new IllegalArgumentException("FriendlyObstruction is null");
        }
        if (str.length() > 50 || !f57781i.matcher(str).matches()) {
            throw new IllegalArgumentException("FriendlyObstruction has improperly formatted detailed reason");
        }
        if (m7370b(view) != null) {
            return;
        }
        this.f57783b.add(new C16366c(view, enumC16355f, str));
    }

    @Override // com.iab.omid.library.mopub.adsession.AbstractC16351b
    /* renamed from: b */
    public final void mo7371b() {
        if (this.f57786e) {
            return;
        }
        this.f57791k.clear();
        if (!this.f57786e) {
            this.f57783b.clear();
        }
        this.f57786e = true;
        C16368e.m7358a().m7353a(this.f57784c.m7311c(), "finishSession", new Object[0]);
        C16362a m7365a = C16362a.m7365a();
        boolean m7364b = m7365a.m7364b();
        m7365a.f57794a.remove(this);
        m7365a.f57795b.remove(this);
        if (m7364b && !m7365a.m7364b()) {
            C16370f m7349a = C16370f.m7349a();
            final C16391a m7306a = C16391a.m7306a();
            C16391a.m7299c();
            m7306a.f57856b.clear();
            C16391a.f57851a.post(new Runnable() { // from class: com.iab.omid.library.mopub.g.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    C16391a.this.f57860h.m7286b();
                }
            });
            C16363b m7363a = C16363b.m7363a();
            if (m7363a.f57797a != null && m7363a.f57798b != null) {
                m7363a.f57797a.unregisterReceiver(m7363a.f57798b);
                m7363a.f57798b = null;
            }
            m7363a.f57799c = false;
            m7363a.f57800d = false;
            m7363a.f57801e = null;
            C16343d c16343d = m7349a.f57815b;
            c16343d.f57757a.getContentResolver().unregisterContentObserver(c16343d);
        }
        this.f57784c.mo7307b();
        this.f57784c = null;
    }

    /* renamed from: c */
    public final void m7369c() {
        if (!this.f57789h) {
            return;
        }
        throw new IllegalStateException("Loaded event can only be sent once");
    }

    /* renamed from: d */
    public final View m7367d() {
        return (View) this.f57791k.get();
    }

    /* renamed from: e */
    public final boolean m7366e() {
        return this.f57785d && !this.f57786e;
    }
}
