package com.google.android.gms.ads;

import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.zzym;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/a.class */
public class C1347a {

    /* renamed from: a */
    private final int f5440a;

    /* renamed from: b */
    private final String f5441b;

    /* renamed from: c */
    private final String f5442c;

    /* renamed from: d */
    private final C1347a f5443d;

    public C1347a(int i, @RecentlyNonNull String str, @RecentlyNonNull String str2) {
        this(i, str, str2, null);
    }

    public C1347a(int i, @RecentlyNonNull String str, @RecentlyNonNull String str2, C1347a aVar) {
        this.f5440a = i;
        this.f5441b = str;
        this.f5442c = str2;
        this.f5443d = aVar;
    }

    /* renamed from: a */
    public int m9062a() {
        return this.f5440a;
    }

    /* renamed from: b */
    public String m9061b() {
        return this.f5442c;
    }

    /* renamed from: c */
    public String m9060c() {
        return this.f5441b;
    }

    /* renamed from: d */
    public final zzym m9059d() {
        C1347a aVar = this.f5443d;
        return new zzym(this.f5440a, this.f5441b, this.f5442c, aVar == null ? null : new zzym(aVar.f5440a, aVar.f5441b, aVar.f5442c, (zzym) null, (IBinder) null), (IBinder) null);
    }

    @RecentlyNonNull
    /* renamed from: e */
    public JSONObject m9058e() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("Code", this.f5440a);
        jSONObject.put("Message", this.f5441b);
        jSONObject.put("Domain", this.f5442c);
        C1347a aVar = this.f5443d;
        jSONObject.put("Cause", aVar == null ? "null" : aVar.m9058e());
        return jSONObject;
    }

    @RecentlyNonNull
    public String toString() {
        String str;
        try {
            str = m9058e().toString(2);
        } catch (JSONException e) {
            str = "Error forming toString output.";
        }
        return str;
    }
}
