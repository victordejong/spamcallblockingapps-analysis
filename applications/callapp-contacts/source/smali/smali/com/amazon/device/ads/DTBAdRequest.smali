.class public Lcom/amazon/device/ads/DTBAdRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;
    }
.end annotation


# static fields
.field static a:Lorg/json/JSONArray; = null

.field private static final b:Ljava/lang/String; = "DTBAdRequest"

.field private static r:Z = false

.field private static s:Lorg/json/JSONArray;

.field private static final t:[Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/device/ads/DTBAdSize;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/amazon/device/ads/DTBAdResponse;

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/amazon/device/ads/DTBAdCallback;

.field private h:Landroid/content/Context;

.field private volatile i:Lcom/amazon/device/ads/AdError;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private final n:Ljava/lang/Runnable;

.field private o:Landroid/os/Handler;

.field private p:Landroid/os/HandlerThread;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "1.0"

    const-string v1, "2.0"

    const-string v2, "3.0"

    .line 62
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/DTBAdRequest;->t:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->c:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->d:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->f:Ljava/util/Map;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->j:Z

    const/4 v2, 0x1

    .line 44
    iput-boolean v2, p0, Lcom/amazon/device/ads/DTBAdRequest;->k:Z

    .line 49
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->l:Z

    .line 50
    iput v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->m:I

    .line 51
    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdRequest$fxfnwlyFNqpOeOdnB8lBE0ZXNK4;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdRequest$fxfnwlyFNqpOeOdnB8lBE0ZXNK4;-><init>(Lcom/amazon/device/ads/DTBAdRequest;)V

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->n:Ljava/lang/Runnable;

    .line 55
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->q:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls"

    .line 102
    invoke-static {v0}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->h:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 107
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->h:Landroid/content/Context;

    .line 109
    :cond_1
    sget-boolean v0, Lcom/amazon/device/ads/DTBAdRequest;->r:Z

    if-nez v0, :cond_2

    .line 110
    invoke-static {}, Lcom/amazon/device/ads/DTBAdRequest;->b()V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->c:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->d:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->f:Ljava/util/Map;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    const/4 v1, 0x0

    .line 43
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->j:Z

    const/4 v2, 0x1

    .line 44
    iput-boolean v2, p0, Lcom/amazon/device/ads/DTBAdRequest;->k:Z

    .line 49
    iput-boolean v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->l:Z

    .line 50
    iput v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->m:I

    .line 51
    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdRequest$fxfnwlyFNqpOeOdnB8lBE0ZXNK4;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdRequest$fxfnwlyFNqpOeOdnB8lBE0ZXNK4;-><init>(Lcom/amazon/device/ads/DTBAdRequest;)V

    iput-object v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->n:Ljava/lang/Runnable;

    .line 55
    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->q:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 80
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "mDTB was not initialized, please use AdRegistration.getInstance(...) before using other SDK calls"

    .line 81
    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;)V

    return-void

    .line 89
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 90
    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->a(Landroid/content/Context;)V

    .line 92
    :cond_1
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->h:Landroid/content/Context;

    .line 94
    sget-boolean p1, Lcom/amazon/device/ads/DTBAdRequest;->r:Z

    if-nez p1, :cond_2

    .line 95
    invoke-static {}, Lcom/amazon/device/ads/DTBAdRequest;->b()V

    :cond_2
    return-void

    .line 78
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to initialize ad request with null app context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/Object;)Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;
    .locals 8

    .line 810
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 813
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 819
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 821
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    if-lt v3, v5, :cond_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    .line 825
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 826
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 828
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 829
    new-instance v1, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;-><init>(Lcom/amazon/device/ads/DTBAdRequest;)V

    .line 830
    iput-object p1, v1, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->b:Ljava/lang/String;

    .line 831
    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->a:Ljava/lang/String;

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 838
    :cond_1
    new-instance v1, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;-><init>(Lcom/amazon/device/ads/DTBAdRequest;)V

    .line 839
    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->b:Ljava/lang/String;

    .line 840
    iput-object p1, v1, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->a:Ljava/lang/String;

    :catch_0
    :cond_2
    :goto_1
    return-object v1
.end method

.method static a()V
    .locals 1

    const/4 v0, 0x0

    .line 115
    sput-object v0, Lcom/amazon/device/ads/DTBAdRequest;->a:Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 116
    sput-boolean v0, Lcom/amazon/device/ads/DTBAdRequest;->r:Z

    return-void
.end method

.method private static a(Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;)V
    .locals 2

    .line 268
    iget v0, p0, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->a:I

    if-lez v0, :cond_2

    .line 269
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 270
    sput-object v0, Lcom/amazon/device/ads/DTBAdRequest;->a:Lorg/json/JSONArray;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 271
    iget v0, p0, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->a:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->b:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget p0, p0, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->a:I

    if-le p0, v1, :cond_2

    .line 272
    :cond_1
    sget-object p0, Lcom/amazon/device/ads/DTBAdRequest;->a:Lorg/json/JSONArray;

    const-string v0, "2.0"

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    return-void
.end method

