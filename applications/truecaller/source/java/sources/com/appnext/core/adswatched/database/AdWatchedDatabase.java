package com.appnext.core.adswatched.database;

import android.content.Context;
import android.support.p001v4.media.session.MediaSessionCompat;
import p1727n3.p1751c0.AbstractC25677q;
/* loaded from: classes-dex2jar.jar:com/appnext/core/adswatched/database/AdWatchedDatabase.class */
public abstract class AdWatchedDatabase extends AbstractC25677q {
    private static final String DB_NAME = "AdWatchDatabase_Impl.db";
    private static volatile AdWatchedDatabase instance;

    private static AdWatchedDatabase create(Context context) {
        return (AdWatchedDatabase) MediaSessionCompat.m43274R(context, AdWatchedDatabase.class, DB_NAME).m3064c();
    }

    public static AdWatchedDatabase getInstance(Context context) {
        AdWatchedDatabase adWatchedDatabase;
        synchronized (AdWatchedDatabase.class) {
            try {
                if (instance == null) {
                    instance = create(context);
                }
                adWatchedDatabase = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return adWatchedDatabase;
    }

    public abstract AbstractC0525a adWatchedDao();
}
