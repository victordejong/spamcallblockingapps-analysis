package com.telguarder.helpers.backend;

import android.content.Context;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.Volley;
import com.telguarder.ApplicationObject;
import com.telguarder.helpers.log.Logger;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/backend/VolleyHelper.class */
public class VolleyHelper {
    private static RequestQueue mRequestQueue;

    private VolleyHelper() {
    }

    public static RequestQueue getRequestQueue() {
        if (mRequestQueue == null && ApplicationObject.getContext() != null) {
            mRequestQueue = Volley.newRequestQueue(ApplicationObject.getContext());
        }
        if (mRequestQueue == null) {
            Logger.error("RequestQueue is not initialized!");
        }
        return mRequestQueue;
    }

    public static void initWithContext(Context context) {
        mRequestQueue = Volley.newRequestQueue(context);
    }
}
