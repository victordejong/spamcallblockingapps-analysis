.class public Lcom/amazonaws/internal/config/InternalConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/internal/config/InternalConfig$Factory;
    }
.end annotation


# static fields
.field private static final g:Lcom/amazonaws/logging/Log;


# instance fields
.field public final a:Lcom/amazonaws/internal/config/SignerConfig;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/SignerConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/config/HttpClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/internal/config/HostRegexToRegionMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazonaws/internal/config/InternalConfig;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->a(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/internal/config/InternalConfig;->g:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method constructor <init>()V
    .locals 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1169
    new-instance v0, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v1, "AWS4SignerType"

    invoke-direct {v0, v1}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->a:Lcom/amazonaws/internal/config/SignerConfig;

    .line 2137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2138
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v2, v1}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "eu-central-1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    new-instance v2, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v2, v1}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v1, "cn-north-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->c:Ljava/util/Map;

    .line 2158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2159
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v2, "QueryStringSignerType"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "ec2"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2160
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWS3SignerType"

    invoke-direct {v1, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "email"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v4, "S3SignerType"

    invoke-direct {v1, v4}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v4, "s3"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2162
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "sdb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v4, "AmazonLexV4Signer"

    invoke-direct {v1, v4}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v4, "runtime.lex"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2164
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v5, "AmazonPollyCustomPresigner"

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v5, "polly"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->d:Ljava/util/Map;

    .line 3145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3146
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v5, "AWSS3V4SignerType"

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v6, "s3/eu-central-1"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3147
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v6, "s3/cn-north-1"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3148
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v6, "s3/us-east-2"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3149
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v6, "s3/ca-central-1"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3150
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v6, "s3/ap-south-1"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3151
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v6, "s3/ap-northeast-2"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3152
    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v5, "s3/eu-west-2"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->b:Ljava/util/Map;

    .line 4109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4110
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v5, "monitoring"

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v5, "AmazonCloudWatchClient"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4111
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v5, "logs"

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v5, "AmazonCloudWatchLogsClient"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4112
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v5, "cognito-identity"

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v5, "AmazonCognitoIdentityClient"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4113
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v5, "cognito-idp"

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v5, "AmazonCognitoIdentityProviderClient"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4114
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v5, "cognito-sync"

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v5, "AmazonCognitoSyncClient"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4115
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v5, "comprehend"

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v5, "AmazonComprehendClient"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4116
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v5, "connect"

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v5, "AmazonConnectClient"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4117
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v5, "firehose"

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v5, "AmazonKinesisFirehoseClient"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4118
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v5, "kinesisvideo"

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v6, "AWSKinesisVideoArchivedMediaClient"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4119
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v5, "AWSKinesisVideoSignalingClient"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4120
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v5, "execute-api"

    invoke-direct {v1, v5}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v5, "AWSIotClient"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4121
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    invoke-direct {v1, v4}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v4, "AmazonLexRuntimeClient"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4122
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v4, "mobiletargeting"

    invoke-direct {v1, v4}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v4, "AmazonPinpointClient"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4123
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v4, "mobileanalytics"

    invoke-direct {v1, v4}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v4, "AmazonPinpointAnalyticsClient"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4125
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v4, "sagemaker"

    invoke-direct {v1, v4}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v4, "AmazonSageMakerRuntimeClient"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4126
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonSimpleDBClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4127
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    invoke-direct {v1, v3}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonSimpleEmailServiceClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4128
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "sts"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AWSSecurityTokenServiceClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4129
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "textract"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonTextractClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4130
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "transcribe"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonTranscribeClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4131
    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "translate"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonTranslateClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->e:Ljava/util/Map;

    .line 4173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4174
    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3\\.amazonaws\\.com"

    const-string v3, "us-east-1"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4175
    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3-external-1\\.amazonaws\\.com"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4176
    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3-fips-us-gov-west-1\\.amazonaws\\.com"

    const-string v3, "us-gov-west-1"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->f:Ljava/util/List;

    return-void
.end method
