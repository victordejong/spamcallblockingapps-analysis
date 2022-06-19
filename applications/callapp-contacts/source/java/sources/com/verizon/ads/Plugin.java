package com.verizon.ads;

import android.content.Context;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/Plugin.class */
public abstract class Plugin {

    /* renamed from: a */
    static final Logger f61208a = Logger.getInstance(Plugin.class);

    /* renamed from: b */
    final String f61209b;

    /* renamed from: c */
    final String f61210c;

    /* renamed from: d */
    final String f61211d;

    /* renamed from: e */
    final URI f61212e;

    /* renamed from: f */
    final URL f61213f;

    /* renamed from: g */
    final int f61214g;

    /* renamed from: h */
    final Context f61215h;

    /* renamed from: id */
    public final String f61216id;

    public Plugin(Context context, String str, String str2, String str3, String str4, URI uri, URL url, int i) {
        this.f61215h = context;
        this.f61216id = str;
        this.f61209b = str2;
        this.f61210c = str3;
        this.f61211d = str4;
        this.f61212e = uri;
        this.f61213f = url;
        this.f61214g = i;
    }

    /* renamed from: a */
    public final void m5557a(Class cls, Class<? extends AdAdapter> cls2, ContentFilter contentFilter) {
        VASAds.m5542a(this.f61216id, cls, cls2, contentFilter);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Plugin) {
            return this.f61216id.equals(((Plugin) obj).f61216id);
        }
        return false;
    }

    public Context getApplicationContext() {
        return this.f61215h;
    }

    public String getAuthor() {
        return this.f61211d;
    }

    public URI getEmail() {
        return this.f61212e;
    }

    public String getId() {
        return this.f61216id;
    }

    public int getMinApiLevel() {
        return this.f61214g;
    }

    public String getName() {
        return this.f61209b;
    }

    public String getVersion() {
        return this.f61210c;
    }

    public URL getWebsite() {
        return this.f61213f;
    }

    public int hashCode() {
        return this.f61216id.hashCode();
    }

    public abstract void onPluginDisabled();

    public abstract void onPluginEnabled();

    public abstract boolean prepare();

    public String toString() {
        return "Plugin{id='" + this.f61216id + "', name='" + this.f61209b + "', version='" + this.f61210c + "', author='" + this.f61211d + "', email='" + this.f61212e + "', website='" + this.f61213f + "', minApiLevel=" + this.f61214g + ", applicationContext ='" + this.f61215h + "'}";
    }
}
