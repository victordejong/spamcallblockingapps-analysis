package com.privacystar.core.util;

import io.realm.RealmObject;
import io.realm.internal.ManagableObject;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/RealmUtil.class */
public class RealmUtil {
    public static boolean isSafe(RealmObject realmObject) {
        boolean z;
        try {
            realmObject.isLoaded();
            z = realmObject.isValid();
        } catch (IllegalStateException e) {
            Timber.m35d(e, "RealmObject not safe for use.", new Object[0]);
            z = false;
        }
        return z;
    }

    public static boolean isSafe(ManagableObject managableObject) {
        boolean z = false;
        try {
            if (managableObject.isManaged()) {
                z = false;
                if (managableObject.isValid()) {
                    z = true;
                }
            }
        } catch (IllegalStateException e) {
            Timber.m35d(e, "RealmObject not safe for use.", new Object[0]);
            z = false;
        }
        return z;
    }
}
