.class public Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/ads/EnvironmentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkOperatorInfo"
.end annotation


# static fields
.field private static final a:Lcom/verizon/ads/Logger;

.field private static volatile b:I

.field private static c:Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 210
    const-class v0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;

    invoke-static {v0}, Lcom/verizon/ads/Logger;->getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;

    move-result-object v0

    sput-object v0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->a:Lcom/verizon/ads/Logger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0"

    .line 215
    iput-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->e:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->f:Ljava/lang/String;

    .line 221
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "phone"

    .line 222
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->d:Ljava/lang/String;

    .line 226
    invoke-static {p1}, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->a(Landroid/content/Context;)V

    .line 229
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 235
    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 237
    sget-object v4, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->a:Lcom/verizon/ads/Logger;

    const-string v5, "Unable to parse mcc from network operator"

    invoke-virtual {v4, v5, v2}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 240
    :goto_0
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 242
    sget-object v2, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->a:Lcom/verizon/ads/Logger;

    const-string v3, "Unable to parse mnc from network operator"

    invoke-virtual {v2, v3, v1}, Lcom/verizon/ads/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 249
    :cond_2
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->e:Ljava/lang/String;

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/verizon/ads/utils/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 254
    :cond_4
    iget p1, p1, Landroid/content/res/Configuration;->mnc:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->f:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 208
    sput p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->b:I

    return p0
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;

    monitor-enter v0

    .line 262
    :try_start_0
    sget-object v1, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->c:Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;

    if-nez v1, :cond_0

    .line 263
    new-instance v1, Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;-><init>(Landroid/content/Context;Lcom/verizon/ads/EnvironmentInfo$1;)V

    .line 264
    sput-object v1, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->c:Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;

    invoke-virtual {v1}, Lcom/verizon/ads/EnvironmentInfo$PhoneStateListenerThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getCellSignalDbm()Ljava/lang/Integer;
    .locals 1

    .line 291
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_0
    sget v0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getMCC()Ljava/lang/String;
    .locals 1

    .line 306
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getMNC()Ljava/lang/String;
    .locals 1

    .line 321
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .line 276
    invoke-static {}, Lcom/verizon/ads/VASAds;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/verizon/ads/EnvironmentInfo$NetworkOperatorInfo;->d:Ljava/lang/String;

    return-object v0
.end method
