package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.os.PowerManager;
import android.util.SparseArray;
/* loaded from: classes-dex2jar.jar:android/support/v4/content/WakefulBroadcastReceiver.class */
public abstract class WakefulBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static final SparseArray<PowerManager.WakeLock> f143a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private static int f144b = 1;
}
