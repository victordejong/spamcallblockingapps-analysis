package com.google.android.gms.tagmanager;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzet.class */
final class zzet implements zzew {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzet(zzes zzesVar) {
    }

    @Override // com.google.android.gms.tagmanager.zzew
    public final ScheduledExecutorService zzpg() {
        return Executors.newSingleThreadScheduledExecutor();
    }
}
