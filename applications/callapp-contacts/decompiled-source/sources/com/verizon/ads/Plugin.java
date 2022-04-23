package com.verizon.ads;

import android.content.Context;
import java.net.URI;
import java.net.URL;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/Plugin.class */
public abstract class Plugin {

    /* renamed from: a  reason: collision with root package name */
    static final Logger f35315a = Logger.getInstance(Plugin.class);

    /* renamed from: b  reason: collision with root package name */
    final String f35316b;

    /* renamed from: c  reason: collision with root package name */
    final String f35317c;

    /* renamed from: d  reason: collision with root package name */
    final String f35318d;
    final URI e;
    final URL f;
    final int g;
    final Context h;
    public final String id;

    public Plugin(Context context, String str, String str2, String str3, String str4, URI uri, URL url, int i) {
        this.h = context;
        this.id = str;
        this.f35316b = str2;
        this.f35317c = str3;
        this.f35318d = str4;
        this.e = uri;
        this.f = url;
        this.g = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(Class cls, Class<? extends AdAdapter> cls2, ContentFilter contentFilter) {
        VASAds.a(this.id, cls, cls2, contentFilter);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Plugin)) {
            return false;
        }
        return this.id.equals(((Plugin) obj).id);
    }

    public Context getApplicationContext() {
        return this.h;
    }

    public String getAuthor() {
        return this.f35318d;
    }

    public URI getEmail() {
        return this.e;
    }

    public String getId() {
        return this.id;
    }

    public int getMinApiLevel() {
        return this.g;
    }

    public String getName() {
        return this.f35316b;
    }

    public String getVersion() {
        return this.f35317c;
    }

    public URL getWebsite() {
        return this.f;
    }

    public int hashCode() {
        return this.id.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onPluginDisabled();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void onPluginEnabled();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean prepare();

    public String toString() {
        return "Plugin{id='" + this.id + "', name='" + this.f35316b + "', version='" + this.f35317c + "', author='" + this.f35318d + "', email='" + this.e + "', website='" + this.f + "', minApiLevel=" + this.g + ", applicationContext ='" + this.h + "'}";
    }
}
