package com.amazonaws.metrics;

import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.PropertiesCredentials;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.MetricCollector;
import com.amazonaws.regions.Regions;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSServiceMetrics;
import java.io.File;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/AwsSdkMetrics.class */
public enum AwsSdkMetrics {
    ;
    
    public static final String AWS_CREDENTAIL_PROPERTIES_FILE = "credentialFile";
    public static final String CLOUDWATCH_REGION = "cloudwatchRegion";
    private static final boolean DEFAULT_METRICS_ENABLED;
    private static final String DEFAULT_METRIC_COLLECTOR_FACTORY = "com.amazonaws.metrics.internal.cloudwatch.DefaultMetricCollectorFactory";
    public static final String DEFAULT_METRIC_NAMESPACE = "AWSSDK/Java";
    public static final String EXCLUDE_MACHINE_METRICS = "excludeMachineMetrics";
    public static final String HOST_METRIC_NAME = "hostMetricName";
    public static final String INCLUDE_PER_HOST_METRICS = "includePerHostMetrics";
    public static final String JVM_METRIC_NAME = "jvmMetricName";
    private static final String MBEAN_OBJECT_NAME = "com.amazonaws.management:type=" + AwsSdkMetrics.class.getSimpleName();
    public static final String METRIC_NAME_SPACE = "metricNameSpace";
    public static final String METRIC_QUEUE_SIZE = "metricQueueSize";
    public static final String QUEUE_POLL_TIMEOUT_MILLI = "getQueuePollTimeoutMilli";
    private static final int QUEUE_POLL_TIMEOUT_MILLI_MINUMUM = 1000;
    private static final MetricRegistry REGISTRY;
    public static final String USE_SINGLE_METRIC_NAMESPACE = "useSingleMetricNamespace";
    private static volatile String credentialFile;
    private static volatile AWSCredentialsProvider credentialProvider;
    private static boolean dirtyEnabling;
    private static volatile String hostMetricName;
    private static volatile String jvmMetricName;
    private static volatile boolean machineMetricsExcluded;
    private static volatile MetricCollector mc;
    private static volatile String metricNameSpace;
    private static volatile Integer metricQueueSize;
    private static volatile boolean perHostMetricsIncluded;
    private static volatile Long queuePollTimeoutMilli;
    private static volatile Regions region;
    private static volatile boolean singleMetricNamespace;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry.class */
    static class MetricRegistry {

        /* renamed from: a  reason: collision with root package name */
        final Set<MetricType> f6668a;

        /* renamed from: b  reason: collision with root package name */
        volatile Set<MetricType> f6669b;

        MetricRegistry() {
            HashSet hashSet = new HashSet();
            this.f6668a = hashSet;
            hashSet.add(AWSRequestMetrics.Field.ClientExecuteTime);
            hashSet.add(AWSRequestMetrics.Field.Exception);
            hashSet.add(AWSRequestMetrics.Field.HttpClientRetryCount);
            hashSet.add(AWSRequestMetrics.Field.HttpRequestTime);
            hashSet.add(AWSRequestMetrics.Field.RequestCount);
            hashSet.add(AWSRequestMetrics.Field.RetryCount);
            hashSet.add(AWSRequestMetrics.Field.HttpClientSendRequestTime);
            hashSet.add(AWSRequestMetrics.Field.HttpClientReceiveResponseTime);
            hashSet.add(AWSServiceMetrics.HttpClientGetConnectionTime);
            a();
        }

        final void a() {
            this.f6669b = Collections.unmodifiableSet(new HashSet(this.f6668a));
        }

        public final boolean a(MetricType metricType) {
            boolean add;
            synchronized (this.f6668a) {
                add = this.f6668a.add(metricType);
                if (add) {
                    a();
                }
            }
            return add;
        }

        public final <T extends MetricType> boolean a(Collection<T> collection) {
            boolean addAll;
            synchronized (this.f6668a) {
                addAll = this.f6668a.addAll(collection);
                if (addAll) {
                    a();
                }
            }
            return addAll;
        }

