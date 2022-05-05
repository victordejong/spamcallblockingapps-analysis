package com.firstorion.libcyd;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;
import java.util.UUID;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/RefreshApiKeyHandler.class */
public final class RefreshApiKeyHandler {
    private static final String CYD_REFRESH_KEY_ACTION = "cyd:refreshkey";

    private RefreshApiKeyHandler() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void addFilters(IntentFilter intentFilter) {
        intentFilter.addAction(CYD_REFRESH_KEY_ACTION);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void broadcastRefreshApiKey(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        Context applicationContext = context.getApplicationContext();
        CYDApplication instance = CYDApplication.getInstance();
        Intent intent = new Intent();
        intent.setAction(CYD_REFRESH_KEY_ACTION);
        instance.sendLocalBroadcast(applicationContext, intent);
    }

    private static void doRefreshApiKey(final Context context) {
        final String uuid = UUID.randomUUID().toString();
        Log.d("libcyd.app", "Refreshing api key.");
        final CYDApplication instance = CYDApplication.getInstance();
        instance.getTelemetryHost().putTelemetryEvent(new TelemetryEvent(uuid, null, 60, 1));
        Globals.THREAD_POOL.execute(new Runnable() { // from class: com.firstorion.libcyd.RefreshApiKeyHandler.1
            /* JADX WARN: Code restructure failed: missing block: B:104:0x01df, code lost:
                if (r13 == null) goto L_0x01e6;
             */
            /* JADX WARN: Code restructure failed: missing block: B:105:0x01e2, code lost:
                r13.disconnect();
             */
            /* JADX WARN: Code restructure failed: missing block: B:106:0x01e6, code lost:
                r4.getTelemetryHost().uploadTelemetry(r5);
             */
            /* JADX WARN: Code restructure failed: missing block: B:107:0x01f4, code lost:
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:79:0x017a, code lost:
                if (r13 != null) goto L_0x01e2;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 512
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.firstorion.libcyd.RefreshApiKeyHandler.RunnableC11771.run():void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean handle(Context context, Intent intent) {
        if (!CYD_REFRESH_KEY_ACTION.equals(intent.getAction())) {
            return false;
        }
        doRefreshApiKey(context.getApplicationContext());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean shouldUpdateApiKey(String str) {
        return str != null && "true".equals(str);
    }
}
