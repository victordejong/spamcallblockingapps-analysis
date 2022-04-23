package com.amazonaws.internal.config;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/config/InternalConfig.class */
public class InternalConfig {
    private static final Log g = LogFactory.a(InternalConfig.class);

    /* renamed from: a  reason: collision with root package name */
    public final SignerConfig f6645a = new SignerConfig("AWS4SignerType");

    /* renamed from: b  reason: collision with root package name */
    public final Map<String, SignerConfig> f6646b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, SignerConfig> f6647c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, SignerConfig> f6648d;
    public final Map<String, HttpClientConfig> e;
    public final List<HostRegexToRegionMapping> f;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/internal/config/InternalConfig$Factory.class */
    public static class Factory {

        /* renamed from: a  reason: collision with root package name */
        private static final InternalConfig f6649a;

        static {
            try {
                f6649a = new InternalConfig();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new IllegalStateException("Fatal: Failed to load the internal config for AWS Android SDK", e2);
            }
        }

        public static InternalConfig a() {
            return f6649a;
        }
    }

    InternalConfig() {
        HashMap hashMap = new HashMap();
        hashMap.put("eu-central-1", new SignerConfig("AWS4SignerType"));
        hashMap.put("cn-north-1", new SignerConfig("AWS4SignerType"));
        this.f6647c = hashMap;
        HashMap hashMap2 = new HashMap();
        hashMap2.put("ec2", new SignerConfig("QueryStringSignerType"));
        hashMap2.put("email", new SignerConfig("AWS3SignerType"));
        hashMap2.put("s3", new SignerConfig("S3SignerType"));
        hashMap2.put("sdb", new SignerConfig("QueryStringSignerType"));
        hashMap2.put("runtime.lex", new SignerConfig("AmazonLexV4Signer"));
        hashMap2.put("polly", new SignerConfig("AmazonPollyCustomPresigner"));
        this.f6648d = hashMap2;
        HashMap hashMap3 = new HashMap();
        hashMap3.put("s3/eu-central-1", new SignerConfig("AWSS3V4SignerType"));
        hashMap3.put("s3/cn-north-1", new SignerConfig("AWSS3V4SignerType"));
        hashMap3.put("s3/us-east-2", new SignerConfig("AWSS3V4SignerType"));
        hashMap3.put("s3/ca-central-1", new SignerConfig("AWSS3V4SignerType"));
        hashMap3.put("s3/ap-south-1", new SignerConfig("AWSS3V4SignerType"));
        hashMap3.put("s3/ap-northeast-2", new SignerConfig("AWSS3V4SignerType"));
        hashMap3.put("s3/eu-west-2", new SignerConfig("AWSS3V4SignerType"));
        this.f6646b = hashMap3;
        HashMap hashMap4 = new HashMap();
        hashMap4.put("AmazonCloudWatchClient", new HttpClientConfig("monitoring"));
        hashMap4.put("AmazonCloudWatchLogsClient", new HttpClientConfig("logs"));
        hashMap4.put("AmazonCognitoIdentityClient", new HttpClientConfig("cognito-identity"));
        hashMap4.put("AmazonCognitoIdentityProviderClient", new HttpClientConfig("cognito-idp"));
        hashMap4.put("AmazonCognitoSyncClient", new HttpClientConfig("cognito-sync"));
        hashMap4.put("AmazonComprehendClient", new HttpClientConfig("comprehend"));
        hashMap4.put("AmazonConnectClient", new HttpClientConfig("connect"));
        hashMap4.put("AmazonKinesisFirehoseClient", new HttpClientConfig("firehose"));
        hashMap4.put("AWSKinesisVideoArchivedMediaClient", new HttpClientConfig("kinesisvideo"));
        hashMap4.put("AWSKinesisVideoSignalingClient", new HttpClientConfig("kinesisvideo"));
        hashMap4.put("AWSIotClient", new HttpClientConfig("execute-api"));
        hashMap4.put("AmazonLexRuntimeClient", new HttpClientConfig("runtime.lex"));
        hashMap4.put("AmazonPinpointClient", new HttpClientConfig("mobiletargeting"));
        hashMap4.put("AmazonPinpointAnalyticsClient", new HttpClientConfig("mobileanalytics"));
        hashMap4.put("AmazonSageMakerRuntimeClient", new HttpClientConfig("sagemaker"));
        hashMap4.put("AmazonSimpleDBClient", new HttpClientConfig("sdb"));
        hashMap4.put("AmazonSimpleEmailServiceClient", new HttpClientConfig("email"));
        hashMap4.put("AWSSecurityTokenServiceClient", new HttpClientConfig("sts"));
        hashMap4.put("AmazonTextractClient", new HttpClientConfig("textract"));
        hashMap4.put("AmazonTranscribeClient", new HttpClientConfig("transcribe"));
        hashMap4.put("AmazonTranslateClient", new HttpClientConfig("translate"));
        this.e = hashMap4;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3\\.amazonaws\\.com", "us-east-1"));
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3-external-1\\.amazonaws\\.com", "us-east-1"));
        arrayList.add(new HostRegexToRegionMapping("(.+\\.)?s3-fips-us-gov-west-1\\.amazonaws\\.com", "us-gov-west-1"));
        this.f = arrayList;
    }
}
