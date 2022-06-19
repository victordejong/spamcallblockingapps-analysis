package com.appnext.core.p018ra.database;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.appnext.core.ra.database.a */
/* loaded from: classes-dex2jar.jar:com/appnext/core/ra/database/a.class */
public final class C0581a {

    /* renamed from: eQ */
    public String f1876eQ;

    /* renamed from: eR */
    public String f1877eR;

    /* renamed from: eS */
    public boolean f1878eS = false;

    public final String toString() {
        StringBuilder sb = new StringBuilder("RecentApp{recentAppPackage='");
        C22128a.m8678P0(sb, this.f1876eQ, '\'', ", storeDate='");
        C22128a.m8678P0(sb, this.f1877eR, '\'', ", sent=");
        return C22128a.m8598m(sb, this.f1878eS, '}');
    }
}
