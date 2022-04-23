package com.bumptech.glide.load.engine;

import android.os.Build;
import android.support.annotation.NonNull;
import android.support.p001v4.util.Pools;
import android.util.Log;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.GlideTrace;
import com.bumptech.glide.util.pool.StateVerifier;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob.class */
class DecodeJob<R> implements DataFetcherGenerator.FetcherReadyCallback, Runnable, Comparable<DecodeJob<?>>, FactoryPools.Poolable {
    private static final String TAG = "DecodeJob";
    private Callback<R> callback;
    private Key currentAttemptingKey;
    private Object currentData;
    private DataSource currentDataSource;
    private DataFetcher<?> currentFetcher;
    private volatile DataFetcherGenerator currentGenerator;
    private Key currentSourceKey;
    private Thread currentThread;
    private final DiskCacheProvider diskCacheProvider;
    private DiskCacheStrategy diskCacheStrategy;
    private GlideContext glideContext;
    private int height;
    private volatile boolean isCallbackNotified;
    private volatile boolean isCancelled;
    private EngineKey loadKey;
    private Object model;
    private boolean onlyRetrieveFromCache;
    private Options options;
    private int order;
    private final Pools.Pool<DecodeJob<?>> pool;
    private Priority priority;
    private RunReason runReason;
    private Key signature;
    private Stage stage;
    private long startFetchTime;
    private int width;
    private final DecodeHelper<R> decodeHelper = new DecodeHelper<>();
    private final List<Throwable> throwables = new ArrayList();
    private final StateVerifier stateVerifier = StateVerifier.newInstance();
    private final DeferredEncodeManager<?> deferredEncodeManager = new DeferredEncodeManager<>();
    private final ReleaseManager releaseManager = new ReleaseManager();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$1 */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$1.class */
    public static /* synthetic */ class C09601 {
        static final /* synthetic */ int[] $SwitchMap$com$bumptech$glide$load$EncodeStrategy = new int[EncodeStrategy.values().length];
        static final /* synthetic */ int[] $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason;
        static final /* synthetic */ int[] $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x008a -> B:39:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x008e -> B:6:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0092 -> B:49:0x0033). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0096 -> B:43:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009a -> B:37:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x009e -> B:51:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a2 -> B:17:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a6 -> B:41:0x0073). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00aa -> B:35:0x007e). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$bumptech$glide$load$EncodeStrategy[EncodeStrategy.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$EncodeStrategy[EncodeStrategy.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage = new int[Stage.values().length];
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[Stage.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[Stage.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[Stage.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[Stage.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[Stage.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason = new int[RunReason.values().length];
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason[RunReason.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason[RunReason.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason[RunReason.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$Callback.class */
    public interface Callback<R> {
        void onLoadFailed(GlideException glideException);

        void onResourceReady(Resource<R> resource, DataSource dataSource);

        void reschedule(DecodeJob<?> decodeJob);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$DecodeCallback.class */
    public final class DecodeCallback<Z> implements DecodePath.DecodeCallback<Z> {
        private final DataSource dataSource;

        DecodeCallback(DataSource dataSource) {
            this.dataSource = dataSource;
        }

        @Override // com.bumptech.glide.load.engine.DecodePath.DecodeCallback
        @NonNull
        public Resource<Z> onResourceDecoded(@NonNull Resource<Z> resource) {
            return DecodeJob.this.onResourceDecoded(this.dataSource, resource);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$DeferredEncodeManager.class */
    public static class DeferredEncodeManager<Z> {
        private ResourceEncoder<Z> encoder;
        private Key key;
        private LockedResource<Z> toEncode;

        DeferredEncodeManager() {
        }

        void clear() {
            this.key = null;
            this.encoder = null;
            this.toEncode = null;
        }

        void encode(DiskCacheProvider diskCacheProvider, Options options) {
            GlideTrace.beginSection("DecodeJob.encode");
            try {
                diskCacheProvider.getDiskCache().put(this.key, new DataCacheWriter(this.encoder, this.toEncode, options));
            } finally {
                this.toEncode.unlock();
                GlideTrace.endSection();
            }
        }

        boolean hasResourceToEncode() {
            return this.toEncode != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        <X> void init(Key key, ResourceEncoder<X> resourceEncoder, LockedResource<X> lockedResource) {
            this.key = key;
            this.encoder = resourceEncoder;
            this.toEncode = lockedResource;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider.class */
    public interface DiskCacheProvider {
        DiskCache getDiskCache();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$ReleaseManager.class */
    public static class ReleaseManager {
        private boolean isEncodeComplete;
        private boolean isFailed;
        private boolean isReleased;

        ReleaseManager() {
        }

        private boolean isComplete(boolean z) {
            return (this.isFailed || z || this.isEncodeComplete) && this.isReleased;
        }

        boolean onEncodeComplete() {
            boolean isComplete;
            synchronized (this) {
                this.isEncodeComplete = true;
                isComplete = isComplete(false);
            }
            return isComplete;
        }

        boolean onFailed() {
            boolean isComplete;
            synchronized (this) {
                this.isFailed = true;
                isComplete = isComplete(false);
            }
            return isComplete;
        }

        boolean release(boolean z) {
            boolean isComplete;
            synchronized (this) {
                this.isReleased = true;
                isComplete = isComplete(z);
            }
            return isComplete;
        }

        void reset() {
            synchronized (this) {
                this.isEncodeComplete = false;
                this.isReleased = false;
                this.isFailed = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$RunReason.class */
    public enum RunReason {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/DecodeJob$Stage.class */
    public enum Stage {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecodeJob(DiskCacheProvider diskCacheProvider, Pools.Pool<DecodeJob<?>> pool) {
        this.diskCacheProvider = diskCacheProvider;
        this.pool = pool;
    }

    /* JADX WARN: Finally extract failed */
    private <Data> Resource<R> decodeFromData(DataFetcher<?> dataFetcher, Data data, DataSource dataSource) throws GlideException {
        if (data == null) {
            dataFetcher.cleanup();
            return null;
        }
        try {
            long logTime = LogTime.getLogTime();
            Resource<R> decodeFromFetcher = decodeFromFetcher(data, dataSource);
            if (Log.isLoggable(TAG, 2)) {
                logWithTimeAndKey("Decoded result " + decodeFromFetcher, logTime);
            }
            dataFetcher.cleanup();
            return decodeFromFetcher;
        } catch (Throwable th) {
            dataFetcher.cleanup();
            throw th;
        }
    }

    private <Data> Resource<R> decodeFromFetcher(Data data, DataSource dataSource) throws GlideException {
        return runLoadPath(data, dataSource, (LoadPath<Data, ?, R>) this.decodeHelper.getLoadPath(data.getClass()));
    }

    private void decodeFromRetrievedData() {
        if (Log.isLoggable(TAG, 2)) {
            long j = this.startFetchTime;
            logWithTimeAndKey("Retrieved data", j, "data: " + this.currentData + ", cache key: " + this.currentSourceKey + ", fetcher: " + this.currentFetcher);
        }
        Resource<R> resource = null;
        try {
            resource = decodeFromData(this.currentFetcher, this.currentData, this.currentDataSource);
        } catch (GlideException e) {
            e.setLoggingDetails(this.currentAttemptingKey, this.currentDataSource);
            this.throwables.add(e);
        }
        if (resource != null) {
            notifyEncodeAndRelease(resource, this.currentDataSource);
        } else {
            runGenerators();
        }
    }

    private DataFetcherGenerator getNextGenerator() {
        switch (C09601.$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[this.stage.ordinal()]) {
            case 1:
                return new ResourceCacheGenerator(this.decodeHelper, this);
            case 2:
                return new DataCacheGenerator(this.decodeHelper, this);
            case 3:
                return new SourceGenerator(this.decodeHelper, this);
            case 4:
                return null;
            default:
                throw new IllegalStateException("Unrecognized stage: " + this.stage);
        }
    }

    private Stage getNextStage(Stage stage) {
        switch (C09601.$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[stage.ordinal()]) {
            case 1:
                return this.diskCacheStrategy.decodeCachedData() ? Stage.DATA_CACHE : getNextStage(Stage.DATA_CACHE);
            case 2:
                return this.onlyRetrieveFromCache ? Stage.FINISHED : Stage.SOURCE;
            case 3:
            case 4:
                return Stage.FINISHED;
            case 5:
                return this.diskCacheStrategy.decodeCachedResource() ? Stage.RESOURCE_CACHE : getNextStage(Stage.RESOURCE_CACHE);
            default:
                throw new IllegalArgumentException("Unrecognized stage: " + stage);
        }
    }

    @NonNull
    private Options getOptionsWithHardwareConfig(DataSource dataSource) {
        Options options = this.options;
        if (Build.VERSION.SDK_INT < 26) {
            return options;
        }
        boolean z = dataSource == DataSource.RESOURCE_DISK_CACHE || this.decodeHelper.isScaleOnlyOrNoTransform();
        Boolean bool = (Boolean) options.get(Downsampler.ALLOW_HARDWARE_CONFIG);
        if (bool != null && (!bool.booleanValue() || z)) {
            return options;
        }
        Options options2 = new Options();
        options2.putAll(this.options);
        options2.set(Downsampler.ALLOW_HARDWARE_CONFIG, Boolean.valueOf(z));
        return options2;
    }

    private int getPriority() {
        return this.priority.ordinal();
    }

    private void logWithTimeAndKey(String str, long j) {
        logWithTimeAndKey(str, j, null);
    }

    private void logWithTimeAndKey(String str, long j, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(LogTime.getElapsedMillis(j));
        sb.append(", load key: ");
        sb.append(this.loadKey);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
        Log.v(TAG, sb.toString());
    }

    private void notifyComplete(Resource<R> resource, DataSource dataSource) {
        setNotifiedOrThrow();
        this.callback.onResourceReady(resource, dataSource);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void notifyEncodeAndRelease(Resource<R> resource, DataSource dataSource) {
        if (resource instanceof Initializable) {
            ((Initializable) resource).initialize();
        }
        LockedResource lockedResource = 0;
        Resource<R> resource2 = resource;
        if (this.deferredEncodeManager.hasResourceToEncode()) {
            resource2 = LockedResource.obtain(resource);
            lockedResource = resource2;
        }
        notifyComplete(resource2, dataSource);
        this.stage = Stage.ENCODE;
        try {
            if (this.deferredEncodeManager.hasResourceToEncode()) {
                this.deferredEncodeManager.encode(this.diskCacheProvider, this.options);
            }
            if (lockedResource != 0) {
                lockedResource.unlock();
            }
            onEncodeComplete();
        } catch (Throwable th) {
            if (lockedResource != 0) {
                lockedResource.unlock();
            }
            throw th;
        }
    }

    private void notifyFailed() {
        setNotifiedOrThrow();
        this.callback.onLoadFailed(new GlideException("Failed to load resource", new ArrayList(this.throwables)));
        onLoadFailed();
    }

    private void onEncodeComplete() {
        if (this.releaseManager.onEncodeComplete()) {
            releaseInternal();
        }
    }

    private void onLoadFailed() {
        if (this.releaseManager.onFailed()) {
            releaseInternal();
        }
    }

    private void releaseInternal() {
        this.releaseManager.reset();
        this.deferredEncodeManager.clear();
        this.decodeHelper.clear();
        this.isCallbackNotified = false;
        this.glideContext = null;
        this.signature = null;
        this.options = null;
        this.priority = null;
        this.loadKey = null;
        this.callback = null;
        this.stage = null;
        this.currentGenerator = null;
        this.currentThread = null;
        this.currentSourceKey = null;
        this.currentData = null;
        this.currentDataSource = null;
        this.currentFetcher = null;
        this.startFetchTime = 0L;
        this.isCancelled = false;
        this.model = null;
        this.throwables.clear();
        this.pool.release(this);
    }

    private void runGenerators() {
        this.currentThread = Thread.currentThread();
        this.startFetchTime = LogTime.getLogTime();
        boolean z = false;
        do {
            boolean z2 = z;
            if (!this.isCancelled) {
                z2 = z;
                if (this.currentGenerator != null) {
                    z = this.currentGenerator.startNext();
                    z2 = z;
                    if (!z) {
                        this.stage = getNextStage(this.stage);
                        this.currentGenerator = getNextGenerator();
                    }
                }
            }
            if ((this.stage == Stage.FINISHED || this.isCancelled) && !z2) {
                notifyFailed();
                return;
            }
            return;
        } while (this.stage != Stage.SOURCE);
        reschedule();
    }

    private <Data, ResourceType> Resource<R> runLoadPath(Data data, DataSource dataSource, LoadPath<Data, ResourceType, R> loadPath) throws GlideException {
        Options optionsWithHardwareConfig = getOptionsWithHardwareConfig(dataSource);
        DataRewinder<Data> rewinder = this.glideContext.getRegistry().getRewinder(data);
        try {
            return loadPath.load(rewinder, optionsWithHardwareConfig, this.width, this.height, new DecodeCallback(dataSource));
        } finally {
            rewinder.cleanup();
        }
    }

    private void runWrapped() {
        switch (C09601.$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason[this.runReason.ordinal()]) {
            case 1:
                this.stage = getNextStage(Stage.INITIALIZE);
                this.currentGenerator = getNextGenerator();
                runGenerators();
                return;
            case 2:
                runGenerators();
                return;
            case 3:
                decodeFromRetrievedData();
                return;
            default:
                throw new IllegalStateException("Unrecognized run reason: " + this.runReason);
        }
    }

    private void setNotifiedOrThrow() {
        this.stateVerifier.throwIfRecycled();
        if (this.isCallbackNotified) {
            throw new IllegalStateException("Already notified");
        }
        this.isCallbackNotified = true;
    }

    public void cancel() {
        this.isCancelled = true;
        DataFetcherGenerator dataFetcherGenerator = this.currentGenerator;
        if (dataFetcherGenerator != null) {
            dataFetcherGenerator.cancel();
        }
    }

    public int compareTo(@NonNull DecodeJob<?> decodeJob) {
        int priority = getPriority() - decodeJob.getPriority();
        int i = priority;
        if (priority == 0) {
            i = this.order - decodeJob.order;
        }
        return i;
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    @NonNull
    public StateVerifier getVerifier() {
        return this.stateVerifier;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DecodeJob<R> init(GlideContext glideContext, Object obj, EngineKey engineKey, Key key, int i, int i2, Class<?> cls, Class<R> cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, Map<Class<?>, Transformation<?>> map, boolean z, boolean z2, boolean z3, Options options, Callback<R> callback, int i3) {
        this.decodeHelper.init(glideContext, obj, key, i, i2, diskCacheStrategy, cls, cls2, priority, options, map, z, z2, this.diskCacheProvider);
        this.glideContext = glideContext;
        this.signature = key;
        this.priority = priority;
        this.loadKey = engineKey;
        this.width = i;
        this.height = i2;
        this.diskCacheStrategy = diskCacheStrategy;
        this.onlyRetrieveFromCache = z3;
        this.options = options;
        this.callback = callback;
        this.order = i3;
        this.runReason = RunReason.INITIALIZE;
        this.model = obj;
        return this;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void onDataFetcherFailed(Key key, Exception exc, DataFetcher<?> dataFetcher, DataSource dataSource) {
        dataFetcher.cleanup();
        GlideException glideException = new GlideException("Fetching data failed", exc);
        glideException.setLoggingDetails(key, dataSource, dataFetcher.getDataClass());
        this.throwables.add(glideException);
        if (Thread.currentThread() != this.currentThread) {
            this.runReason = RunReason.SWITCH_TO_SOURCE_SERVICE;
            this.callback.reschedule(this);
            return;
        }
        runGenerators();
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void onDataFetcherReady(Key key, Object obj, DataFetcher<?> dataFetcher, DataSource dataSource, Key key2) {
        this.currentSourceKey = key;
        this.currentData = obj;
        this.currentFetcher = dataFetcher;
        this.currentDataSource = dataSource;
        this.currentAttemptingKey = key2;
        if (Thread.currentThread() != this.currentThread) {
            this.runReason = RunReason.DECODE_DATA;
            this.callback.reschedule(this);
            return;
        }
        GlideTrace.beginSection("DecodeJob.decodeFromRetrievedData");
        try {
            decodeFromRetrievedData();
        } finally {
            GlideTrace.endSection();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    <Z> Resource<Z> onResourceDecoded(DataSource dataSource, @NonNull Resource<Z> resource) {
        Transformation<Z> transformation;
        Resource<Z> resource2;
        EncodeStrategy encodeStrategy;
        ResourceEncoder resourceEncoder;
        Key key;
        Class<?> cls = resource.get().getClass();
        ResourceEncoder resourceEncoder2 = (ResourceEncoder<Z>) false;
        if (dataSource != DataSource.RESOURCE_DISK_CACHE) {
            transformation = this.decodeHelper.getTransformation(cls);
            resource2 = transformation.transform(this.glideContext, resource, this.width, this.height);
        } else {
            resource2 = resource;
            transformation = null;
        }
        if (!resource.equals(resource2)) {
            resource.recycle();
        }
        if (this.decodeHelper.isResourceEncoderAvailable(resource2)) {
            ResourceEncoder resourceEncoder3 = (ResourceEncoder<Z>) this.decodeHelper.getResultEncoder(resource2);
            encodeStrategy = resourceEncoder3.getEncodeStrategy(this.options);
            resourceEncoder = resourceEncoder3;
        } else {
            encodeStrategy = EncodeStrategy.NONE;
            resourceEncoder = resourceEncoder2;
        }
        Resource<Z> resource3 = resource2;
        if (this.diskCacheStrategy.isResourceCacheable(!this.decodeHelper.isSourceKey(this.currentSourceKey), dataSource, encodeStrategy)) {
            if (resourceEncoder == null) {
                throw new Registry.NoResultEncoderAvailableException(resource2.get().getClass());
            }
            switch (C09601.$SwitchMap$com$bumptech$glide$load$EncodeStrategy[encodeStrategy.ordinal()]) {
                case 1:
                    key = new DataCacheKey(this.currentSourceKey, this.signature);
                    break;
                case 2:
                    key = new ResourceCacheKey(this.decodeHelper.getArrayPool(), this.currentSourceKey, this.signature, this.width, this.height, transformation, cls, this.options);
                    break;
                default:
                    throw new IllegalArgumentException("Unknown strategy: " + encodeStrategy);
            }
            resource3 = LockedResource.obtain(resource2);
            this.deferredEncodeManager.init(key, resourceEncoder, resource3);
        }
        return resource3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void release(boolean z) {
        if (this.releaseManager.release(z)) {
            releaseInternal();
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public void reschedule() {
        this.runReason = RunReason.SWITCH_TO_SOURCE_SERVICE;
        this.callback.reschedule(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002d, code lost:
        if (r0 != null) goto L_0x0030;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0030, code lost:
        r0.cleanup();
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        com.bumptech.glide.util.pool.GlideTrace.endSection();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00a2, code lost:
        if (r0 != null) goto L_0x0030;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00a8, code lost:
        return;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            r4 = this;
            java.lang.String r0 = "DecodeJob#run(model=%s)"
            r1 = r4
            java.lang.Object r1 = r1.model
            com.bumptech.glide.util.pool.GlideTrace.beginSectionFormat(r0, r1)
            r0 = r4
            com.bumptech.glide.load.data.DataFetcher<?> r0 = r0.currentFetcher
            r5 = r0
            r0 = r4
            boolean r0 = r0.isCancelled     // Catch: Throwable -> 0x0040
            if (r0 == 0) goto L_0x0028
            r0 = r4
            r0.notifyFailed()     // Catch: Throwable -> 0x0040
            r0 = r5
            if (r0 == 0) goto L_0x0024
            r0 = r5
            r0.cleanup()
        L_0x0024:
            com.bumptech.glide.util.pool.GlideTrace.endSection()
            return
        L_0x0028:
            r0 = r4
            r0.runWrapped()     // Catch: Throwable -> 0x0040
            r0 = r5
            if (r0 == 0) goto L_0x0036
        L_0x0030:
            r0 = r5
            r0.cleanup()
        L_0x0036:
            com.bumptech.glide.util.pool.GlideTrace.endSection()
            goto L_0x00a8
        L_0x003c:
            r6 = move-exception
            goto L_0x00a9
        L_0x0040:
            r6 = move-exception
            java.lang.String r0 = "DecodeJob"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)     // Catch: all -> 0x003c
            if (r0 == 0) goto L_0x007f
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x003c
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: all -> 0x003c
            r0 = r7
            java.lang.String r1 = "DecodeJob threw unexpectedly, isCancelled: "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x003c
            r0 = r7
            r1 = r4
            boolean r1 = r1.isCancelled     // Catch: all -> 0x003c
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x003c
            r0 = r7
            java.lang.String r1 = ", stage: "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x003c
            r0 = r7
            r1 = r4
            com.bumptech.glide.load.engine.DecodeJob$Stage r1 = r1.stage     // Catch: all -> 0x003c
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x003c
            java.lang.String r0 = "DecodeJob"
            r1 = r7
            java.lang.String r1 = r1.toString()     // Catch: all -> 0x003c
            r2 = r6
            int r0 = android.util.Log.d(r0, r1, r2)     // Catch: all -> 0x003c
        L_0x007f:
            r0 = r4
            com.bumptech.glide.load.engine.DecodeJob$Stage r0 = r0.stage     // Catch: all -> 0x003c
            com.bumptech.glide.load.engine.DecodeJob$Stage r1 = com.bumptech.glide.load.engine.DecodeJob.Stage.ENCODE     // Catch: all -> 0x003c
            if (r0 == r1) goto L_0x0098
            r0 = r4
            java.util.List<java.lang.Throwable> r0 = r0.throwables     // Catch: all -> 0x003c
            r1 = r6
            boolean r0 = r0.add(r1)     // Catch: all -> 0x003c
            r0 = r4
            r0.notifyFailed()     // Catch: all -> 0x003c
        L_0x0098:
            r0 = r4
            boolean r0 = r0.isCancelled     // Catch: all -> 0x003c
            if (r0 != 0) goto L_0x00a1
            r0 = r6
            throw r0     // Catch: all -> 0x003c
        L_0x00a1:
            r0 = r5
            if (r0 == 0) goto L_0x0036
            goto L_0x0030
        L_0x00a8:
            return
        L_0x00a9:
            r0 = r5
            if (r0 == 0) goto L_0x00b3
            r0 = r5
            r0.cleanup()
        L_0x00b3:
            com.bumptech.glide.util.pool.GlideTrace.endSection()
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.DecodeJob.run():void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean willDecodeFromCache() {
        Stage nextStage = getNextStage(Stage.INITIALIZE);
        return nextStage == Stage.RESOURCE_CACHE || nextStage == Stage.DATA_CACHE;
    }
}
