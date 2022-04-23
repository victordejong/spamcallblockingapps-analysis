package com.firstorion.libcyd;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.support.p001v4.content.LocalBroadcastManager;
import android.telephony.SmsMessage;
import android.util.Log;
import com.privacystar.core.data.model.MessageFields;
import com.privacystar.core.data.model.RequestQueueFields;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/SMSChallengeBroadcastReceiver.class */
public class SMSChallengeBroadcastReceiver extends BroadcastReceiver {
    private static final String BEGIN_ACTION = "com.firstorion.libcyd.smschallenge.BEGIN";
    static final String BINARY_SMS_PAYLOAD_EXTRA = "com.firstorion.libcyd.smschallenge.BINARY_SMS_PAYLOAD";
    static final String BINARY_SMS_VERSION_EXTRA = "com.firstorion.libcyd.smschallenge.BINARY_SMS_VERSION";
    static final int CHALLENGE_CODE_VERSION_1 = 1;
    private static final String CODE_EXTRA = "com.firstorion.libcyd.smschallenge.CODE";
    static final String COMPLETE_WITH_BINARY_SMS_ACTION = "com.firstorion.libcyd.smschallenge.COMPLETE_WITH_BINARY_SMS";
    private static final String COMPLETE_WITH_CODE_ACTION = "com.firstorion.libcyd.smschallenge.COMPLETE_WITH_CODE";
    private static final String COMPLETE_WITH_TEXT_SMS_ACTION = "com.firstorion.libcyd.smschallenge.COMPLETE_WITH_TEXT_SMS";
    static final int MESSAGE_TYPE_CHALLENGE_CODE = 1;
    private static final String PHONENUMBER_EXTRA = "com.firstorion.libcyd.smschallenge.PHONENUMBER";
    private static final String SMS_RECEIVED_ACTION = "android.provider.Telephony.SMS_RECEIVED";
    private static final ExecutorService SerialExecutor = Executors.newSingleThreadExecutor();
    private static final String TEXT_SMS_MESSAGE_BODY_EXTRA = "com.firstorion.libcyd.smschallenge.TEXT_SMS_MESSAGE_BODY";
    private static final String UNREGISTER_SMS_BROADCAST_RECEIVER_ACTION = "com.firstorion.libcyd.smschallenge.UNREGISTER_SMS_BROADCAST_RECEIVER";
    private String challengeKey;
    private ChallengeResponseHandler challengeResponseHandler;
    private String code;
    private boolean completed;
    private boolean initiated;
    private String phoneNumber;
    private String searchText;
    private boolean shouldAutoComplete;