        public final boolean b(MetricType metricType) {
            boolean remove;
            synchronized (this.f6668a) {
                remove = this.f6668a.remove(metricType);
                if (remove) {
                    a();
                }
            }
            return remove;
        }
    }

    static {
        metricNameSpace = DEFAULT_METRIC_NAMESPACE;
        String property = System.getProperty(SDKGlobalConfiguration.DEFAULT_METRICS_SYSTEM_PROPERTY);
        boolean z = property != null;
        DEFAULT_METRICS_ENABLED = z;
        if (z) {
            String[] split = property.split(",");
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            for (String str : split) {
                String trim = str.trim();
                if (!z2 && EXCLUDE_MACHINE_METRICS.equals(trim)) {
                    z2 = true;
                    z3 = z3;
                    z4 = z4;
                } else if (!z3 && INCLUDE_PER_HOST_METRICS.equals(trim)) {
                    z3 = true;
                    z2 = z2;
                    z4 = z4;
                } else if (z4 || !USE_SINGLE_METRIC_NAMESPACE.equals(trim)) {
                    String[] split2 = trim.split("=");
                    z2 = z2;
                    z3 = z3;
                    z4 = z4;
                    if (split2.length == 2) {
                        String trim2 = split2[0].trim();
                        String trim3 = split2[1].trim();
                        try {
                            if (AWS_CREDENTAIL_PROPERTIES_FILE.equals(trim2)) {
                                setCredentialFile0(trim3);
                                z2 = z2;
                                z3 = z3;
                                z4 = z4;
                            } else if (CLOUDWATCH_REGION.equals(trim2)) {
                                region = Regions.fromName(trim3);
                                z2 = z2;
                                z3 = z3;
                                z4 = z4;
                            } else if (METRIC_QUEUE_SIZE.equals(trim2)) {
                                Integer num = new Integer(trim3);
                                if (num.intValue() > 0) {
                                    metricQueueSize = num;
                                    z2 = z2;
                                    z3 = z3;
                                    z4 = z4;
                                } else {
                                    throw new IllegalArgumentException("metricQueueSize must be at least 1");
                                }
                            } else if (QUEUE_POLL_TIMEOUT_MILLI.equals(trim2)) {
                                Long l = new Long(trim3);
                                if (l.intValue() >= 1000) {
                                    queuePollTimeoutMilli = l;
                                    z2 = z2;
                                    z3 = z3;
                                    z4 = z4;
                                } else {
                                    throw new IllegalArgumentException("getQueuePollTimeoutMilli must be at least 1000");
                                }
                            } else if (METRIC_NAME_SPACE.equals(trim2)) {
                                metricNameSpace = trim3;
                                z2 = z2;
                                z3 = z3;
                                z4 = z4;
                            } else if (JVM_METRIC_NAME.equals(trim2)) {
                                jvmMetricName = trim3;
                                z2 = z2;
                                z3 = z3;
                                z4 = z4;
                            } else if (HOST_METRIC_NAME.equals(trim2)) {
                                hostMetricName = trim3;
                                z2 = z2;
                                z3 = z3;
                                z4 = z4;
                            } else {
                                LogFactory.a(AwsSdkMetrics.class).b("Ignoring unrecognized parameter: ".concat(String.valueOf(trim)));
                                z2 = z2;
                                z3 = z3;
                                z4 = z4;
                            }
                        } catch (Exception e) {
                            LogFactory.a(AwsSdkMetrics.class).a("Ignoring failure", e);
                            z4 = z4;
                            z3 = z3;
                            z2 = z2;
                        }
                    } else {
                        continue;
                    }
                } else {
                    z4 = true;
                    z2 = z2;
                    z3 = z3;
                }
            }
            machineMetricsExcluded = z2;
            perHostMetricsIncluded = z3;
            singleMetricNamespace = z4;
        }
        REGISTRY = new MetricRegistry();
    }

