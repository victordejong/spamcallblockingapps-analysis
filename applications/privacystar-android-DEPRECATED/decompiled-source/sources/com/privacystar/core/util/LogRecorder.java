package com.privacystar.core.util;

import android.content.SharedPreferences;
import com.privacystar.core.data.model.ApprovedList;
import com.privacystar.core.data.model.BlockHistory;
import com.privacystar.core.data.model.BlockList;
import com.privacystar.core.data.model.GroupBlock;
import com.privacystar.core.data.model.LogItem;
import com.privacystar.core.data.model.RegistrationData;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.service.PreferenceService;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmResults;
import io.realm.com_privacystar_core_data_model_SubscriptionRealmProxy;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.p018io.IOUtils;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/LogRecorder.class */
public class LogRecorder {
    private static final int BUFFER_MAX_LOGS = 25;
    private static final int BUFFER_MAX_SIZE = 3750;
    private static final String FIELD_DATE = "date";
    private static final String FIELD_LOG = "log";
    private static final String LOG_TAG = "LogRecorder#";
    private static final int MAX_HOURS_STORED = 72;
    private static StringBuffer buffer;
    private static final DateFormat dateFormat = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");
    private static int logCount = 0;
    private static boolean running = false;
    private static LogRecorder single;

    private LogRecorder() {
    }

    private static void clearBuffer() {
        long currentTimeMillis = System.currentTimeMillis();
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            final LogItem logItem = new LogItem();
            logItem.setDate(new Date(currentTimeMillis));
            logItem.setLog(buffer.toString());
            defaultInstance.executeTransactionAsync(new Realm.Transaction(logItem) { // from class: com.privacystar.core.util.LogRecorder$$Lambda$0
                private final LogItem arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = logItem;
                }

                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm) {
                    LogRecorder.lambda$clearBuffer$0$LogRecorder(this.arg$1, realm);
                }
            });
            buffer = new StringBuffer((int) BUFFER_MAX_SIZE);
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

    public static void forceDumpToRealm() {
        if (running) {
            clearBuffer();
            logCount = 0;
        }
    }

    public static String getLog() {
        Realm defaultInstance;
        StringBuilder sb = new StringBuilder();
        if (BuildUtil.INSTANCE.isLoggingBuild()) {
            defaultInstance = Realm.getDefaultInstance();
            try {
                Subscription subscription = (Subscription) defaultInstance.where(Subscription.class).findFirst();
                sb.append("======\n");
                sb.append("Realm dump\n");
                sb.append("======\n");
                sb.append(com_privacystar_core_data_model_SubscriptionRealmProxy.ClassNameHelper.INTERNAL_CLASS_NAME);
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                if (subscription != null) {
                    sb.append(subscription);
                    sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                }
                sb.append("======\n");
                sb.append("Block List");
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                Iterator it = defaultInstance.where(BlockList.class).findAll().iterator();
                while (it.hasNext()) {
                    sb.append((BlockList) it.next());
                    sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                }
                sb.append("======\n");
                sb.append("Approved List");
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                Iterator it2 = defaultInstance.where(ApprovedList.class).findAll().iterator();
                while (it2.hasNext()) {
                    sb.append((ApprovedList) it2.next());
                    sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                }
                sb.append("======\n");
                sb.append("Group Block");
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                Iterator it3 = defaultInstance.where(GroupBlock.class).findAll().iterator();
                while (it3.hasNext()) {
                    sb.append((GroupBlock) it3.next());
                    sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                }
                sb.append("======\n");
                sb.append("Block History");
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                Iterator it4 = defaultInstance.where(BlockHistory.class).findAll().iterator();
                while (it4.hasNext()) {
                    sb.append((BlockHistory) it4.next());
                    sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                }
                sb.append("======\n");
                sb.append("Registration Data");
                Iterator it5 = defaultInstance.where(RegistrationData.class).findAll().iterator();
                while (it5.hasNext()) {
                    sb.append((RegistrationData) it5.next());
                    sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                }
                if (defaultInstance != null) {
                    defaultInstance.close();
                }
                sb.append("======\n");
                sb.append("SharedPreference dump\n");
                sb.append("======\n");
                SharedPreferences preferences = PreferenceService.getPreferences();
                if (preferences != null) {
                    for (Map.Entry<String, ?> entry : preferences.getAll().entrySet()) {
                        sb.append("\"");
                        sb.append(entry.getKey());
                        sb.append("\":");
                        sb.append(entry.getValue().toString());
                        sb.append(IOUtils.LINE_SEPARATOR_UNIX);
                    }
                }
            } finally {
                try {
                } finally {
                }
            }
        }
        defaultInstance = Realm.getDefaultInstance();
        try {
            Iterator it6 = defaultInstance.where(LogItem.class).findAll().sort("date").iterator();
            while (it6.hasNext()) {
                LogItem logItem = (LogItem) it6.next();
                sb.append(logItem.getDate());
                sb.append(":");
                sb.append(logItem.getLog());
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
            }
            if (defaultInstance != null) {
                defaultInstance.close();
            }
            return sb.toString();
        } finally {
            try {
            } finally {
            }
        }
    }

    public static boolean isRunning() {
        return running;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$clearBuffer$0$LogRecorder(LogItem logItem, Realm realm) {
        LogItem logItem2 = (LogItem) realm.copyToRealm((Realm) logItem, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$purge$1$LogRecorder(RealmResults realmResults, Realm realm) {
        if (realmResults.size() <= 0 || !realmResults.deleteAllFromRealm()) {
            Timber.m37d("Could not remove any items from realm", new Object[0]);
        } else {
            Timber.m37d("Removed items from realm", new Object[0]);
        }
    }

    private static void purge() {
        Timber.m37d("removing old records from table", new Object[0]);
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            final RealmResults findAll = defaultInstance.where(LogItem.class).lessThan("date", new Date(System.currentTimeMillis() - 259200000)).findAll();
            StringBuilder sb = new StringBuilder();
            sb.append("Found ");
            sb.append(findAll.size());
            sb.append(" rows over ");
            sb.append(72);
            sb.append(" hours old.");
            Timber.m37d(sb.toString(), new Object[0]);
            defaultInstance.executeTransaction(new Realm.Transaction(findAll) { // from class: com.privacystar.core.util.LogRecorder$$Lambda$1
                private final RealmResults arg$1;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.arg$1 = findAll;
                }

                @Override // io.realm.Realm.Transaction
                public void execute(Realm realm) {
                    LogRecorder.lambda$purge$1$LogRecorder(this.arg$1, realm);
                }
            });
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

    public static void put(int i, String str, String str2) {
        if (running) {
            String str3 = "";
            if (i == 3) {
                str3 = " D/";
            } else if (i == 4) {
                str3 = " I/";
            } else if (i == 2) {
                str3 = " V/";
            } else if (i == 5) {
                str3 = " W/";
            } else if (i == 6) {
                str3 = " E/";
            }
            StringBuffer stringBuffer = buffer;
            stringBuffer.append(dateFormat.format(new Date()));
            stringBuffer.append(str3);
            stringBuffer.append(str);
            stringBuffer.append(": ");
            stringBuffer.append(str2);
            logCount++;
            if (logCount == 25) {
                clearBuffer();
                logCount = 0;
                return;
            }
            buffer.append(IOUtils.LINE_SEPARATOR_UNIX);
        }
    }

    public static void start() {
        running = true;
        if (single == null) {
            single = new LogRecorder();
        }
        buffer = new StringBuffer((int) BUFFER_MAX_SIZE);
        purge();
    }
}
