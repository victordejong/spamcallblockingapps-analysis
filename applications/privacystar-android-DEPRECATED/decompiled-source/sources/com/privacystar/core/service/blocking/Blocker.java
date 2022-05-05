package com.privacystar.core.service.blocking;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.annotation.RequiresApi;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.blocking.api21.BlockingOverlayService;
import java.lang.reflect.InvocationTargetException;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/Blocker.class */
public abstract class Blocker {
    private static Blocker blocker;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/Blocker$Api16Blocker.class */
    public static class Api16Blocker extends Blocker {
        private Api16Blocker() {
        }

        @Override // com.privacystar.core.service.blocking.Blocker
        public void answerImpl(Context context) {
            Timber.m37d("Blocker**Answering call new style", new Object[0]);
            PreferenceUtil.putPhoneStateHangUp(true);
            CallBlockingUtil.mediaButtonPresses(context);
        }

        @Override // com.privacystar.core.service.blocking.Blocker
        public void hangUpImpl(Context context) {
            try {
                Timber.m37d("Blocker**Ending call", new Object[0]);
                CallBlockingUtil.telephonyEndCall();
                PreferenceUtil.putPhoneStateHangUp(false);
            } catch (Exception e) {
                Timber.m32e(e, "Blocker**Error ending call", new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/Blocker$Api21Blocker.class */
    public static class Api21Blocker extends Api16Blocker {
        private Api21Blocker() {
            super();
        }

        @Override // com.privacystar.core.service.blocking.Blocker.Api16Blocker, com.privacystar.core.service.blocking.Blocker
        public void answerImpl(Context context) {
            context.startService(new Intent(context, BlockingOverlayService.class));
            PreferenceUtil.putPhoneStateHangUp(true);
            Timber.m37d("Api21Blocker**Answering call", new Object[0]);
            CallBlockingUtil.answerCallLollipop(context);
        }

        @Override // com.privacystar.core.service.blocking.Blocker.Api16Blocker, com.privacystar.core.service.blocking.Blocker
        public void hangUpImpl(Context context) {
            super.hangUpImpl(context);
            if (context != null) {
                context.stopService(new Intent(context, BlockingOverlayService.class));
            } else {
                Timber.m28v("Would have stopped OverlayService but context passed out of scope.", new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(api = 26)
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/Blocker$Api26Blocker.class */
    public static class Api26Blocker extends Api16Blocker {
        private Api26Blocker() {
            super();
        }

        @Override // com.privacystar.core.service.blocking.Blocker.Api16Blocker, com.privacystar.core.service.blocking.Blocker
        public void answerImpl(Context context) {
            PreferenceUtil.putPhoneStateHangUp(true);
            Timber.m37d("Api26Blocker**Answering call", new Object[0]);
            CallBlockingUtil.telecomManagerAnswerCall(context);
            context.startForegroundService(new Intent(context, BlockingOverlayService.class));
        }

        @Override // com.privacystar.core.service.blocking.Blocker.Api16Blocker, com.privacystar.core.service.blocking.Blocker
        public void hangUpImpl(Context context) {
            super.hangUpImpl(context);
            if (context != null) {
                context.stopService(new Intent(context, BlockingOverlayService.class));
            } else {
                Timber.m28v("Would have stopped OverlayService but context passed out of scope.", new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(api = 28)
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/Blocker$Api28Blocker.class */
    public static class Api28Blocker extends Api16Blocker {
        private Api28Blocker() {
            super();
        }

        @Override // com.privacystar.core.service.blocking.Blocker.Api16Blocker, com.privacystar.core.service.blocking.Blocker
        public void answerImpl(Context context) {
            context.startForegroundService(new Intent(context, BlockingOverlayService.class));
            PreferenceUtil.putPhoneStateHangUp(true);
            Timber.m37d("Api28Blocker**Answering call", new Object[0]);
            CallBlockingUtil.telecomManagerAnswerCall(context);
        }

        @Override // com.privacystar.core.service.blocking.Blocker.Api16Blocker, com.privacystar.core.service.blocking.Blocker
        public void hangUpImpl(Context context) {
            try {
                CallBlockingUtil.telecomManagerEndCall(context);
                PreferenceUtil.putPhoneStateHangUp(false);
            } catch (Exception e) {
                e.printStackTrace();
                PreferenceUtil.putPhoneStateHangUp(false);
            }
            if (context != null) {
                context.stopService(new Intent(context, BlockingOverlayService.class));
            } else {
                Timber.m28v("Would have stopped OverlayService but context passed out of scope.", new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/Blocker$Api8Blocker.class */
    public static class Api8Blocker extends BasicBlocker {
        private Api8Blocker() {
            super();
        }

        @Override // com.privacystar.core.service.blocking.Blocker
        public void answerImpl(Context context) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
            CallBlockingUtil.answerCallTelephony();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/Blocker$Api9Blocker.class */
    public static class Api9Blocker extends BasicBlocker {
        private Api9Blocker() {
            super();
        }

        @Override // com.privacystar.core.service.blocking.Blocker
        public void answerImpl(Context context) {
            PreferenceUtil.putPhoneStateHangUp(true);
            CallBlockingUtil.bluetoothBlockCall(true, context);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/Blocker$Api9ExceptionalBlocker.class */
    public static class Api9ExceptionalBlocker extends BasicBlocker {
        private Api9ExceptionalBlocker() {
            super();
        }

        @Override // com.privacystar.core.service.blocking.Blocker
        public void answerImpl(Context context) {
            Timber.m37d("Blocker**Answering call new style ", new Object[0]);
            PreferenceUtil.putPhoneStateHangUp(true);
            CallBlockingUtil.mediaButtonPresses(context);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/Blocker$BasicBlocker.class */
    private static abstract class BasicBlocker extends Blocker {
        private BasicBlocker() {
        }

        @Override // com.privacystar.core.service.blocking.Blocker
        public void hangUpImpl(Context context) {
            try {
                Timber.m37d("BasicBlocker**Ending call", new Object[0]);
                CallBlockingUtil.telephonyEndCall();
                CallBlockingUtil.bluetoothEndCall(context);
                PreferenceUtil.putPhoneStateHangUp(false);
            } catch (Exception e) {
                Timber.m32e(e, "BasicBlocker**Error ending call", new Object[0]);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/Blocker$SystemBlocker.class */
    public static class SystemBlocker extends Blocker {
        @Override // com.privacystar.core.service.blocking.Blocker
        public void answerImpl(Context context) {
            try {
                Timber.m37d("Blocker**Answering call", new Object[0]);
                CallBlockingUtil.answerCallTelephony();
            } catch (Exception e) {
                Timber.m32e(e, "Blocker**Error ending call", new Object[0]);
            }
        }

        @Override // com.privacystar.core.service.blocking.Blocker
        public void hangUpImpl(Context context) {
            try {
                Timber.m37d("Blocker**Ending call", new Object[0]);
                CallBlockingUtil.telephonyEndCall();
                PreferenceUtil.putPhoneStateHangUp(false);
            } catch (Exception e) {
                Timber.m32e(e, "Blocker**Error ending call", new Object[0]);
            }
        }
    }

    public static void answer(Context context) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException {
        getBlocker().answerImpl(context);
    }

    private static Blocker getBlocker() {
        Blocker blocker2;
        synchronized (Blocker.class) {
            try {
                if (blocker == null) {
                    int i = Build.VERSION.SDK_INT;
                    boolean isExceptionalDevice = CallBlockingUtil.getIsExceptionalDevice();
                    if (CallBlockingUtil.isModifyPermissionGranted(PSApplication.context())) {
                        Timber.m31i("System permissions granted.", new Object[0]);
                        blocker = new SystemBlocker();
                    } else if (i < 9) {
                        Timber.m31i("Target 8", new Object[0]);
                        blocker = new Api8Blocker();
                    } else if (i < 16) {
                        if (isExceptionalDevice) {
                            Timber.m31i("Target 9E", new Object[0]);
                            blocker = new Api9ExceptionalBlocker();
                        } else {
                            Timber.m31i("Target 9", new Object[0]);
                            blocker = new Api9Blocker();
                        }
                    } else if (i < 21) {
                        Timber.m31i("Target 16", new Object[0]);
                        blocker = new Api16Blocker();
                    } else if (i < 26) {
                        Timber.m31i("Target 21", new Object[0]);
                        blocker = new Api21Blocker();
                    } else if (i < 28) {
                        Timber.m31i("Target 26", new Object[0]);
                        blocker = new Api26Blocker();
                    } else {
                        Timber.m31i("Target 28", new Object[0]);
                        blocker = new Api28Blocker();
                    }
                }
                blocker2 = blocker;
            } catch (Throwable th) {
                throw th;
            }
        }
        return blocker2;
    }

    public static void hangUp(Context context) {
        getBlocker().hangUpImpl(context);
    }

    public static void resetBlocker() {
        synchronized (Blocker.class) {
            try {
                blocker = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void answerImpl(Context context) throws ClassNotFoundException, NoSuchMethodException, IllegalAccessException, InvocationTargetException;

    public abstract void hangUpImpl(Context context);
}
