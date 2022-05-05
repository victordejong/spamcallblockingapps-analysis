package androidx.core.p005os;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Message;
import androidx.annotation.NonNull;
/* renamed from: androidx.core.os.MessageCompat */
/* loaded from: classes-dex2jar.jar:androidx/core/os/MessageCompat.class */
public final class MessageCompat {
    public static boolean sTryIsAsynchronous = true;
    public static boolean sTrySetAsynchronous = true;

    @SuppressLint({"NewApi"})
    public static boolean isAsynchronous(@NonNull Message message) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 22) {
            return message.isAsynchronous();
        }
        if (!sTryIsAsynchronous || i < 16) {
            return false;
        }
        try {
            return message.isAsynchronous();
        } catch (NoSuchMethodError e) {
            sTryIsAsynchronous = false;
            return false;
        }
    }

    @SuppressLint({"NewApi"})
    public static void setAsynchronous(@NonNull Message message, boolean z) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 22) {
            message.setAsynchronous(z);
        } else if (sTrySetAsynchronous && i >= 16) {
            try {
                message.setAsynchronous(z);
            } catch (NoSuchMethodError e) {
                sTrySetAsynchronous = false;
            }
        }
    }
}
