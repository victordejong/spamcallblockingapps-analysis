package com.privacystar.core.data.model.helper;

import com.privacystar.core.data.model.BlockingOption;
import io.realm.ImportFlag;
import io.realm.Realm;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/model/helper/BlockingOptionRealm.class */
public class BlockingOptionRealm {
    public static void initializeBlockingOptions(Realm realm) {
        final ArrayList arrayList = new ArrayList();
        arrayList.add(new BlockingOption("text", true, "", false));
        arrayList.add(new BlockingOption("unknown", false, "", false));
        arrayList.add(new BlockingOption("dnd", false, "", false));
        arrayList.add(new BlockingOption("service", true, "", false));
        arrayList.add(new BlockingOption("group", false, "", false));
        arrayList.add(new BlockingOption("smart", false, "", false));
        arrayList.add(new BlockingOption("callerId", true, "", false));
        arrayList.add(new BlockingOption("scammer", true, "", true));
        realm.executeTransaction(new Realm.Transaction(arrayList) { // from class: com.privacystar.core.data.model.helper.BlockingOptionRealm$$Lambda$0
            private final List arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = arrayList;
            }

            @Override // io.realm.Realm.Transaction
            public void execute(Realm realm2) {
                BlockingOptionRealm.lambda$initializeBlockingOptions$0$BlockingOptionRealm(this.arg$1, realm2);
            }
        });
    }

    public static boolean isBlockingOptionTurnedOn(Realm realm, String str) {
        BlockingOption blockingOption = (BlockingOption) realm.where(BlockingOption.class).equalTo("optionType", str).findFirst();
        return blockingOption != null && blockingOption.isActive();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$initializeBlockingOptions$0$BlockingOptionRealm(List list, Realm realm) {
        realm.delete(BlockingOption.class);
        realm.copyToRealm(list, new ImportFlag[0]);
    }
}
