package com.amazonaws.metrics;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.PropertiesCredentials;
import com.amazonaws.metrics.MetricCollector;
import com.amazonaws.regions.Regions;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSServiceMetrics;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/AwsSdkMetrics.class */
public enum AwsSdkMetrics {
    ;
    
    public static final boolean defaultMetricsEnabled;
    public static boolean dirtyEnabling;

    /* renamed from: mc */
    public static volatile MetricCollector f806mc;
    public static final MetricRegistry registry;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry.class */
    public static class MetricRegistry {
        public final Set<MetricType> metricTypes = new HashSet();

        public MetricRegistry() {
            this.metricTypes.add(AWSRequestMetrics.Field.ClientExecuteTime);
            this.metricTypes.add(AWSRequestMetrics.Field.Exception);
            this.metricTypes.add(AWSRequestMetrics.Field.HttpClientRetryCount);
            this.metricTypes.add(AWSRequestMetrics.Field.HttpRequestTime);
            this.metricTypes.add(AWSRequestMetrics.Field.RequestCount);
            this.metricTypes.add(AWSRequestMetrics.Field.RetryCount);
            this.metricTypes.add(AWSRequestMetrics.Field.HttpClientSendRequestTime);
            this.metricTypes.add(AWSRequestMetrics.Field.HttpClientReceiveResponseTime);
            this.metricTypes.add(AWSRequestMetrics.Field.HttpClientPoolAvailableCount);
            this.metricTypes.add(AWSRequestMetrics.Field.HttpClientPoolLeasedCount);
            this.metricTypes.add(AWSRequestMetrics.Field.HttpClientPoolPendingCount);
            this.metricTypes.add(AWSServiceMetrics.HttpClientGetConnectionTime);
            syncReadOnly();
        }

        public <T extends MetricType> boolean addMetricTypes(Collection<T> collection) {
            boolean addAll;
            synchronized (this.metricTypes) {
                addAll = this.metricTypes.addAll(collection);
                if (addAll) {
                    syncReadOnly();
                }
            }
            return addAll;
        }

        public final void syncReadOnly() {
            Collections.unmodifiableSet(new HashSet(this.metricTypes));
        }
    }

    static {
        String str = "com.amazonaws.management:type=" + AwsSdkMetrics.class.getSimpleName();
        String property = System.getProperty("com.amazonaws.sdk.enableDefaultMetrics");
        defaultMetricsEnabled = property != null;
        if (defaultMetricsEnabled) {
            String[] split = property.split(",");
            boolean z = false;
            boolean z2 = false;
            boolean z3 = false;
            for (String str2 : split) {
                String trim = str2.trim();
                if (!z && "excludeMachineMetrics".equals(trim)) {
                    z = true;
                    z2 = z2;
                    z3 = z3;
                } else if (!z2 && "includePerHostMetrics".equals(trim)) {
                    z2 = true;
                    z = z;
                    z3 = z3;
                } else if (z3 || !"useSingleMetricNamespace".equals(trim)) {
                    String[] split2 = trim.split("=");
                    z = z;
                    z2 = z2;
                    z3 = z3;
                    if (split2.length == 2) {
                        String trim2 = split2[0].trim();
                        String trim3 = split2[1].trim();
                        try {
                            if ("credentialFile".equals(trim2)) {
                                setCredentialFile0(trim3);
                                z = z;
                                z2 = z2;
                                z3 = z3;
                            } else if ("cloudwatchRegion".equals(trim2)) {
                                Regions.fromName(trim3);
                                z = z;
                                z2 = z2;
                                z3 = z3;
                            } else if ("metricQueueSize".equals(trim2)) {
                                if (new Integer(trim3).intValue() >= 1) {
                                    z = z;
                                    z2 = z2;
                                    z3 = z3;
                                } else {
                                    throw new IllegalArgumentException("metricQueueSize must be at least 1");
                                }
                            } else if ("getQueuePollTimeoutMilli".equals(trim2)) {
                                if (new Long(trim3).intValue() >= 1000) {
                                    z = z;
                                    z2 = z2;
                                    z3 = z3;
                                } else {
                                    throw new IllegalArgumentException("getQueuePollTimeoutMilli must be at least 1000");
                                }
                            } else if ("metricNameSpace".equals(trim2)) {
                                z = z;
                                z2 = z2;
                                z3 = z3;
                            } else if ("jvmMetricName".equals(trim2)) {
                                z = z;
                                z2 = z2;
                                z3 = z3;
                            } else if ("hostMetricName".equals(trim2)) {
                                z = z;
                                z2 = z2;
                                z3 = z3;
                            } else {
                                LogFactory.getLog(AwsSdkMetrics.class).debug("Ignoring unrecognized parameter: " + trim);
                                z = z;
                                z2 = z2;
                                z3 = z3;
                            }
                        } catch (Exception e) {
                            LogFactory.getLog(AwsSdkMetrics.class).debug("Ignoring failure", e);
                            z3 = z3;
                            z2 = z2;
                            z = z;
                        }
                    } else {
                        continue;
                    }
                } else {
                    z3 = true;
                    z = z;
                    z2 = z2;
                }
            }
        }
        registry = new MetricRegistry();
    }

