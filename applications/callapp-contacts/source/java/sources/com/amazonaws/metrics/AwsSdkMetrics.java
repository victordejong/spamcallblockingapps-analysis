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

    /* renamed from: mc */
    private static volatile MetricCollector f12121mc;
    private static volatile String metricNameSpace;
    private static volatile Integer metricQueueSize;
    private static volatile boolean perHostMetricsIncluded;
    private static volatile Long queuePollTimeoutMilli;
    private static volatile Regions region;
    private static volatile boolean singleMetricNamespace;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry.class */
    public static class MetricRegistry {

        /* renamed from: a */
        final Set<MetricType> f12123a;

        /* renamed from: b */
        volatile Set<MetricType> f12124b;

        MetricRegistry() {
            HashSet hashSet = new HashSet();
            this.f12123a = hashSet;
            hashSet.add(AWSRequestMetrics.Field.ClientExecuteTime);
            hashSet.add(AWSRequestMetrics.Field.Exception);
            hashSet.add(AWSRequestMetrics.Field.HttpClientRetryCount);
            hashSet.add(AWSRequestMetrics.Field.HttpRequestTime);
            hashSet.add(AWSRequestMetrics.Field.RequestCount);
            hashSet.add(AWSRequestMetrics.Field.RetryCount);
            hashSet.add(AWSRequestMetrics.Field.HttpClientSendRequestTime);
            hashSet.add(AWSRequestMetrics.Field.HttpClientReceiveResponseTime);
            hashSet.add(AWSServiceMetrics.HttpClientGetConnectionTime);
            m38580a();
        }

        /* renamed from: a */
        final void m38580a() {
            this.f12124b = Collections.unmodifiableSet(new HashSet(this.f12123a));
        }

        /* renamed from: a */
        public final boolean m38579a(MetricType metricType) {
            boolean add;
            synchronized (this.f12123a) {
                add = this.f12123a.add(metricType);
                if (add) {
                    m38580a();
                }
            }
            return add;
        }

        /* renamed from: a */
        public final <T extends MetricType> boolean m38578a(Collection<T> collection) {
            boolean addAll;
            synchronized (this.f12123a) {
                addAll = this.f12123a.addAll(collection);
                if (addAll) {
                    m38580a();
                }
            }
            return addAll;
        }

        /* renamed from: b */
        public final boolean m38577b(MetricType metricType) {
            boolean remove;
            synchronized (this.f12123a) {
                remove = this.f12123a.remove(metricType);
                if (remove) {
                    m38580a();
                }
            }
            return remove;
        }
    }

    static {
        boolean z;
        boolean z2;
        boolean z3;
        metricNameSpace = DEFAULT_METRIC_NAMESPACE;
        String property = System.getProperty(SDKGlobalConfiguration.DEFAULT_METRICS_SYSTEM_PROPERTY);
        boolean z4 = property != null;
        DEFAULT_METRICS_ENABLED = z4;
        if (z4) {
            String[] split = property.split(",");
            int length = split.length;
            int i = 0;
            boolean z5 = false;
            boolean z6 = false;
            boolean z7 = false;
            while (true) {
                boolean z8 = z7;
                if (i >= length) {
                    machineMetricsExcluded = z5;
                    perHostMetricsIncluded = z6;
                    singleMetricNamespace = z8;
                    break;
                }
                String trim = split[i].trim();
                if (!z5 && EXCLUDE_MACHINE_METRICS.equals(trim)) {
                    z3 = true;
                    z2 = z6;
                    z = z8;
                } else if (!z6 && INCLUDE_PER_HOST_METRICS.equals(trim)) {
                    z2 = true;
                    z3 = z5;
                    z = z8;
                } else if (z8 || !USE_SINGLE_METRIC_NAMESPACE.equals(trim)) {
                    String[] split2 = trim.split("=");
                    z3 = z5;
                    z2 = z6;
                    z = z8;
                    if (split2.length == 2) {
                        String trim2 = split2[0].trim();
                        String trim3 = split2[1].trim();
                        try {
                            if (AWS_CREDENTAIL_PROPERTIES_FILE.equals(trim2)) {
                                setCredentialFile0(trim3);
                                z3 = z5;
                                z2 = z6;
                                z = z8;
                            } else if (CLOUDWATCH_REGION.equals(trim2)) {
                                region = Regions.fromName(trim3);
                                z3 = z5;
                                z2 = z6;
                                z = z8;
                            } else if (METRIC_QUEUE_SIZE.equals(trim2)) {
                                Integer num = new Integer(trim3);
                                if (num.intValue() <= 0) {
                                    throw new IllegalArgumentException("metricQueueSize must be at least 1");
                                }
                                metricQueueSize = num;
                                z3 = z5;
                                z2 = z6;
                                z = z8;
                            } else if (QUEUE_POLL_TIMEOUT_MILLI.equals(trim2)) {
                                Long l = new Long(trim3);
                                if (l.intValue() < 1000) {
                                    throw new IllegalArgumentException("getQueuePollTimeoutMilli must be at least 1000");
                                }
                                queuePollTimeoutMilli = l;
                                z3 = z5;
                                z2 = z6;
                                z = z8;
                            } else if (METRIC_NAME_SPACE.equals(trim2)) {
                                metricNameSpace = trim3;
                                z3 = z5;
                                z2 = z6;
                                z = z8;
                            } else if (JVM_METRIC_NAME.equals(trim2)) {
                                jvmMetricName = trim3;
                                z3 = z5;
                                z2 = z6;
                                z = z8;
                            } else if (HOST_METRIC_NAME.equals(trim2)) {
                                hostMetricName = trim3;
                                z3 = z5;
                                z2 = z6;
                                z = z8;
                            } else {
                                LogFactory.m38584a(AwsSdkMetrics.class).mo38593b("Ignoring unrecognized parameter: ".concat(String.valueOf(trim)));
                                z3 = z5;
                                z2 = z6;
                                z = z8;
                            }
                        } catch (Exception e) {
                            LogFactory.m38584a(AwsSdkMetrics.class).mo38595a("Ignoring failure", e);
                            z = z8;
                            z2 = z6;
                            z3 = z5;
                        }
                    } else {
                        continue;
                    }
                } else {
                    z = true;
                    z3 = z5;
                    z2 = z6;
                }
                i++;
                z5 = z3;
                z6 = z2;
                z7 = z;
            }
        }
        REGISTRY = new MetricRegistry();
    }

    public static boolean add(MetricType metricType) {
        if (metricType == null) {
            return false;
        }
        return REGISTRY.m38579a(metricType);
    }

    public static <T extends MetricType> boolean addAll(Collection<T> collection) {
        if (collection == null || collection.size() == 0) {
            return false;
        }
        return REGISTRY.m38578a(collection);
    }

    public static void disableMetrics() {
        setMetricCollector(MetricCollector.f12128a);
    }

    public static boolean enableDefaultMetrics() {
        synchronized (AwsSdkMetrics.class) {
            try {
                if (dirtyEnabling) {
                    throw new IllegalStateException("Reentrancy is not allowed");
                }
                dirtyEnabling = true;
                try {
                    MetricCollector m38568a = ((MetricCollector.Factory) Class.forName(DEFAULT_METRIC_COLLECTOR_FACTORY).newInstance()).m38568a();
                    if (m38568a != null) {
                        setMetricCollector(m38568a);
                        dirtyEnabling = false;
                        return true;
                    }
                } catch (Exception e) {
                    LogFactory.m38584a(AwsSdkMetrics.class).mo38592b("Failed to enable the default metrics", e);
                }
                dirtyEnabling = false;
                return false;
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
        LogFactory.m38584a(AwsSdkMetrics.class).mo38592b("Illegal attempt to access the credential provider", securityException);
        throw securityException;
    }

    public static String getHostMetricName() {
        return hostMetricName;
    }

    static MetricCollector getInternalMetricCollector() {
        return f12121mc;
    }

    public static String getJvmMetricName() {
        return jvmMetricName;
    }

    public static <T extends MetricCollector> T getMetricCollector() {
        if (f12121mc == null && isDefaultMetricsEnabled()) {
            enableDefaultMetrics();
        }
        return f12121mc == null ? (T) MetricCollector.f12128a : (T) f12121mc;
    }

    public static String getMetricNameSpace() {
        return metricNameSpace;
    }

    public static Integer getMetricQueueSize() {
        return metricQueueSize;
    }

    public static Set<MetricType> getPredefinedMetrics() {
        return REGISTRY.f12124b;
    }

    public static Long getQueuePollTimeoutMilli() {
        return queuePollTimeoutMilli;
    }

    public static Regions getRegion() {
        return region;
    }

    public static <T extends RequestMetricCollector> T getRequestMetricCollector() {
        if (f12121mc == null && isDefaultMetricsEnabled()) {
            enableDefaultMetrics();
        }
        return f12121mc == null ? (T) RequestMetricCollector.f12130a : (T) f12121mc.mo38570a();
    }

    public static <T extends ServiceMetricCollector> T getServiceMetricCollector() {
        if (f12121mc == null && isDefaultMetricsEnabled()) {
            enableDefaultMetrics();
        }
        return f12121mc == null ? (T) ServiceMetricCollector.f12131a : (T) f12121mc.mo38569b();
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
        return REGISTRY.m38577b(metricType);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
        if (r3.size() == 0) goto L9;
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
            java.util.Set<com.amazonaws.metrics.MetricType> r0 = r0.f12123a
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            r0 = r3
            if (r0 == 0) goto L1a
            r0 = r3
            r6 = r0
            r0 = r3
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L4b
            if (r0 != 0) goto L33
        L1a:
            r0 = r4
            java.util.Set<com.amazonaws.metrics.MetricType> r0 = r0.f12123a     // Catch: java.lang.Throwable -> L4b
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L4b
            if (r0 != 0) goto L29
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4b
            return
        L29:
            r0 = r3
            r6 = r0
            r0 = r3
            if (r0 != 0) goto L33
            java.util.List r0 = java.util.Collections.emptyList()     // Catch: java.lang.Throwable -> L4b
            r6 = r0
        L33:
            r0 = r4
            java.util.Set<com.amazonaws.metrics.MetricType> r0 = r0.f12123a     // Catch: java.lang.Throwable -> L4b
            r0.clear()     // Catch: java.lang.Throwable -> L4b
            r0 = r4
            r1 = r6
            boolean r0 = r0.m38578a(r1)     // Catch: java.lang.Throwable -> L4b
            if (r0 != 0) goto L48
            r0 = r4
            r0.m38580a()     // Catch: java.lang.Throwable -> L4b
        L48:
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4b
            return
        L4b:
            r3 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4b
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
                    /* renamed from: a */
                    public final AWSCredentials mo38581a() {
                        return propertiesCredentials;
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
                f12121mc = metricCollector;
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
