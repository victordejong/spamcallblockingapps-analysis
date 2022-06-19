package com.appnext.core.p018ra.database;

import android.content.Context;
import android.support.p001v4.media.session.MediaSessionCompat;
import p1727n3.p1751c0.AbstractC25677q;
/* renamed from: com.appnext.core.ra.database.RecentAppsDatabase */
/* loaded from: classes-dex2jar.jar:com/appnext/core/ra/database/RecentAppsDatabase.class */
public abstract class RecentAppsDatabase extends AbstractC25677q {
    private static final String DB_NAME = "RecentAppsDatabase_Impl.db";
    private static volatile RecentAppsDatabase instance;

    private static RecentAppsDatabase create(Context context) {
        return (RecentAppsDatabase) MediaSessionCompat.m43274R(context, RecentAppsDatabase.class, DB_NAME).m3064c();
    }

    public static RecentAppsDatabase getInstance(Context context) {
        RecentAppsDatabase recentAppsDatabase;
        synchronized (RecentAppsDatabase.class) {
            try {
                if (instance == null) {
                    instance = create(context);
                }
                recentAppsDatabase = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return recentAppsDatabase;
    }

    public abstract AbstractC0582b recentAppDao();
}