    public static boolean add(MetricType metricType) {
        if (metricType == null) {
            return false;
        }
        return REGISTRY.a(metricType);
    }

    public static <T extends MetricType> boolean addAll(Collection<T> collection) {
        if (collection == null || collection.size() == 0) {
            return false;
        }
        return REGISTRY.a(collection);
    }

    public static void disableMetrics() {
        setMetricCollector(MetricCollector.f6673a);
    }

    public static boolean enableDefaultMetrics() {
        synchronized (AwsSdkMetrics.class) {
            try {
                if (!dirtyEnabling) {
                    dirtyEnabling = true;
                    try {
                        MetricCollector a2 = ((MetricCollector.Factory) Class.forName(DEFAULT_METRIC_COLLECTOR_FACTORY).newInstance()).a();
                        if (a2 != null) {
                            setMetricCollector(a2);
                            dirtyEnabling = false;
                            return true;
                        }
                    } catch (Exception e) {
                        LogFactory.a(AwsSdkMetrics.class).b("Failed to enable the default metrics", e);
                    }
                    dirtyEnabling = false;
                    return false;
                }
                throw new IllegalStateException("Reentrancy is not allowed");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static String getCredentailFile() {
        return credentialFile;
    }

    public static AWSCredentialsProvider getCredentialProvider() {
        for (StackTraceElement stackTraceElement : Thread.currentThread().getStackTrace()) {
            if (stackTraceElement.getClassName().equals(DEFAULT_METRIC_COLLECTOR_FACTORY)) {
                return credentialProvider;
            }
        }
        SecurityException securityException = new SecurityException();
        LogFactory.a(AwsSdkMetrics.class).b("Illegal attempt to access the credential provider", securityException);
        throw securityException;
    }

    public static String getHostMetricName() {
        return hostMetricName;
    }

    static MetricCollector getInternalMetricCollector() {
        return mc;
    }

    public static String getJvmMetricName() {
        return jvmMetricName;
    }

    public static <T extends MetricCollector> T getMetricCollector() {
        if (mc == null && isDefaultMetricsEnabled()) {
            enableDefaultMetrics();
        }
        return mc == null ? (T) MetricCollector.f6673a : (T) mc;
    }

    public static String getMetricNameSpace() {
        return metricNameSpace;
    }

    public static Integer getMetricQueueSize() {
        return metricQueueSize;
    }

    public static Set<MetricType> getPredefinedMetrics() {
        return REGISTRY.f6669b;
    }

    public static Long getQueuePollTimeoutMilli() {
        return queuePollTimeoutMilli;
    }

    public static Regions getRegion() {
        return region;
    }

    public static <T extends RequestMetricCollector> T getRequestMetricCollector() {
        if (mc == null && isDefaultMetricsEnabled()) {
            enableDefaultMetrics();
        }
        return mc == null ? (T) RequestMetricCollector.f6675a : (T) mc.a();
    }

    public static <T extends ServiceMetricCollector> T getServiceMetricCollector() {
        if (mc == null && isDefaultMetricsEnabled()) {
            enableDefaultMetrics();
        }
        return mc == null ? (T) ServiceMetricCollector.f6676a : (T) mc.b();
    }

    public static boolean isDefaultMetricsEnabled() {
        return DEFAULT_METRICS_ENABLED;
    }

    public static boolean isMachineMetricExcluded() {
        return machineMetricsExcluded;
    }

    public static boolean isMetricsEnabled() {
        return false;
    }

    public static boolean isPerHostMetricEnabled() {
        if (perHostMetricsIncluded) {
            return true;
        }
        String str = hostMetricName;
        return (str == null ? "" : str.trim()).length() > 0;
    }

    public static boolean isPerHostMetricIncluded() {
        return perHostMetricsIncluded;
    }

    public static boolean isSingleMetricNamespace() {
        return singleMetricNamespace;
    }

    public static boolean remove(MetricType metricType) {
        if (metricType == null) {
            return false;
        }
        return REGISTRY.b(metricType);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
        if (r3.size() == 0) goto L_0x001a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T extends com.amazonaws.metrics.MetricType> void set(java.util.Collection<T> r3) {
        /*
            com.amazonaws.metrics.AwsSdkMetrics$MetricRegistry r0 = com.amazonaws.metrics.AwsSdkMetrics.REGISTRY
            r4 = r0
            r0 = r4
            java.util.Set<com.amazonaws.metrics.MetricType> r0 = r0.f6668a
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            if (r0 == 0) goto L_0x001a
            r0 = r3
            r6 = r0
            r0 = r3
            int r0 = r0.size()     // Catch: all -> 0x004b
            if (r0 != 0) goto L_0x0033
        L_0x001a:
            r0 = r4
            java.util.Set<com.amazonaws.metrics.MetricType> r0 = r0.f6668a     // Catch: all -> 0x004b
            int r0 = r0.size()     // Catch: all -> 0x004b
            if (r0 != 0) goto L_0x0029
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x004b
            return
        L_0x0029:
            r0 = r3
            r6 = r0
            r0 = r3
            if (r0 != 0) goto L_0x0033
            java.util.List r0 = java.util.Collections.emptyList()     // Catch: all -> 0x004b
            r6 = r0
        L_0x0033:
            r0 = r4
            java.util.Set<com.amazonaws.metrics.MetricType> r0 = r0.f6668a     // Catch: all -> 0x004b
            r0.clear()     // Catch: all -> 0x004b
            r0 = r4
            r1 = r6
            boolean r0 = r0.a(r1)     // Catch: all -> 0x004b
            if (r0 != 0) goto L_0x0048
            r0 = r4
            r0.a()     // Catch: all -> 0x004b
        L_0x0048:
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x004b
            return
        L_0x004b:
            r3 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: all -> 0x004b
            r0 = r3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.metrics.AwsSdkMetrics.set(java.util.Collection):void");
    }

    public static void setCredentialFile(String str) throws IOException {
        setCredentialFile0(str);
    }

    private static void setCredentialFile0(String str) throws IOException {
        final PropertiesCredentials propertiesCredentials = new PropertiesCredentials(new File(str));
        synchronized (AwsSdkMetrics.class) {
            try {
                credentialProvider = new AWSCredentialsProvider() { // from class: com.amazonaws.metrics.AwsSdkMetrics.1
                    @Override // com.amazonaws.auth.AWSCredentialsProvider
                    public final AWSCredentials a() {
                        return PropertiesCredentials.this;
                    }
                };
                credentialFile = str;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setCredentialProvider(AWSCredentialsProvider aWSCredentialsProvider) {
        synchronized (AwsSdkMetrics.class) {
            try {
                credentialProvider = aWSCredentialsProvider;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setHostMetricName(String str) {
        hostMetricName = str;
    }

    public static void setJvmMetricName(String str) {
        jvmMetricName = str;
    }

    public static void setMachineMetricsExcluded(boolean z) {
        machineMetricsExcluded = z;
    }

    public static void setMetricCollector(MetricCollector metricCollector) {
        synchronized (AwsSdkMetrics.class) {
            try {
                mc = metricCollector;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setMetricNameSpace(String str) {
        if (str == null || str.trim().length() == 0) {
            throw new IllegalArgumentException();
        }
        metricNameSpace = str;
    }

    public static void setMetricQueueSize(Integer num) {
        metricQueueSize = num;
    }

    public static void setPerHostMetricsIncluded(boolean z) {
        perHostMetricsIncluded = z;
    }

    public static void setQueuePollTimeoutMilli(Long l) {
        queuePollTimeoutMilli = l;
    }

    public static void setRegion(Regions regions) {
        region = regions;
    }

    public static void setSingleMetricNamespace(boolean z) {
        singleMetricNamespace = z;
    }
}
