package com.google.firebase.heartbeatinfo;

import android.content.Context;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Dependency;
import com.google.firebase.components.Lazy;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.inject.Provider;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/heartbeatinfo/DefaultHeartBeatInfo.class */
public class DefaultHeartBeatInfo implements HeartBeatInfo {
    private static final ThreadFactory THREAD_FACTORY;
    private final Executor backgroundExecutor;
    private final Set<HeartBeatConsumer> consumers;
    private Provider<HeartBeatInfoStorage> storageProvider;

    static {
        ThreadFactory threadFactory;
        threadFactory = DefaultHeartBeatInfo$$Lambda$5.instance;
        THREAD_FACTORY = threadFactory;
    }

    private DefaultHeartBeatInfo(Context context, Set<HeartBeatConsumer> set) {
        this(new Lazy(DefaultHeartBeatInfo$$Lambda$1.lambdaFactory$(context)), set, new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), THREAD_FACTORY));
    }

    DefaultHeartBeatInfo(Provider<HeartBeatInfoStorage> provider, Set<HeartBeatConsumer> set, Executor executor) {
        this.storageProvider = provider;
        this.consumers = set;
        this.backgroundExecutor = executor;
    }

    public static Component<HeartBeatInfo> component() {
        ComponentFactory componentFactory;
        Component.Builder add = Component.builder(HeartBeatInfo.class).add(Dependency.required(Context.class)).add(Dependency.setOf(HeartBeatConsumer.class));
        componentFactory = DefaultHeartBeatInfo$$Lambda$4.instance;
        return add.factory(componentFactory).build();
    }

    public static /* synthetic */ HeartBeatInfo lambda$component$4(ComponentContainer componentContainer) {
        return new DefaultHeartBeatInfo((Context) componentContainer.get(Context.class), componentContainer.setOf(HeartBeatConsumer.class));
    }

    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public static /* synthetic */ List lambda$getAndClearStoredHeartBeatInfo$2(DefaultHeartBeatInfo defaultHeartBeatInfo) throws Exception {
        ArrayList arrayList = new ArrayList();
        HeartBeatInfoStorage heartBeatInfoStorage = defaultHeartBeatInfo.storageProvider.get();
        List<SdkHeartBeatResult> storedHeartBeats = heartBeatInfoStorage.getStoredHeartBeats(true);
        char lastGlobalHeartBeat = heartBeatInfoStorage.getLastGlobalHeartBeat();
        for (SdkHeartBeatResult sdkHeartBeatResult : storedHeartBeats) {
            boolean isSameDateUtc = HeartBeatInfoStorage.isSameDateUtc(lastGlobalHeartBeat, sdkHeartBeatResult.getMillis());
            HeartBeatInfo.HeartBeat heartBeat = isSameDateUtc ? HeartBeatInfo.HeartBeat.COMBINED : HeartBeatInfo.HeartBeat.SDK;
            if (isSameDateUtc) {
                lastGlobalHeartBeat = sdkHeartBeatResult.getMillis();
            }
            arrayList.add(HeartBeatResult.create(sdkHeartBeatResult.getSdkName(), sdkHeartBeatResult.getMillis(), heartBeat));
        }
        if (lastGlobalHeartBeat > 0) {
            heartBeatInfoStorage.updateGlobalHeartBeat(lastGlobalHeartBeat);
        }
        return arrayList;
    }

    public static /* synthetic */ Thread lambda$static$0(Runnable runnable) {
        return new Thread(runnable, "heartbeat-information-executor");
    }

    public static /* synthetic */ Void lambda$storeHeartBeatInfo$3(DefaultHeartBeatInfo defaultHeartBeatInfo, String str) throws Exception {
        long currentTimeMillis = System.currentTimeMillis();
        if (defaultHeartBeatInfo.storageProvider.get().shouldSendSdkHeartBeat(str, currentTimeMillis)) {
            defaultHeartBeatInfo.storageProvider.get().storeHeartBeatInformation(str, currentTimeMillis);
            return null;
        }
        return null;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    public Task<List<HeartBeatResult>> getAndClearStoredHeartBeatInfo() {
        return Tasks.call(this.backgroundExecutor, DefaultHeartBeatInfo$$Lambda$2.lambdaFactory$(this));
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    public HeartBeatInfo.HeartBeat getHeartBeatCode(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        boolean shouldSendSdkHeartBeat = this.storageProvider.get().shouldSendSdkHeartBeat(str, currentTimeMillis);
        boolean shouldSendGlobalHeartBeat = this.storageProvider.get().shouldSendGlobalHeartBeat(currentTimeMillis);
        return (!shouldSendSdkHeartBeat || !shouldSendGlobalHeartBeat) ? shouldSendGlobalHeartBeat ? HeartBeatInfo.HeartBeat.GLOBAL : shouldSendSdkHeartBeat ? HeartBeatInfo.HeartBeat.SDK : HeartBeatInfo.HeartBeat.NONE : HeartBeatInfo.HeartBeat.COMBINED;
    }

    @Override // com.google.firebase.heartbeatinfo.HeartBeatInfo
    public Task<Void> storeHeartBeatInfo(String str) {
        return this.consumers.size() <= 0 ? Tasks.forResult(null) : Tasks.call(this.backgroundExecutor, DefaultHeartBeatInfo$$Lambda$3.lambdaFactory$(this, str));
    }
}
