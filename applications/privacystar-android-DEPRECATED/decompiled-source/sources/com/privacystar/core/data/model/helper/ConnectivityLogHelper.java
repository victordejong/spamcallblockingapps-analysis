package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.ConnectivityLog;
import io.realm.ImportFlag;
import io.realm.Realm;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/ConnectivityLogHelper.class */
public class ConnectivityLogHelper {
    public static void addLog(Realm realm, final ConnectivityLog connectivityLog) {
        realm.executeTransactionAsync(new Realm.Transaction(connectivityLog) { // from class: com.privacystar.core.data.model.helper.ConnectivityLogHelper$$Lambda$0
            private final ConnectivityLog arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = connectivityLog;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                ConnectivityLogHelper.lambda$addLog$0$ConnectivityLogHelper(this.arg$1, realm2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$addLog$0$ConnectivityLogHelper(ConnectivityLog connectivityLog, Realm realm) {
        ConnectivityLog connectivityLog2 = (ConnectivityLog) realm.copyToRealm((Realm) connectivityLog, new ImportFlag[0]);
    }
}
