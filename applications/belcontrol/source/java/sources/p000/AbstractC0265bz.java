package p000;

import android.os.Messenger;
/* renamed from: bz */
/* loaded from: classes-dex2jar.jar:bz.class */
public abstract class AbstractC0265bz {
    /* renamed from: a */
    public static boolean m5546a(Messenger messenger) {
        boolean z = false;
        if (messenger != null) {
            try {
                z = false;
                if (messenger.getBinder() != null) {
                    z = true;
                }
            } catch (NullPointerException e) {
                z = false;
            }
        }
        return z;
    }
}
