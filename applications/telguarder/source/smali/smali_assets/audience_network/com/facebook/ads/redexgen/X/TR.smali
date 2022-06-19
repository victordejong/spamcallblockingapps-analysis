.class public final Lcom/facebook/ads/redexgen/X/TR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JC;


# static fields
.field public static A03:Lcom/facebook/ads/redexgen/X/JC;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A04:[B

.field public static final A05:Ljava/lang/String;

.field public static volatile A06:Z


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Wl;

.field public final A01:Lcom/facebook/ads/redexgen/X/9K;

.field public final A02:Lcom/facebook/ads/redexgen/X/JB;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 54176
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TR;->A03()V

    const-class v0, Lcom/facebook/ads/redexgen/X/TR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TR;->A05:Ljava/lang/String;

    .line 54177
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/TR;->A06:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 2

    .line 54178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54179
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54180
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/J6;->A0U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54181
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9I;->A00(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/9K;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A01:Lcom/facebook/ads/redexgen/X/9K;

    .line 54182
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A01:Lcom/facebook/ads/redexgen/X/9K;

    .line 54183
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JH;->A01(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/9K;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    .line 54184
    .local p0, "dispatchCallback":Lcom/facebook/ads/redexgen/X/JA;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Wl;
    .local p0, "dispatchCallback":Lcom/facebook/ads/redexgen/X/JA;
    :goto_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/TU;-><init>(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/JA;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/TR;->A02:Lcom/facebook/ads/redexgen/X/JB;

    .line 54185
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lo;->A08:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/TT;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TT;-><init>(Lcom/facebook/ads/redexgen/X/TR;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 54186
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/TR;->A04(Lcom/facebook/ads/redexgen/X/Wl;)V

    .line 54187
    return-void

    .line 54188
    .end local p0    # "dispatchCallback":Lcom/facebook/ads/redexgen/X/JA;
    :cond_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9I;->A01(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/Di;

    move-result-object v1

    .line 54189
    .local p0, "adEventStorage":Lcom/facebook/ads/redexgen/X/WJ;
    invoke-static {p1, v1}, Lcom/facebook/ads/redexgen/X/JH;->A00(Lcom/facebook/ads/redexgen/X/Wl;Lcom/facebook/ads/redexgen/X/WJ;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    .line 54190
    .local p1, "dispatchCallback":Lcom/facebook/ads/redexgen/X/JA;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/TR;->A01:Lcom/facebook/ads/redexgen/X/9K;

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/TR;)Lcom/facebook/ads/redexgen/X/JB;
    .locals 0

    .line 54191
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/TR;->A02:Lcom/facebook/ads/redexgen/X/JB;

    return-object p0
.end method

.method public static declared-synchronized A01(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/TR;

    monitor-enter v1

    .line 54192
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/TR;->A03:Lcom/facebook/ads/redexgen/X/JC;

    if-nez v0, :cond_0

    .line 54193
    new-instance v0, Lcom/facebook/ads/redexgen/X/TR;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TR;-><init>(Lcom/facebook/ads/redexgen/X/Wl;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/TR;->A03:Lcom/facebook/ads/redexgen/X/JC;

    .line 54194
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/TR;->A03:Lcom/facebook/ads/redexgen/X/JC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 54195
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TR;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x34

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TR;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x32t
        0x77t
        0x64t
        0x77t
        0x7ct
        0x66t
        0x3ct
        0x36t
        0x3t
        0x3t
        0x12t
        0x1at
        0x7t
        0x3t
        0x1et
        0x19t
        0x10t
        0x57t
        0x3t
        0x18t
        0x57t
        0x1bt
        0x18t
        0x10t
        0x57t
        0x16t
        0x19t
        0x57t
        0x1et
        0x19t
        0x1t
        0x16t
        0x1bt
        0x1et
        0x13t
        0x57t
        0x42t
        0x64t
        0x77t
        0x75t
        0x73t
        0x57t
        0x55t
        0x5et
        0x55t
        0x42t
        0x59t
        0x53t
        0x1dt
        0x10t
        0x19t
        0xct
    .end array-data
.end method

.method public static declared-synchronized A04(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/TR;

    monitor-enter v1

    .line 54196
    :try_start_0
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/TR;->A06:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54197
    monitor-exit v1

    return-void

    .line 54198
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/api/InitApi;->onAdEventManagerCreated(Landroid/content/Context;)V

    .line 54199
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/TR;->A06:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54200
    monitor-exit v1

    return-void

    .line 54201
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/J9;)V
    .locals 5

    .line 54202
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A0A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54203
    sget-object v4, Lcom/facebook/ads/redexgen/X/TR;->A05:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x7

    const/16 v1, 0x1d

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TR;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A06()Lcom/facebook/ads/redexgen/X/JF;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TR;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54204
    return-void

    .line 54205
    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TR;->A06(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54206
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TR;->A01:Lcom/facebook/ads/redexgen/X/9K;

    new-instance v0, Lcom/facebook/ads/redexgen/X/TS;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/TS;-><init>(Lcom/facebook/ads/redexgen/X/TR;Lcom/facebook/ads/redexgen/X/J9;)V

    invoke-interface {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/9K;->AEo(Lcom/facebook/ads/redexgen/X/J9;Lcom/facebook/ads/redexgen/X/9H;)V

    .line 54207
    return-void
.end method

.method private A06(Lcom/facebook/ads/redexgen/X/J9;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ThrowException"
        }
    .end annotation

    .line 54208
    sget-object v1, Lcom/facebook/ads/redexgen/X/JD;->A00:[I

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A06()Lcom/facebook/ads/redexgen/X/JF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JF;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 54209
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/TR;
    :goto_0
    return-void

    .line 54210
    :pswitch_0
    const/16 v2, 0x24

    const/4 v1, 0x5

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TR;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 54211
    .local p0, "debugLogEvent":Lcom/facebook/ads/redexgen/X/8f;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 54212
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0x30

    const/4 v1, 0x4

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TR;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/J9;->A06()Lcom/facebook/ads/redexgen/X/JF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JF;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A05(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54213
    :catch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54214
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/8e;->A12:I

    .line 54215
    const/16 v2, 0x29

    const/4 v1, 0x7

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TR;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/8d;->A8Y(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final A8P(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54216
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54217
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54218
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54219
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54220
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 54221
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A04:Lcom/facebook/ads/redexgen/X/JF;

    .line 54222
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54223
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54224
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54225
    return-void
.end method

.method public final A8S(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54226
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54227
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54228
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54229
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54230
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 54231
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A06:Lcom/facebook/ads/redexgen/X/JF;

    .line 54232
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54233
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54234
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54235
    return-void
.end method

.method public final A8T(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54236
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54237
    return-void

    .line 54238
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54239
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54240
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54241
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54242
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 54243
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A07:Lcom/facebook/ads/redexgen/X/JF;

    .line 54244
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0H:Lcom/facebook/ads/redexgen/X/JJ;

    .line 54245
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JJ;)Z

    move-result v0

    .line 54246
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54247
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54248
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54249
    return-void
.end method

.method public final A8U(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54250
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54251
    return-void

    .line 54252
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54253
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54254
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54255
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54256
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 54257
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A08:Lcom/facebook/ads/redexgen/X/JF;

    .line 54258
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A05:Lcom/facebook/ads/redexgen/X/JJ;

    .line 54259
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JJ;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54260
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54261
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54262
    return-void
.end method

.method public final A8W(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54263
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54264
    return-void

    .line 54265
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54266
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54267
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54268
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54269
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 54270
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0B:Lcom/facebook/ads/redexgen/X/JF;

    .line 54271
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54272
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54273
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54274
    return-void
.end method

.method public final A8a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54275
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54276
    return-void

    .line 54277
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54278
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54279
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54280
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54281
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 54282
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0C:Lcom/facebook/ads/redexgen/X/JF;

    .line 54283
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54284
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54285
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54286
    return-void
.end method

.method public final A8c(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54287
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54288
    return-void

    .line 54289
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54290
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54291
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54292
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54293
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A05:Lcom/facebook/ads/redexgen/X/JE;

    .line 54294
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0D:Lcom/facebook/ads/redexgen/X/JF;

    .line 54295
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0S:Lcom/facebook/ads/redexgen/X/JJ;

    .line 54296
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JJ;)Z

    move-result v0

    .line 54297
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54298
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54299
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54300
    return-void
.end method

.method public final A8d(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54301
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54302
    return-void

    .line 54303
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54304
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54305
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54306
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54307
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A05:Lcom/facebook/ads/redexgen/X/JE;

    .line 54308
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0E:Lcom/facebook/ads/redexgen/X/JF;

    .line 54309
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54310
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54311
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54312
    return-void
.end method

.method public final A8e(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54313
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54314
    return-void

    .line 54315
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54316
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54317
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54318
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54319
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A05:Lcom/facebook/ads/redexgen/X/JE;

    .line 54320
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0I:Lcom/facebook/ads/redexgen/X/JF;

    .line 54321
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0V:Lcom/facebook/ads/redexgen/X/JJ;

    .line 54322
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JJ;)Z

    move-result v0

    .line 54323
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54324
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54325
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54326
    return-void
.end method

.method public final A8g(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54327
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54328
    return-void

    .line 54329
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54330
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54331
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54332
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54333
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 54334
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0H:Lcom/facebook/ads/redexgen/X/JF;

    .line 54335
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0W:Lcom/facebook/ads/redexgen/X/JJ;

    .line 54336
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JJ;)Z

    move-result v0

    .line 54337
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54338
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54339
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54340
    return-void
.end method

.method public final A8i(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JE;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/JE;",
            ")V"
        }
    .end annotation

    .line 54341
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54342
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54343
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54344
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54345
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54346
    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    .line 54347
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/JF;->A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54348
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54349
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54350
    return-void
.end method

.method public final A8j(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54351
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54352
    return-void

    .line 54353
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54354
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54355
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54356
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54357
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 54358
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0J:Lcom/facebook/ads/redexgen/X/JF;

    .line 54359
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54360
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54361
    .local p0, "adEvent":Lcom/facebook/ads/redexgen/X/J9;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54362
    return-void
.end method

.method public final A8o(Ljava/lang/String;)V
    .locals 3

    .line 54363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54364
    return-void

    .line 54365
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54366
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54367
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54368
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 54369
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0M:Lcom/facebook/ads/redexgen/X/JF;

    .line 54370
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0Z:Lcom/facebook/ads/redexgen/X/JJ;

    .line 54371
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JJ;)Z

    move-result v0

    .line 54372
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54373
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54374
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54375
    return-void
.end method

.method public final A8q(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54376
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54377
    return-void

    .line 54378
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54379
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54380
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54381
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54382
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 54383
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0G:Lcom/facebook/ads/redexgen/X/JF;

    .line 54384
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54385
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54386
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54387
    return-void
.end method

.method public final A8r(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54388
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54389
    return-void

    .line 54390
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54391
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54392
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54393
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54394
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A05:Lcom/facebook/ads/redexgen/X/JE;

    .line 54395
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0N:Lcom/facebook/ads/redexgen/X/JF;

    .line 54396
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0d:Lcom/facebook/ads/redexgen/X/JJ;

    .line 54397
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JJ;)Z

    move-result v0

    .line 54398
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54399
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54400
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54401
    return-void
.end method

.method public final A8s(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54402
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54403
    return-void

    .line 54404
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54405
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54406
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54407
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54408
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 54409
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0R:Lcom/facebook/ads/redexgen/X/JF;

    .line 54410
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0f:Lcom/facebook/ads/redexgen/X/JJ;

    .line 54411
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JJ;)Z

    move-result v0

    .line 54412
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54413
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54414
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54415
    return-void
.end method

.method public final A8t(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54416
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54417
    return-void

    .line 54418
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54419
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54420
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54421
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54422
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A04:Lcom/facebook/ads/redexgen/X/JE;

    .line 54423
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0Q:Lcom/facebook/ads/redexgen/X/JF;

    .line 54424
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JJ;->A0g:Lcom/facebook/ads/redexgen/X/JJ;

    .line 54425
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/JM;->A0B(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JJ;)Z

    move-result v0

    .line 54426
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A06(Z)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54427
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54428
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54429
    return-void
.end method

.method public final A8u(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54430
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54431
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54432
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54433
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54434
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A05:Lcom/facebook/ads/redexgen/X/JE;

    .line 54435
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0S:Lcom/facebook/ads/redexgen/X/JF;

    .line 54436
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54437
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54438
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54439
    return-void
.end method

.method public final A8w(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54440
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54441
    return-void

    .line 54442
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/J8;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/J8;-><init>()V

    .line 54443
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/J8;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54444
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A01()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/J8;->A00(D)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54445
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A03(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v0

    .line 54446
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/J8;->A05(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JE;->A05:Lcom/facebook/ads/redexgen/X/JE;

    .line 54447
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A01(Lcom/facebook/ads/redexgen/X/JE;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/JF;->A0T:Lcom/facebook/ads/redexgen/X/JF;

    .line 54448
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A02(Lcom/facebook/ads/redexgen/X/JF;)Lcom/facebook/ads/redexgen/X/J8;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    .line 54449
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/J8;->A07(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    .line 54450
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V

    .line 54451
    return-void
.end method

.method public final ACS(Ljava/lang/String;)V
    .locals 3

    .line 54452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TR;->A00:Lcom/facebook/ads/redexgen/X/Wl;

    new-instance v2, Lcom/facebook/ads/redexgen/X/QZ;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/QZ;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54453
    return-void
.end method
