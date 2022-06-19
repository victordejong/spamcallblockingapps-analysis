package androidx.mediarouter.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes-dex2jar.jar:androidx/mediarouter/media/MediaTransferReceiver.class */
public final class MediaTransferReceiver extends BroadcastReceiver {
    /* renamed from: a */
    public static boolean m6253a(Context context) {
        Intent intent = new Intent(context, MediaTransferReceiver.class);
        intent.setPackage(context.getPackageName());
        boolean z = false;
        if (context.getPackageManager().queryBroadcastReceivers(intent, 0).size() > 0) {
            z = true;
        }
        return z;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
    }
}
