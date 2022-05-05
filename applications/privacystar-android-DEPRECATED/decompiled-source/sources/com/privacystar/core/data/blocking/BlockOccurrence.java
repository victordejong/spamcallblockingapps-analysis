package com.privacystar.core.data.blocking;

import android.os.Handler;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.call.caller.PhoneEventType;
import com.privacystar.core.data.model.BlockHistory;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.data.model.helper.BlockHistoryRealm;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.data.model.helper.CallStatsRealm;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.BlockingManager;
import com.privacystar.core.util.NotificationUtil;
import com.privacystar.core.util.Text;
import hugo.weaving.DebugLog;
import io.realm.Realm;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/blocking/BlockOccurrence.class */
public class BlockOccurrence {
    @DebugLog
    public static void newBlockOccurrence(final String str, final String str2, final String str3, final String str4) {
        new Thread(new Runnable(str, str2, str3, str4) { // from class: com.privacystar.core.data.blocking.BlockOccurrence$$Lambda$0
            private final String arg$1;
            private final String arg$2;
            private final String arg$3;
            private final String arg$4;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = str;
                this.arg$2 = str2;
                this.arg$3 = str3;
                this.arg$4 = str4;
            }

            @Override // java.lang.Runnable
            public void run() {
                BlockOccurrence.newBlockOccurrenceImpl(this.arg$1, this.arg$2, this.arg$3, this.arg$4);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void newBlockOccurrenceImpl(String str, final String str2, String str3, String str4) {
        String str5 = (str2.equalsIgnoreCase("undefined") || str2.length() <= 3) ? "Unknown" : str2;
        final PhoneEventType valueFrom = PhoneEventType.valueFrom(str);
        Text.equals(str3, "dnd");
        boolean equals = Text.equals(str3, "invalid");
        Text.equalsIgnoreCase(str4, Integer.toString(3));
        if (valueFrom.equals(PhoneEventType.SMS)) {
            AnalyticsManager.INSTANCE.fire(Event.IncomingMessageBlockedEvent.INSTANCE);
        } else {
            AnalyticsManager.INSTANCE.fire(Event.IncomingCallBlockedEvent.INSTANCE);
        }
        boolean z = true;
        if (equals) {
            PreferenceUtil.putShowInvalidNumberBlocked(true);
        }
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            if (PreferenceUtil.getBlockNotificationEnabled()) {
                Timber.m37d("Firing blocked notification.", new Object[0]);
                new Handler(PSApplication.context().getMainLooper()).post(new Runnable(str2, valueFrom) { // from class: com.privacystar.core.data.blocking.BlockOccurrence$$Lambda$1
                    private final String arg$1;
                    private final PhoneEventType arg$2;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.arg$1 = str2;
                        this.arg$2 = valueFrom;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        NotificationUtil.showCallNotification(PSApplication.context(), this.arg$1, this.arg$2, NotificationUtil.NotificationType.BLOCKED);
                    }
                });
            }
            if (BlockingManager.getInstance().getSpecialCasesCallBlocksMap().get("*") == null) {
                z = false;
            }
            boolean isUnknownBlockingEnabled = PreferenceUtil.getIsUnknownBlockingEnabled();
            BlockHistory blockHistory = new BlockHistory();
            blockHistory.setCallerType(PhoneEventType.valueFrom(str));
            blockHistory.setNumber(str5);
            blockHistory.setName("");
            if (z) {
                if (!"Unknown".equals(str5)) {
                    BlockList retrieveBlockEntry = BlockListRealm.retrieveBlockEntry(defaultInstance, str5);
                    if (retrieveBlockEntry != null) {
                        blockHistory.setName(retrieveBlockEntry.getName());
                    }
                    if (blockHistory.getName() == null) {
                        blockHistory.setName("");
                        if (!"blacklist".equals(str3)) {
                            blockHistory.setCallerType(PhoneEventType.DND);
                        }
                    }
                } else if (!isUnknownBlockingEnabled) {
                    blockHistory.setCallerType(PhoneEventType.DND);
                }
            } else if ("Unknown".equalsIgnoreCase(str5)) {
                blockHistory.setName("");
            } else {
                BlockList retrieveBlockEntry2 = BlockListRealm.retrieveBlockEntry(defaultInstance, str5);
                if (retrieveBlockEntry2 != null) {
                    blockHistory.setName(retrieveBlockEntry2.getName());
                }
                if (blockHistory.getName() == null) {
                    blockHistory.setName("");
                }
            }
            BlockHistoryRealm.addNewBlockEvent(defaultInstance, blockHistory);
            CallStatsRealm.INSTANCE.addCallStat(defaultInstance, blockHistory.getNumber());
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }
}