    /* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/SMSChallengeBroadcastReceiver$SMSReceiver.class */
    private static final class SMSReceiver extends BroadcastReceiver {
        private SMSReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Bundle extras;
            Object[] objArr;
            String action = intent.getAction();
            if (SMSChallengeBroadcastReceiver.UNREGISTER_SMS_BROADCAST_RECEIVER_ACTION.equals(action)) {
                try {
                    LocalBroadcastManager.getInstance(context).unregisterReceiver(this);
                } catch (IllegalArgumentException e) {
                    Log.d("libcyd.app", "Local SMS broadcast receiever was already unregistered.");
                }
                try {
                    context.unregisterReceiver(this);
                } catch (IllegalArgumentException e2) {
                    Log.d("libcyd.app", "Global SMS broadcast receiver was already unregistered.");
                }
            } else if (SMSChallengeBroadcastReceiver.SMS_RECEIVED_ACTION.equals(action) && (extras = intent.getExtras()) != null && (objArr = (Object[]) extras.get("pdus")) != null) {
                String stringExtra = intent.getStringExtra("format");
                for (Object obj : objArr) {
                    byte[] bArr = (byte[]) obj;
                    SMSChallengeBroadcastReceiver.sendOnTextSMSBroadcast(context, (Build.VERSION.SDK_INT >= 23 ? SmsMessage.createFromPdu(bArr, stringExtra) : SmsMessage.createFromPdu(bArr)).getMessageBody());
                }
            }
        }
    }

    public SMSChallengeBroadcastReceiver(ChallengeResponseHandler challengeResponseHandler) {
        if (challengeResponseHandler == null) {
            throw new NullPointerException("challengeResponseHandler");
        }
        this.challengeResponseHandler = challengeResponseHandler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0424, code lost:
        if (r12 != null) goto L_0x0427;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v87, types: [java.net.HttpURLConnection] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doCompleteSMSChallenge(final android.content.Context r8, final java.lang.String r9, java.lang.String r10) {
        /*
            Method dump skipped, instructions count: 1317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.firstorion.libcyd.SMSChallengeBroadcastReceiver.doCompleteSMSChallenge(android.content.Context, java.lang.String, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x03cc, code lost:
        if (r10 != null) goto L_0x03cf;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r9v76, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r9v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void doInitiateSMSChallenge(android.content.Context r8, java.lang.String r9, java.lang.String r10, java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 1207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.firstorion.libcyd.SMSChallengeBroadcastReceiver.doInitiateSMSChallenge(android.content.Context, java.lang.String, java.lang.String, java.lang.String):void");
    }

    @Deprecated
    public static void sendBeginBroadcast(Context context, String str) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (str == null) {
            throw new NullPointerException("phoneNumber");
        } else {
            Intent intent = new Intent(BEGIN_ACTION);
            intent.putExtra(PHONENUMBER_EXTRA, str);
            LocalBroadcastManager.getInstance(context).sendBroadcast(intent);
        }
    }

    @Deprecated
    public static void sendCodeBroadcast(Context context, String str) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (str == null) {
            throw new NullPointerException("code");
        } else {
            Context applicationContext = context.getApplicationContext();
            Intent intent = new Intent(COMPLETE_WITH_CODE_ACTION);
            intent.putExtra(CODE_EXTRA, str);
            LocalBroadcastManager.getInstance(applicationContext).sendBroadcast(intent);
        }
    }

    @Deprecated
    public static void sendOnTextSMSBroadcast(Context context, String str) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (str == null) {
            throw new NullPointerException(MessageFields.MESSAGE_BODY);
        } else {
            Context applicationContext = context.getApplicationContext();
            Intent intent = new Intent(COMPLETE_WITH_TEXT_SMS_ACTION);
            intent.putExtra(TEXT_SMS_MESSAGE_BODY_EXTRA, str);
            LocalBroadcastManager.getInstance(applicationContext).sendBroadcast(intent);
        }
    }

    @Deprecated
    public static void sendUnregisterBroadcast(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        Context applicationContext = context.getApplicationContext();
        LocalBroadcastManager.getInstance(applicationContext).sendBroadcast(new Intent(UNREGISTER_SMS_BROADCAST_RECEIVER_ACTION));
    }

    public void attemptCompletionWithExistingCode(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        final Context applicationContext = context.getApplicationContext();
        SerialExecutor.submit(new Runnable() { // from class: com.firstorion.libcyd.SMSChallengeBroadcastReceiver.3
            @Override // java.lang.Runnable
            public void run() {
                if (SMSChallengeBroadcastReceiver.this.code == null) {
                    Log.d("libcyd.app", "Unable to complete with a null existing code.");
                } else if (!SMSChallengeBroadcastReceiver.this.initiated) {
                    Log.d("libcyd.app", "Unable to complete with an existing code because initiation has not completed.");
                } else if (SMSChallengeBroadcastReceiver.this.completed) {
                    Log.d("libcyd.app", "Unable to complete with an existing code because completion is already done.");
                } else if (SMSChallengeBroadcastReceiver.this.challengeKey == null) {
                    throw new IllegalStateException("challengeKey cannot be null.");
                } else {
                    SMSChallengeBroadcastReceiver.this.doCompleteSMSChallenge(applicationContext, SMSChallengeBroadcastReceiver.this.code, SMSChallengeBroadcastReceiver.this.challengeKey);
                }
            }
        });
    }

    public void begin(Context context, final String str) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (str == null) {
            throw new NullPointerException("phoneNumber");
        } else {
            final Context applicationContext = context.getApplicationContext();
            SerialExecutor.submit(new Runnable() { // from class: com.firstorion.libcyd.SMSChallengeBroadcastReceiver.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!SMSChallengeBroadcastReceiver.this.completed) {
                        SMSChallengeBroadcastReceiver.this.challengeKey = null;
                        SMSChallengeBroadcastReceiver.this.searchText = null;
                        SMSChallengeBroadcastReceiver.this.initiated = false;
                        SMSChallengeBroadcastReceiver.this.doInitiateSMSChallenge(applicationContext, str, CYDApplicationParams.getInstance(applicationContext).appId, Locale.getDefault().getLanguage());
                    }
                }
            });
        }
    }

    void completeWithBinarySMS(Context context, long j, byte[] bArr) {
        this.shouldAutoComplete = true;
        if (j == 1) {
            Log.d("libcyd.app", "Binary sms receieved");
            String str = new String(bArr, Globals.UTF8);
            if (!this.initiated) {
                this.code = str;
            } else {
                completeWithCode(context, str);
            }
        } else {
            Log.w("libcyd.app", String.format("Don't know how to handle binary sms challenge message with version %X.", Long.valueOf(j)));
        }
    }

    public void completeWithCode(Context context, final String str) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (str == null) {
            throw new NullPointerException("code");
        } else {
            final Context applicationContext = context.getApplicationContext();
            SerialExecutor.submit(new Runnable() { // from class: com.firstorion.libcyd.SMSChallengeBroadcastReceiver.2
                @Override // java.lang.Runnable
                public void run() {
                    SMSChallengeBroadcastReceiver.this.code = str;
                    if (SMSChallengeBroadcastReceiver.this.initiated && !SMSChallengeBroadcastReceiver.this.completed) {
                        if (SMSChallengeBroadcastReceiver.this.challengeKey == null) {
                            throw new IllegalStateException("challengeKey cannot be null.");
                        }
                        SMSChallengeBroadcastReceiver.this.doCompleteSMSChallenge(applicationContext, str, SMSChallengeBroadcastReceiver.this.challengeKey);
                    }
                }
            });
        }
    }

    public void completeWithTextSMS(Context context, String str) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (str == null) {
            throw new NullPointerException(MessageFields.MESSAGE_BODY);
        } else {
            Matcher matcher = Pattern.compile("[0-9][0-9][0-9][0-9][0-9][0-9]").matcher(str);
            if (matcher.find()) {
                String group = matcher.group();
                if (!this.initiated) {
                    this.code = group;
                } else if (str.contains(this.searchText)) {
                    completeWithCode(context, group);
                }
            }
        }
    }

    public boolean isChallengeCodeMessage(String str) {
        if (this.initiated && str.contains(this.searchText)) {
            return Pattern.compile("[0-9][0-9][0-9][0-9][0-9][0-9]").matcher(str).find();
        }
        return false;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (intent == null) {
            throw new NullPointerException("intent");
        } else {
            String action = intent.getAction();
            if (action != null) {
                char c = 65535;
                switch (action.hashCode()) {
                    case -1741541141:
                        if (action.equals(UNREGISTER_SMS_BROADCAST_RECEIVER_ACTION)) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1510036103:
                        if (action.equals(COMPLETE_WITH_BINARY_SMS_ACTION)) {
                            c = 4;
                            break;
                        }
                        break;
                    case -1404288533:
                        if (action.equals(COMPLETE_WITH_CODE_ACTION)) {
                            c = 2;
                            break;
                        }
                        break;
                    case 1061796901:
                        if (action.equals(COMPLETE_WITH_TEXT_SMS_ACTION)) {
                            c = 3;
                            break;
                        }
                        break;
                    case 1724321534:
                        if (action.equals(BEGIN_ACTION)) {
                            c = 0;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        begin(context, intent.getStringExtra(PHONENUMBER_EXTRA));
                        return;
                    case 1:
                        LocalBroadcastManager.getInstance(context.getApplicationContext()).unregisterReceiver(this);
                        return;
                    case 2:
                        completeWithCode(context, intent.getStringExtra(CODE_EXTRA));
                        return;
                    case 3:
                        completeWithTextSMS(context, intent.getStringExtra(TEXT_SMS_MESSAGE_BODY_EXTRA));
                        return;
                    case 4:
                        completeWithBinarySMS(context, intent.getLongExtra(BINARY_SMS_VERSION_EXTRA, 0L), intent.getByteArrayExtra(BINARY_SMS_PAYLOAD_EXTRA));
                        return;
                    default:
                        return;
                }
            }
        }
    }

    public void register(Context context, SMSChallengeBroadcastReceiverOptions sMSChallengeBroadcastReceiverOptions) {
        if (context == null) {
            throw new NullPointerException("context");
        } else if (sMSChallengeBroadcastReceiverOptions == null) {
            throw new NullPointerException(RequestQueueFields.OPTIONS);
        } else {
            Context applicationContext = context.getApplicationContext();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(BEGIN_ACTION);
            intentFilter.addAction(UNREGISTER_SMS_BROADCAST_RECEIVER_ACTION);
            intentFilter.addAction(COMPLETE_WITH_CODE_ACTION);
            intentFilter.addAction(COMPLETE_WITH_TEXT_SMS_ACTION);
            intentFilter.addAction(COMPLETE_WITH_BINARY_SMS_ACTION);
            LocalBroadcastManager.getInstance(applicationContext).registerReceiver(this, intentFilter);
            if (sMSChallengeBroadcastReceiverOptions == SMSChallengeBroadcastReceiverOptions.UseBuiltInTextSMSListener) {
                SMSReceiver sMSReceiver = new SMSReceiver();
                applicationContext.registerReceiver(sMSReceiver, new IntentFilter(SMS_RECEIVED_ACTION));
                LocalBroadcastManager.getInstance(applicationContext).registerReceiver(sMSReceiver, new IntentFilter(UNREGISTER_SMS_BROADCAST_RECEIVER_ACTION));
                this.shouldAutoComplete = true;
            }
        }
    }

    public void unregister(Context context) {
        if (context == null) {
            throw new NullPointerException("context");
        }
        sendUnregisterBroadcast(context);
    }
}
