package com.facebook.bolts;

import android.net.Uri;
/* loaded from: classes-dex2jar.jar:com/facebook/bolts/AppLinkResolver.class */
public interface AppLinkResolver {
    Task<AppLink> getAppLinkFromUrlInBackground(Uri uri);
}