.method private synthetic a(Lcom/amazon/device/ads/DtbMetrics;)V
    .locals 10

    .line 756
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->g:Lcom/amazon/device/ads/DTBAdCallback;

    if-eqz v0, :cond_6

    .line 757
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    const-string v1, "]"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    .line 3017
    iget-object v0, v0, Lcom/amazon/device/ads/AdError;->a:Lcom/amazon/device/ads/AdError$ErrorCode;

    .line 757
    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    if-ne v0, v2, :cond_5

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invoking onSuccess() callback for pricepoints: ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/device/ads/DTBAdRequest;->e:Lcom/amazon/device/ads/DTBAdResponse;

    .line 3194
    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdResponse;->b()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_0

    move-object v2, v4

    goto :goto_0

    .line 3197
    :cond_0
    invoke-virtual {v2}, Lcom/amazon/device/ads/DTBAdResponse;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/ads/DTBAdSize;

    .line 3198
    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/DTBAdResponse;->a(Lcom/amazon/device/ads/DTBAdSize;)Ljava/lang/String;

    move-result-object v2

    .line 758
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 759
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->g:Lcom/amazon/device/ads/DTBAdCallback;

    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->e:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-interface {v0, v1}, Lcom/amazon/device/ads/DTBAdCallback;->onSuccess(Lcom/amazon/device/ads/DTBAdResponse;)V

    .line 762
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 3848
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    .line 3849
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->q()Ljava/lang/Long;

    move-result-object v0

    .line 3851
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    if-eqz v0, :cond_1

    .line 3854
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v1, v6

    const-wide/32 v8, 0x240c8400

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_3

    .line 3862
    invoke-static {v1, v2}, Lcom/amazon/device/ads/DtbSharedPreferences;->e(J)V

    :cond_3
    if-eqz v5, :cond_7

    .line 764
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->g:Lcom/amazon/device/ads/DTBAdCallback;

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/DTBAdRequest;->a(Ljava/lang/Object;)Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 767
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsConfiguration;->getSampleRateForWrappingPixel()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    .line 768
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    cmpg-double v3, v5, v1

    if-gtz v3, :cond_4

    .line 769
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 770
    iget-object v2, v0, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->b:Ljava/lang/String;

    const-string v3, "expected_package"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdRequest$WrapperReport;->a:Ljava/lang/String;

    const-string v2, "wrapper_package"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4089
    iget-object p1, p1, Lcom/amazon/device/ads/DtbMetrics;->c:Ljava/lang/String;

    .line 773
    invoke-static {p1}, Lcom/amazon/device/ads/DtbCommonUtils;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 775
    invoke-static {}, Lcom/amazon/device/ads/DTBMetricsProcessor;->a()Lcom/amazon/device/ads/DTBMetricsProcessor;

    move-result-object v0

    invoke-static {v4, p1}, Lcom/amazon/device/ads/DTBMetricReport;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;

    move-result-object p1

    const-string v2, "alert_sdk_wrapping_v2"

    .line 5081
    invoke-static {v2, v1, p1}, Lcom/amazon/device/ads/DTBMetricReport;->a(Ljava/lang/String;Ljava/util/Map;Lcom/amazon/device/ads/DTBMetricReport$BidWrapper;)Lcom/amazon/device/ads/DTBMetricReport;

    move-result-object p1

    .line 5082
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/DTBMetricsProcessor;->a(Lcom/amazon/device/ads/DTBMetricReport;)V

    .line 5083
    invoke-virtual {v0}, Lcom/amazon/device/ads/DTBMetricsProcessor;->b()V

    :cond_4
    return-void

    .line 781
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invoking onFailure() callback with errorCode: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    .line 6017
    iget-object v0, v0, Lcom/amazon/device/ads/AdError;->a:Lcom/amazon/device/ads/AdError$ErrorCode;

    .line 781
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    .line 6021
    iget-object v0, v0, Lcom/amazon/device/ads/AdError;->b:Ljava/lang/String;

    .line 781
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 782
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->g:Lcom/amazon/device/ads/DTBAdCallback;

    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    invoke-interface {p1, v0}, Lcom/amazon/device/ads/DTBAdCallback;->onFailure(Lcom/amazon/device/ads/AdError;)V

    return-void

    :cond_6
    const-string p1, "No callback -DTBAdCallback- provided to loadAd() to handle success or failure."

    .line 785
    invoke-static {p1}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method static a([Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_2

    .line 125
    array-length v0, p0

    if-lez v0, :cond_2

    .line 126
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/DTBAdRequest;->s:Lorg/json/JSONArray;

    .line 127
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->t:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 128
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    .line 130
    sget-object v3, Lcom/amazon/device/ads/DTBAdRequest;->b:Ljava/lang/String;

    const-string v4, "null custom version supplied"

    invoke-static {v3, v4}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 134
    sget-object v4, Lcom/amazon/device/ads/DTBAdRequest;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "custom version \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\" is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/device/ads/DtbLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    sget-object v4, Lcom/amazon/device/ads/DTBAdRequest;->s:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {}, Lcom/amazon/device/ads/DTBAdRequest;->a()V

    return-void
.end method

.method private static b()V
    .locals 9

    const-string v0, "com.mopub.common.MoPub"

    const-string v1, "SDK_VERSION"

    .line 161
    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbCommonUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MOPUB VERSION:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 165
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 168
    invoke-static {v0}, Lcom/amazon/device/ads/DtbCommonUtils;->h(Ljava/lang/String;)Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;

    move-result-object v1

    const/4 v2, 0x0

    .line 173
    new-instance v3, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;

    invoke-direct {v3}, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;-><init>()V

    const-string v4, "com.google.android.gms.common.GoogleApiAvailability"

    const-string v5, "com.google.android.gms.common.GoogleApiAvailabilityLight"

    const-string v6, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v7, "com.google.android.gms.common.GooglePlayServicesUtilLight"

    .line 1150
    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    const-string v6, "GOOGLE_PLAY_SERVICES_VERSION_CODE"

    const/4 v7, 0x4

    if-ge v5, v7, :cond_1

    .line 174
    aget-object v8, v4, v5

    if-nez v2, :cond_1

    .line 179
    invoke-static {v8, v6}, Lcom/amazon/device/ads/DtbCommonUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/16 v4, 0x61

    :goto_1
    const/16 v5, 0x7a

    if-gt v4, v5, :cond_2

    .line 186
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.google.android.gms.common.zz"

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lcom/amazon/device/ads/DtbCommonUtils;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_2

    add-int/lit8 v4, v4, 0x1

    int-to-char v4, v4

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 198
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    .line 199
    rem-int/lit16 v5, v4, 0x3e8

    div-int/lit8 v5, v5, 0x64

    iput v5, v3, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->b:I

    .line 200
    div-int/lit16 v4, v4, 0x3e8

    iput v4, v3, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->a:I

    .line 201
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Google DFP major version:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v3, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "minor version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    :cond_3
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    const/4 v4, 0x1

    .line 206
    sput-boolean v4, Lcom/amazon/device/ads/DTBAdRequest;->r:Z

    .line 207
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->e()Lcom/amazon/device/ads/MRAIDPolicy;

    move-result-object v5

    .line 210
    sget-object v6, Lcom/amazon/device/ads/DTBAdRequest$1;->a:[I

    invoke-virtual {v5}, Lcom/amazon/device/ads/MRAIDPolicy;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-eq v5, v4, :cond_7

    const/4 v4, 0x2

    if-eq v5, v4, :cond_6

    const/4 v2, 0x3

    if-eq v5, v2, :cond_5

    if-eq v5, v7, :cond_4

    goto :goto_2

    .line 240
    :cond_4
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->s:Lorg/json/JSONArray;

    sput-object v0, Lcom/amazon/device/ads/DTBAdRequest;->a:Lorg/json/JSONArray;

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_9

    .line 235
    invoke-static {v1}, Lcom/amazon/device/ads/DTBAdRequest;->a(Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;)V

    return-void

    :cond_6
    if-eqz v2, :cond_9

    .line 228
    invoke-static {v3}, Lcom/amazon/device/ads/DTBAdRequest;->b(Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;)V

    return-void

    .line 212
    :cond_7
    invoke-static {}, Lcom/amazon/device/ads/DTBAdRequest;->c()Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v0, :cond_8

    .line 217
    invoke-static {v1}, Lcom/amazon/device/ads/DTBAdRequest;->a(Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;)V

    return-void

    :cond_8
    if-eqz v2, :cond_9

    .line 222
    invoke-static {v3}, Lcom/amazon/device/ads/DTBAdRequest;->b(Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;)V

    :cond_9
    :goto_2
    return-void
.end method

.method private static b(Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;)V
    .locals 3

    .line 280
    iget v0, p0, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->a:I

    if-lez v0, :cond_3

    .line 282
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 283
    sput-object v0, Lcom/amazon/device/ads/DTBAdRequest;->a:Lorg/json/JSONArray;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 284
    iget v0, p0, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->b:I

    const/16 v2, 0x8

    if-ge v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->a:I

    if-le v0, v1, :cond_2

    .line 285
    :cond_1
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->a:Lorg/json/JSONArray;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 287
    :cond_2
    iget p0, p0, Lcom/amazon/device/ads/DtbCommonUtils$APIVersion;->a:I

    const/16 v0, 0xf

    if-lt p0, v0, :cond_3

    .line 288
    sget-object p0, Lcom/amazon/device/ads/DTBAdRequest;->a:Lorg/json/JSONArray;

    const-string v0, "3.0"

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_3
    return-void
.end method

.method private static c()Z
    .locals 6

    .line 250
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->k()[Ljava/lang/String;

    move-result-object v0

    .line 251
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 253
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 254
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 255
    sput-object v4, Lcom/amazon/device/ads/DTBAdRequest;->a:Lorg/json/JSONArray;

    const-string v5, "1.0"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 256
    sget-object v4, Lcom/amazon/device/ads/DTBAdRequest;->a:Lorg/json/JSONArray;

    const-string v5, "2.0"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 257
    sget-object v4, Lcom/amazon/device/ads/DTBAdRequest;->a:Lorg/json/JSONArray;

    const-string v5, "3.0"

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private d()V
    .locals 2

    .line 472
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 473
    invoke-static {}, Lcom/amazon/device/ads/DtbThreadService;->a()Lcom/amazon/device/ads/DtbThreadService;

    move-result-object v0

    new-instance v1, Lcom/amazon/device/ads/-$$Lambda$DTBAdRequest$ESWSUfc3XE1Jx-8vxjb7KMw34PM;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/-$$Lambda$DTBAdRequest$ESWSUfc3XE1Jx-8vxjb7KMw34PM;-><init>(Lcom/amazon/device/ads/DTBAdRequest;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/DtbThreadService;->a(Ljava/lang/Runnable;)V

    .line 483
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 488
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 6

    .line 521
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->m:I

    if-lez v0, :cond_0

    .line 522
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->e()V

    .line 523
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 524
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->n:Ljava/lang/Runnable;

    iget v2, p0, Lcom/amazon/device/ads/DTBAdRequest;->m:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private synthetic g()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "crid"

    const-string v3, "i"

    const-string v4, "kvp"

    const-string v5, "v"

    const-string v0, "ads"

    const-string v6, "instrPixelURL"

    const-string v7, "application/json"

    const-string v8, "IABTCF_gdprApplies"

    const-string v9, "errorCode"

    .line 474
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->a()V

    .line 6597
    :try_start_0
    iget-boolean v10, v1, Lcom/amazon/device/ads/DTBAdRequest;->l:Z

    if-eqz v10, :cond_2

    .line 6598
    iget-object v10, v1, Lcom/amazon/device/ads/DTBAdRequest;->c:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/device/ads/DTBAdSize;

    .line 7054
    iget-object v12, v11, Lcom/amazon/device/ads/DTBAdSize;->c:Lcom/amazon/device/ads/AdType;

    .line 6599
    sget-object v13, Lcom/amazon/device/ads/AdType;->INTERSTITIAL:Lcom/amazon/device/ads/AdType;

    if-eq v12, v13, :cond_1

    .line 8054
    iget-object v11, v11, Lcom/amazon/device/ads/DTBAdSize;->c:Lcom/amazon/device/ads/AdType;

    .line 6599
    sget-object v12, Lcom/amazon/device/ads/AdType;->VIDEO:Lcom/amazon/device/ads/AdType;

    if-ne v11, v12, :cond_0

    :cond_1
    const/4 v10, 0x0

    .line 6600
    iput-boolean v10, v1, Lcom/amazon/device/ads/DTBAdRequest;->l:Z

    const-string v10, "Autorefresh could not be used for interstitial or video"

    .line 6601
    invoke-static {v10}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;)V

    .line 6607
    :cond_2
    new-instance v10, Lcom/amazon/device/ads/DtbMetrics;

    invoke-direct {v10}, Lcom/amazon/device/ads/DtbMetrics;-><init>()V

    .line 6609
    new-instance v11, Lcom/amazon/device/ads/DtbAdRequestParamsBuilder;

    invoke-direct {v11}, Lcom/amazon/device/ads/DtbAdRequestParamsBuilder;-><init>()V

    .line 6610
    iget-object v12, v1, Lcom/amazon/device/ads/DTBAdRequest;->h:Landroid/content/Context;

    iget-object v13, v1, Lcom/amazon/device/ads/DTBAdRequest;->c:Ljava/util/List;

    iget-object v14, v1, Lcom/amazon/device/ads/DTBAdRequest;->d:Ljava/util/Map;

    .line 9021
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 9023
    invoke-static {v12}, Lcom/amazon/device/ads/DtbAdRequestParamsBuilder;->a(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v15, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9024
    invoke-virtual {v11, v13}, Lcom/amazon/device/ads/DtbAdRequestParamsBuilder;->a(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9025
    invoke-static {v14}, Lcom/amazon/device/ads/DtbAdRequestParamsBuilder;->a(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9530
    iget-object v11, v1, Lcom/amazon/device/ads/DTBAdRequest;->h:Landroid/content/Context;

    if-eqz v11, :cond_12

    .line 9531
    invoke-static {v11}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v13, "IABConsent_SubjectToGDPR"

    const/4 v14, 0x0

    .line 9540
    invoke-interface {v11, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 9541
    invoke-interface {v11, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v11}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    :cond_3
    move-object v8, v14

    :goto_0
    const-string v12, "IABConsent_ConsentString"

    .line 9543
    invoke-interface {v11, v12, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v2

    const-string v2, "IABTCF_TCString"

    .line 9544
    invoke-interface {v11, v2, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9546
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->o()Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const-string v14, "c"

    if-nez v2, :cond_6

    if-eqz v12, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v11, :cond_5

    .line 9558
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 9559
    invoke-virtual {v2, v14, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v14, v2

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    goto :goto_3

    .line 9551
    :cond_6
    :goto_1
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    if-eqz v2, :cond_7

    .line 9553
    invoke-virtual {v11, v14, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_7
    if-eqz v12, :cond_8

    .line 9555
    invoke-virtual {v11, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    :goto_2
    move-object v14, v11

    :goto_3
    if-nez v13, :cond_9

    if-eqz v8, :cond_11

    :cond_9
    if-nez v14, :cond_a

    .line 9564
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    :cond_a
    const-string v2, "e"

    if-eqz v8, :cond_10

    .line 9568
    :try_start_2
    instance-of v11, v8, Ljava/lang/Integer;

    if-eqz v11, :cond_c

    move-object v11, v8

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_b

    move-object v11, v8

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-nez v11, :cond_c

    .line 9569
    :cond_b
    invoke-virtual {v14, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 9570
    :cond_c
    instance-of v11, v8, Ljava/lang/String;

    if-eqz v11, :cond_d

    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    const-string v12, "1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    :cond_d
    move-object v11, v8

    check-cast v11, Ljava/lang/String;

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 9571
    :cond_e
    invoke-virtual {v14, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    .line 9573
    :cond_f
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->a()V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_4

    .line 9575
    :catch_0
    :try_start_3
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->a()V

    goto :goto_4

    :cond_10
    if-eqz v13, :cond_11

    .line 9578
    invoke-virtual {v14, v2, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_11
    :goto_4
    if-eqz v14, :cond_13

    .line 9586
    :try_start_4
    invoke-virtual {v14}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "gdpr"

    .line 9587
    invoke-interface {v15, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catch_1
    const-string v2, "INVALID JSON formed for GDPR clause"

    .line 9583
    invoke-static {v2}, Lcom/amazon/device/ads/DtbLog;->c(Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    move-object/from16 v17, v2

    .line 9796
    :cond_13
    :goto_5
    sget-object v2, Lcom/amazon/device/ads/DTBAdRequest;->a:Lorg/json/JSONArray;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_14

    const-string v2, "mraid"

    .line 9797
    sget-object v8, Lcom/amazon/device/ads/DTBAdRequest;->a:Lorg/json/JSONArray;

    invoke-interface {v15, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6616
    :cond_14
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/device/ads/DtbDebugProperties;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6623
    iget-object v8, v1, Lcom/amazon/device/ads/DTBAdRequest;->c:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_15
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amazon/device/ads/DTBAdSize;

    .line 6624
    sget-object v12, Lcom/amazon/device/ads/AdType;->VIDEO:Lcom/amazon/device/ads/AdType;

    .line 10054
    iget-object v11, v11, Lcom/amazon/device/ads/DTBAdSize;->c:Lcom/amazon/device/ads/AdType;

    .line 6624
    invoke-virtual {v12, v11}, Lcom/amazon/device/ads/AdType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 6625
    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->c()Lcom/amazon/device/ads/DtbSharedPreferences;

    invoke-static {}, Lcom/amazon/device/ads/DtbSharedPreferences;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/device/ads/DtbDebugProperties;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_6

    .line 6630
    :cond_16
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/e/msdk/ads"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6631
    invoke-static {}, Lcom/amazon/device/ads/DtbDebugProperties;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_17

    const/16 v11, 0x3f

    .line 6632
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbDebugProperties;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6635
    :cond_17
    new-instance v11, Lcom/amazon/device/ads/DtbHttpClient;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Lcom/amazon/device/ads/DtbHttpClient;-><init>(Ljava/lang/String;)V

    .line 6636
    invoke-static {}, Lcom/amazon/device/ads/DtbDebugProperties;->b()Z

    move-result v8

    .line 10089
    iput-boolean v8, v11, Lcom/amazon/device/ads/DtbHttpClient;->c:Z

    const-string v8, "Accept"

    .line 6637
    invoke-virtual {v11, v8, v7}, Lcom/amazon/device/ads/DtbHttpClient;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "Content-Type"

    .line 6638
    invoke-virtual {v11, v8, v7}, Lcom/amazon/device/ads/DtbHttpClient;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11069
    iput-object v15, v11, Lcom/amazon/device/ads/DtbHttpClient;->a:Ljava/util/HashMap;

    .line 6644
    sget-object v7, Lcom/amazon/device/ads/DtbMetric;->AAX_BID_TIME:Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {v10, v7}, Lcom/amazon/device/ads/DtbMetrics;->b(Lcom/amazon/device/ads/DtbMetric;)V

    .line 6645
    invoke-virtual {v11}, Lcom/amazon/device/ads/DtbHttpClient;->a()V

    .line 6646
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 12039
    iget-object v7, v11, Lcom/amazon/device/ads/DtbHttpClient;->e:Ljava/lang/String;

    .line 6648
    invoke-static {v7}, Lcom/amazon/device/ads/DtbCommonUtils;->e(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_28

    .line 6654
    sget-object v7, Lcom/amazon/device/ads/DtbMetric;->AAX_BID_TIME:Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {v10, v7}, Lcom/amazon/device/ads/DtbMetrics;->d(Lcom/amazon/device/ads/DtbMetric;)V

    .line 6656
    new-instance v7, Lorg/json/JSONTokener;

    .line 13039
    iget-object v8, v11, Lcom/amazon/device/ads/DtbHttpClient;->e:Ljava/lang/String;

    .line 6657
    invoke-direct {v7, v8}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/json/JSONObject;

    if-eqz v7, :cond_18

    const-string v8, "Bid Response:"

    .line 6659
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    :cond_18
    if-eqz v7, :cond_27

    .line 13047
    iget v8, v11, Lcom/amazon/device/ads/DtbHttpClient;->b:I

    const/16 v11, 0xc8

    if-ne v8, v11, :cond_27

    .line 6663
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 6664
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_19

    const-string v8, "://"

    .line 13094
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_19

    add-int/lit8 v8, v8, 0x3

    .line 13096
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 13098
    :cond_19
    iput-object v6, v10, Lcom/amazon/device/ads/DtbMetrics;->c:Ljava/lang/String;

    .line 6669
    :cond_1a
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "200"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 6670
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 6671
    new-instance v0, Lcom/amazon/device/ads/DTBAdResponse;

    invoke-direct {v0}, Lcom/amazon/device/ads/DTBAdResponse;-><init>()V

    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->e:Lcom/amazon/device/ads/DTBAdResponse;

    .line 13299
    iput-object v2, v0, Lcom/amazon/device/ads/DTBAdResponse;->c:Ljava/lang/String;

    .line 6673
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_24

    .line 6674
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 6675
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 6676
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 6677
    iget-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->e:Lcom/amazon/device/ads/DTBAdResponse;

    const-string v9, "b"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 14069
    iput-object v9, v0, Lcom/amazon/device/ads/DTBAdResponse;->a:Ljava/lang/String;

    .line 6678
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 6679
    iget-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->e:Lcom/amazon/device/ads/DTBAdResponse;

    const/4 v9, 0x1

    .line 14206
    iput-boolean v9, v0, Lcom/amazon/device/ads/DTBAdResponse;->b:Z

    goto :goto_8

    :cond_1b
    const/4 v9, 0x1

    .line 6682
    :goto_8
    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    if-eqz v0, :cond_1c

    .line 6684
    :try_start_6
    iget-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->e:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v8, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/amazon/device/ads/DTBAdResponse;->a(Lorg/json/JSONObject;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_9

    :catch_2
    move-exception v0

    .line 6686
    :try_start_7
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Malformed kvp value from ad response: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    :cond_1c
    :goto_9
    const-string v0, "sz"

    .line 6689
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6690
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 6691
    iget-object v11, v1, Lcom/amazon/device/ads/DTBAdRequest;->e:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 15057
    iput-object v12, v11, Lcom/amazon/device/ads/DTBAdResponse;->e:Ljava/lang/String;

    :cond_1d
    move-object/from16 v11, v17

    .line 6694
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 6695
    iget-object v12, v1, Lcom/amazon/device/ads/DTBAdRequest;->e:Lcom/amazon/device/ads/DTBAdResponse;

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 15065
    iput-object v8, v12, Lcom/amazon/device/ads/DTBAdResponse;->f:Ljava/lang/String;

    .line 6698
    :cond_1e
    sget-object v8, Lcom/amazon/device/ads/AdType;->DISPLAY:Lcom/amazon/device/ads/AdType;

    const-string v12, "9999x9999"

    .line 6699
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 6700
    sget-object v8, Lcom/amazon/device/ads/AdType;->INTERSTITIAL:Lcom/amazon/device/ads/AdType;

    goto :goto_a

    .line 6701
    :cond_1f
    iget-object v12, v1, Lcom/amazon/device/ads/DTBAdRequest;->e:Lcom/amazon/device/ads/DTBAdResponse;

    .line 15202
    iget-boolean v12, v12, Lcom/amazon/device/ads/DTBAdResponse;->b:Z

    if-eqz v12, :cond_20

    .line 6702
    sget-object v8, Lcom/amazon/device/ads/AdType;->VIDEO:Lcom/amazon/device/ads/AdType;

    .line 6704
    :cond_20
    :goto_a
    new-instance v12, Lcom/amazon/device/ads/DtbPricePoint;

    iget-object v13, v1, Lcom/amazon/device/ads/DTBAdRequest;->f:Ljava/util/Map;

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v12, v7, v0, v13, v8}, Lcom/amazon/device/ads/DtbPricePoint;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/ads/AdType;)V

    .line 6705
    iget-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->e:Lcom/amazon/device/ads/DTBAdResponse;

    .line 16088
    iget-object v7, v0, Lcom/amazon/device/ads/DTBAdResponse;->d:Ljava/util/Map;

    .line 17024
    iget-object v8, v12, Lcom/amazon/device/ads/DtbPricePoint;->b:Lcom/amazon/device/ads/DTBAdSize;

    .line 16088
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_21

    .line 16089
    iget-object v7, v0, Lcom/amazon/device/ads/DTBAdResponse;->d:Ljava/util/Map;

    .line 18024
    iget-object v8, v12, Lcom/amazon/device/ads/DtbPricePoint;->b:Lcom/amazon/device/ads/DTBAdSize;

    .line 16089
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16091
    :cond_21
    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdResponse;->d:Ljava/util/Map;

    .line 19024
    iget-object v7, v12, Lcom/amazon/device/ads/DtbPricePoint;->b:Lcom/amazon/device/ads/DTBAdSize;

    .line 16091
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v11

    goto/16 :goto_7

    .line 6709
    :cond_22
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v3, "Ad loaded successfully."

    invoke-direct {v0, v2, v3}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    .line 6710
    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->l()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 6711
    iget-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->e:Lcom/amazon/device/ads/DTBAdResponse;

    .line 19096
    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdResponse;->a:Ljava/lang/String;

    .line 6712
    invoke-static {}, Lcom/amazon/device/ads/DTBBidInspector;->a()Lcom/amazon/device/ads/DTBBidInspector;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amazon/device/ads/DTBBidInspector;->a(Ljava/lang/String;)V

    .line 6714
    :cond_23
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    goto/16 :goto_c

    .line 6716
    :cond_24
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 6717
    sget-object v0, Lcom/amazon/device/ads/DtbMetric;->AAX_PUNTED:Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {v10, v0}, Lcom/amazon/device/ads/DtbMetrics;->a(Lcom/amazon/device/ads/DtbMetric;)V

    .line 6718
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v3, "No pricepoint returned from ad server."

    invoke-direct {v0, v2, v3}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    goto/16 :goto_c

    .line 6722
    :cond_25
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "400"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 6723
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 6724
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->REQUEST_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v3, "Invalid request passed to AdServer."

    invoke-direct {v0, v2, v3}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    goto :goto_b

    .line 6726
    :cond_26
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 6727
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->NO_FILL:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v3, "No Ad returned by AdServer."

    invoke-direct {v0, v2, v3}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    .line 6729
    :goto_b
    sget-object v0, Lcom/amazon/device/ads/DtbMetric;->AAX_PUNTED:Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {v10, v0}, Lcom/amazon/device/ads/DtbMetrics;->a(Lcom/amazon/device/ads/DtbMetric;)V

    goto :goto_c

    .line 6732
    :cond_27
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 6733
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->NETWORK_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v3, "Ad call did not complete successfully."

    invoke-direct {v0, v2, v3}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    .line 6734
    sget-object v0, Lcom/amazon/device/ads/DtbMetric;->AAX_NETWORK_FAILURE:Lcom/amazon/device/ads/DtbMetric;

    invoke-virtual {v10, v0}, Lcom/amazon/device/ads/DtbMetrics;->a(Lcom/amazon/device/ads/DtbMetric;)V

    goto :goto_c

    .line 6649
    :cond_28
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 6650
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v3, "Response is null."

    invoke-direct {v0, v2, v3}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    .line 6651
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Response is null"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    move-exception v0

    .line 6740
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error occurred in ad call: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 6741
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v3, "Internal error occurred in ad call."

    invoke-direct {v0, v2, v3}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    goto :goto_c

    :catch_4
    move-exception v0

    .line 6737
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed response from ad call: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 6738
    new-instance v0, Lcom/amazon/device/ads/AdError;

    sget-object v2, Lcom/amazon/device/ads/AdError$ErrorCode;->INTERNAL_ERROR:Lcom/amazon/device/ads/AdError$ErrorCode;

    const-string v3, "Malformed response from ad call."

    invoke-direct {v0, v2, v3}, Lcom/amazon/device/ads/AdError;-><init>(Lcom/amazon/device/ads/AdError$ErrorCode;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    .line 6745
    :goto_c
    iget-object v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->i:Lcom/amazon/device/ads/AdError;

    if-nez v0, :cond_29

    .line 6746
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 19753
    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/amazon/device/ads/DTBAdRequest;->f()V

    .line 19754
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->b:Ljava/lang/String;

    const-string v2, "Forwarding the error handling to view on main thread."

    invoke-static {v0, v2}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19755
    new-instance v0, Lcom/amazon/device/ads/-$$Lambda$DTBAdRequest$BHIddckL5SeV2V5AUQfiy1EO14M;

    invoke-direct {v0, v1, v10}, Lcom/amazon/device/ads/-$$Lambda$DTBAdRequest$BHIddckL5SeV2V5AUQfiy1EO14M;-><init>(Lcom/amazon/device/ads/DTBAdRequest;Lcom/amazon/device/ads/DtbMetrics;)V

    invoke-static {v0}, Lcom/amazon/device/ads/DtbThreadService;->b(Ljava/lang/Runnable;)V

    .line 19790
    iget-boolean v0, v1, Lcom/amazon/device/ads/DTBAdRequest;->k:Z

    if-eqz v0, :cond_2a

    .line 19791
    sget-object v0, Lcom/amazon/device/ads/DtbMetrics$Submitter;->a:Lcom/amazon/device/ads/DtbMetrics$Submitter;

    invoke-virtual {v0, v10}, Lcom/amazon/device/ads/DtbMetrics$Submitter;->a(Lcom/amazon/device/ads/DtbMetrics;)V

    .line 477
    :cond_2a
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    return-void

    .line 479
    :catch_5
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->b:Ljava/lang/String;

    const-string v2, "Unknown exception in DTB ad call process."

    invoke-static {v0, v2}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic h()V
    .locals 3

    .line 20492
    iget-boolean v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->l:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->m:I

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 20496
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->h:Landroid/content/Context;

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 20498
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    .line 20501
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/amazon/device/ads/DtbCommonUtils;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20502
    :cond_0
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->a()V

    .line 21464
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->e()V

    .line 21465
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->p:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 21466
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 21467
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 20510
    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_3

    .line 20511
    invoke-static {}, Lcom/amazon/device/ads/DtbLog;->b()V

    .line 20512
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->f()V

    return-void

    .line 20514
    :cond_3
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->d()V

    :cond_4
    return-void
.end method

.method public static synthetic lambda$BHIddckL5SeV2V5AUQfiy1EO14M(Lcom/amazon/device/ads/DTBAdRequest;Lcom/amazon/device/ads/DtbMetrics;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/DTBAdRequest;->a(Lcom/amazon/device/ads/DtbMetrics;)V

    return-void
.end method

.method public static synthetic lambda$ESWSUfc3XE1Jx-8vxjb7KMw34PM(Lcom/amazon/device/ads/DTBAdRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->g()V

    return-void
.end method

.method public static synthetic lambda$fxfnwlyFNqpOeOdnB8lBE0ZXNK4(Lcom/amazon/device/ads/DTBAdRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->h()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/amazon/device/ads/DTBAdCallback;)V
    .locals 4

    .line 394
    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->g:Lcom/amazon/device/ads/DTBAdCallback;

    .line 395
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 398
    iget-boolean p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->j:Z

    if-eqz p1, :cond_0

    .line 399
    sget-object p1, Lcom/amazon/device/ads/DTBAdRequest;->b:Ljava/lang/String;

    const-string v0, "This ad request object is already used for loading an ad. Please create a new instance to load the Ad."

    invoke-static {p1, v0}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 402
    iput-boolean p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->j:Z

    .line 406
    invoke-static {}, Lcom/amazon/device/ads/DtbDeviceRegistration;->a()V

    .line 408
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/DTBAdSize;

    .line 409
    iget-object v1, p0, Lcom/amazon/device/ads/DTBAdRequest;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2042
    iget v3, v0, Lcom/amazon/device/ads/DTBAdSize;->a:I

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    iget v3, v0, Lcom/amazon/device/ads/DTBAdSize;->b:I

    .line 409
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2058
    iget-object v0, v0, Lcom/amazon/device/ads/DTBAdSize;->d:Ljava/lang/String;

    .line 409
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 413
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->p:Landroid/os/HandlerThread;

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->l:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->m:I

    if-lez p1, :cond_2

    .line 414
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "DtbHandlerThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->p:Landroid/os/HandlerThread;

    .line 415
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 416
    iget-object p1, p0, Lcom/amazon/device/ads/DTBAdRequest;->p:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 417
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->o:Landroid/os/Handler;

    .line 420
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/DTBAdRequest;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 422
    :catch_0
    sget-object p1, Lcom/amazon/device/ads/DTBAdRequest;->b:Ljava/lang/String;

    const-string v0, "Unknown exception occured in DTB ad call."

    invoke-static {p1, v0}, Lcom/amazon/device/ads/DtbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 396
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please set atleast one ad size in the request."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final varargs a([Lcom/amazon/device/ads/DTBAdSize;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/amazon/device/ads/DTBAdRequest;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 298
    sget-object v0, Lcom/amazon/device/ads/DTBAdRequest;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting 1"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " AdSize(s) to the ad request."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/DtbLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gtz v1, :cond_1

    .line 299
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 301
    iget-object v3, p0, Lcom/amazon/device/ads/DTBAdRequest;->c:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "DTBAdSize cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method