    public static <T extends MetricType> boolean addAll(Collection<T> collection) {
        return (collection == null || collection.size() == 0) ? false : registry.addMetricTypes(collection);
    }

    public static boolean enableDefaultMetrics() {
        synchronized (AwsSdkMetrics.class) {
            try {
                if (f806mc == null || !f806mc.isEnabled()) {
                    if (!dirtyEnabling) {
                        dirtyEnabling = true;
                        try {
                            MetricCollector instance = ((MetricCollector.Factory) Class.forName("com.amazonaws.metrics.internal.cloudwatch.DefaultMetricCollectorFactory").newInstance()).getInstance();
                            if (instance != null) {
                                setMetricCollector(instance);
                                dirtyEnabling = false;
                                return true;
                            }
                        } catch (Exception e) {
                            LogFactory.getLog(AwsSdkMetrics.class).warn("Failed to enable the default metrics", e);
                        }
                        dirtyEnabling = false;
                    } else {
                        throw new IllegalStateException("Reentrancy is not allowed");
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static <T extends RequestMetricCollector> T getRequestMetricCollector() {
        if (f806mc == null && isDefaultMetricsEnabled()) {
            enableDefaultMetrics();
        }
        return f806mc == null ? (T) RequestMetricCollector.NONE : (T) f806mc.getRequestMetricCollector();
    }

    public static <T extends ServiceMetricCollector> T getServiceMetricCollector() {
        if (f806mc == null && isDefaultMetricsEnabled()) {
            enableDefaultMetrics();
        }
        return f806mc == null ? (T) ServiceMetricCollector.NONE : (T) f806mc.getServiceMetricCollector();
    }

    public static boolean isDefaultMetricsEnabled() {
        return defaultMetricsEnabled;
    }

    public static boolean isMetricsEnabled() {
        MetricCollector metricCollector = f806mc;
        return metricCollector != null && metricCollector.isEnabled();
    }

    public static void setCredentialFile0(String str) throws FileNotFoundException, IOException {
        final PropertiesCredentials propertiesCredentials = new PropertiesCredentials(new File(str));
        synchronized (AwsSdkMetrics.class) {
            try {
                new AWSCredentialsProvider() { // from class: com.amazonaws.metrics.AwsSdkMetrics.1
                    @Override // com.amazonaws.auth.AWSCredentialsProvider
                    public AWSCredentials getCredentials() {
                        return PropertiesCredentials.this;
                    }
                };
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void setMetricCollector(MetricCollector metricCollector) {
        synchronized (AwsSdkMetrics.class) {
            try {
                MetricCollector metricCollector2 = f806mc;
                f806mc = metricCollector;
                if (metricCollector2 != null) {
                    metricCollector2.stop();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
