package com.adbert.p009a;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
/* renamed from: com.adbert.a.c */
/* loaded from: classes-dex2jar.jar:com/adbert/a/c.class */
public class C1379c {

    /* renamed from: a */
    public AbstractC1380a f452a;

    /* renamed from: b */
    public Context f453b;

    /* renamed from: c */
    public LocationManager f454c;

    /* renamed from: d */
    public boolean f455d;

    /* renamed from: e */
    public boolean f456e;

    /* renamed from: f */
    public boolean f457f;

    /* renamed from: g */
    public final int f458g = 1000;

    /* renamed from: h */
    public final int f459h = 1;

    /* renamed from: i */
    public Location f460i;

    /* renamed from: j */
    public Double f461j;

    /* renamed from: k */
    public Double f462k;

    /* renamed from: com.adbert.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/a/c$a.class */
    public interface AbstractC1380a {
        /* renamed from: a */
        void mo37195a();

        /* renamed from: a */
        void mo37194a(double d, double d2);
    }

    public C1379c(Context context, AbstractC1380a aVar) {
        this.f453b = context;
        this.f452a = aVar;
        if (m37197a()) {
            aVar.mo37194a(this.f461j.doubleValue(), this.f462k.doubleValue());
        } else {
            aVar.mo37195a();
        }
    }

    /* renamed from: a */
    private boolean m37197a() {
        try {
            this.f454c = (LocationManager) this.f453b.getSystemService("location");
            try {
                this.f455d = this.f454c.isProviderEnabled("gps");
            } catch (Exception e) {
                C1402g.m37141a(e);
            }
            try {
                this.f456e = this.f454c.isProviderEnabled("network");
            } catch (Exception e2) {
                C1402g.m37141a(e2);
            }
            if (!this.f455d && !this.f456e) {
                return false;
            }
            this.f457f = true;
            if (this.f456e && this.f454c != null) {
                this.f460i = this.f454c.getLastKnownLocation("network");
                if (this.f460i != null) {
                    this.f461j = Double.valueOf(this.f460i.getLatitude());
                    this.f462k = Double.valueOf(this.f460i.getLongitude());
                    return true;
                }
            }
            if (!this.f455d || this.f460i != null || this.f454c == null) {
                return false;
            }
            this.f460i = this.f454c.getLastKnownLocation("gps");
            if (this.f460i == null) {
                return false;
            }
            this.f461j = Double.valueOf(this.f460i.getLatitude());
            this.f462k = Double.valueOf(this.f460i.getLongitude());
            return true;
        } catch (Exception e3) {
            C1402g.m37141a(e3);
            return false;
        }
    }
}
