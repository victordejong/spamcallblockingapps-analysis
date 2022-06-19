package com.airbnb.deeplinkdispatch;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.util.List;
import java.util.Objects;
import p1727n3.p1872x.p1873a.C27062a;
/* loaded from: classes-dex2jar.jar:com/airbnb/deeplinkdispatch/BaseDeepLinkDelegate.class */
public class BaseDeepLinkDelegate {
    public static final String TAG = "DeepLinkDelegate";
    public final List<? extends Parser> loaders;

    public BaseDeepLinkDelegate(List<? extends Parser> list) {
        this.loaders = list;
    }

    private static DeepLinkResult createResultAndNotify(Context context, boolean z, Uri uri, String str, String str2) {
        notifyListener(context, !z, uri, str, str2);
        return new DeepLinkResult(z, uri != null ? uri.toString() : null, str2);
    }

    private DeepLinkEntry findEntry(String str) {
        for (Parser parser : this.loaders) {
            DeepLinkEntry parseUri = parser.parseUri(str);
            if (parseUri != null) {
                return parseUri;
            }
        }
        return null;
    }

    private static void notifyListener(Context context, boolean z, Uri uri, String str, String str2) {
        Intent intent = new Intent();
        intent.setAction(DeepLinkHandler.ACTION);
        intent.putExtra(DeepLinkHandler.EXTRA_URI, uri != null ? uri.toString() : "");
        if (str == null) {
            str = "";
        }
        intent.putExtra(DeepLinkHandler.EXTRA_URI_TEMPLATE, str);
        intent.putExtra(DeepLinkHandler.EXTRA_SUCCESSFUL, !z);
        if (z) {
            intent.putExtra(DeepLinkHandler.EXTRA_ERROR_MESSAGE, str2);
        }
        C27062a.m968b(context).m966d(intent);
    }

    public DeepLinkResult dispatchFrom(Activity activity) {
        Objects.requireNonNull(activity, "activity == null");
        return dispatchFrom(activity, activity.getIntent());
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x02b3 A[Catch: InvocationTargetException -> 0x031d, IllegalAccessException -> 0x0343, NoSuchMethodException -> 0x0369, TryCatch #0 {NoSuchMethodException -> 0x0369, blocks: (B:23:0x0117, B:25:0x0129, B:41:0x01f4, B:43:0x021b, B:45:0x023c, B:48:0x0276, B:49:0x028f, B:50:0x02ab, B:52:0x02b3, B:54:0x02bf, B:56:0x02c5, B:58:0x02d1, B:60:0x02f2, B:63:0x0300, B:64:0x0308, B:66:0x030f), top: B:81:0x0117 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02c5 A[Catch: InvocationTargetException -> 0x031d, IllegalAccessException -> 0x0343, NoSuchMethodException -> 0x0369, TryCatch #0 {NoSuchMethodException -> 0x0369, blocks: (B:23:0x0117, B:25:0x0129, B:41:0x01f4, B:43:0x021b, B:45:0x023c, B:48:0x0276, B:49:0x028f, B:50:0x02ab, B:52:0x02b3, B:54:0x02bf, B:56:0x02c5, B:58:0x02d1, B:60:0x02f2, B:63:0x0300, B:64:0x0308, B:66:0x030f), top: B:81:0x0117 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02f2 A[Catch: InvocationTargetException -> 0x031d, IllegalAccessException -> 0x0343, NoSuchMethodException -> 0x0369, TryCatch #0 {NoSuchMethodException -> 0x0369, blocks: (B:23:0x0117, B:25:0x0129, B:41:0x01f4, B:43:0x021b, B:45:0x023c, B:48:0x0276, B:49:0x028f, B:50:0x02ab, B:52:0x02b3, B:54:0x02bf, B:56:0x02c5, B:58:0x02d1, B:60:0x02f2, B:63:0x0300, B:64:0x0308, B:66:0x030f), top: B:81:0x0117 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0300 A[Catch: InvocationTargetException -> 0x031d, IllegalAccessException -> 0x0343, NoSuchMethodException -> 0x0369, TRY_ENTER, TRY_LEAVE, TryCatch #0 {NoSuchMethodException -> 0x0369, blocks: (B:23:0x0117, B:25:0x0129, B:41:0x01f4, B:43:0x021b, B:45:0x023c, B:48:0x0276, B:49:0x028f, B:50:0x02ab, B:52:0x02b3, B:54:0x02bf, B:56:0x02c5, B:58:0x02d1, B:60:0x02f2, B:63:0x0300, B:64:0x0308, B:66:0x030f), top: B:81:0x0117 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0308 A[Catch: InvocationTargetException -> 0x031d, IllegalAccessException -> 0x0343, NoSuchMethodException -> 0x0369, TRY_ENTER, TryCatch #0 {NoSuchMethodException -> 0x0369, blocks: (B:23:0x0117, B:25:0x0129, B:41:0x01f4, B:43:0x021b, B:45:0x023c, B:48:0x0276, B:49:0x028f, B:50:0x02ab, B:52:0x02b3, B:54:0x02bf, B:56:0x02c5, B:58:0x02d1, B:60:0x02f2, B:63:0x0300, B:64:0x0308, B:66:0x030f), top: B:81:0x0117 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.airbnb.deeplinkdispatch.DeepLinkResult dispatchFrom(android.app.Activity r8, android.content.Intent r9) {
        /*
            Method dump skipped, instructions count: 949
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.deeplinkdispatch.BaseDeepLinkDelegate.dispatchFrom(android.app.Activity, android.content.Intent):com.airbnb.deeplinkdispatch.DeepLinkResult");
    }

    public boolean supportsUri(String str) {
        return findEntry(str) != null;
    }
}
