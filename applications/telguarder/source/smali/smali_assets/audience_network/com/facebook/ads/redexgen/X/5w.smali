.class public final Lcom/facebook/ads/redexgen/X/5w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static A06:Lcom/facebook/ads/redexgen/X/6f;

.field public static A07:[B

.field public static final A08:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/5w;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/5y;

.field public A01:Lcom/facebook/ads/redexgen/X/6Q;

.field public final A02:Landroid/content/Context;

.field public final A03:Lcom/facebook/ads/redexgen/X/5v;

.field public final A04:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/6B;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/Zw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 14201
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5w;->A01()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/5w;->A08:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;Lcom/facebook/ads/redexgen/X/6f;)V
    .locals 3

    .line 14202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14203
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14204
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14205
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5w;->A02:Landroid/content/Context;

    .line 14206
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5w;->A03:Lcom/facebook/ads/redexgen/X/5v;

    .line 14207
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5w;->A02:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5w;->A03:Lcom/facebook/ads/redexgen/X/5v;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6Q;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/6Q;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    .line 14208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14209
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/72;->A0F(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14210
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/5w;->A02(Lcom/facebook/ads/redexgen/X/6f;)V

    .line 14211
    :cond_0
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5w;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0xc

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5w;->A07:[B

    return-void

    :array_0
    .array-data 1
        0x38t
        0x3et
        0x7at
        0x71t
        0x3t
        0xet
        0x4ct
        0x4at
        0x10t
        0xft
        0x13t
    .end array-data
.end method

.method private declared-synchronized A02(Lcom/facebook/ads/redexgen/X/6f;)V
    .locals 3

    monitor-enter p0

    .line 14212
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 14213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A03:Lcom/facebook/ads/redexgen/X/5v;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0a()Lcom/facebook/ads/redexgen/X/66;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A02(Lcom/facebook/ads/redexgen/X/66;)V

    .line 14214
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5w;->A03:Lcom/facebook/ads/redexgen/X/5v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Zw;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Zw;-><init>(Lcom/facebook/ads/redexgen/X/5v;Lcom/facebook/ads/redexgen/X/6Q;)V

    .line 14215
    .local p0, "intervalManager":Lcom/facebook/ads/redexgen/X/Zw;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 14216
    new-instance v0, Lcom/facebook/ads/redexgen/X/5y;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5y;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A00:Lcom/facebook/ads/redexgen/X/5y;

    .line 14217
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A00:Lcom/facebook/ads/redexgen/X/5y;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/5y;->A00(Lcom/facebook/ads/redexgen/X/5x;)V

    .line 14218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14219
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/72;->A0F(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14220
    invoke-virtual {v1, p1}, Lcom/facebook/ads/redexgen/X/Zw;->A06(Lcom/facebook/ads/redexgen/X/6f;)V

    .line 14221
    .end local v0
    :cond_0
    sput-object p1, Lcom/facebook/ads/redexgen/X/5w;->A06:Lcom/facebook/ads/redexgen/X/6f;

    .line 14222
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A00:Lcom/facebook/ads/redexgen/X/5y;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5y;->A01(Lcom/facebook/ads/redexgen/X/6f;)V

    .line 14223
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5w;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5w;->A02:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A03:Lcom/facebook/ads/redexgen/X/5v;

    .line 14224
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/6B;->A00(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/5v;)Lcom/facebook/ads/redexgen/X/6B;

    move-result-object v0

    .line 14225
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14226
    .end local p0    # "intervalManager":Lcom/facebook/ads/redexgen/X/Zw;
    :cond_1
    monitor-exit p0

    return-void

    .line 14227
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A03(Lcom/facebook/ads/redexgen/X/6f;)Z
    .locals 1

    .line 14228
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/72;->A0F(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14229
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/5w;->A02(Lcom/facebook/ads/redexgen/X/6f;)V

    .line 14230
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/5w;->A06:Lcom/facebook/ads/redexgen/X/6f;

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/6f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14231
    const/4 v0, 0x0

    return v0

    .line 14232
    :cond_1
    sput-object p1, Lcom/facebook/ads/redexgen/X/5w;->A06:Lcom/facebook/ads/redexgen/X/6f;

    .line 14233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A00:Lcom/facebook/ads/redexgen/X/5y;

    if-eqz v0, :cond_2

    .line 14234
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/5y;->A01(Lcom/facebook/ads/redexgen/X/6f;)V

    .line 14235
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private A04(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6j;)Z
    .locals 3

    .line 14236
    sget-object v0, Lcom/facebook/ads/redexgen/X/5w;->A06:Lcom/facebook/ads/redexgen/X/6f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/72;->A0F(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14237
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 14238
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 14239
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/5w;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    if-eqz v2, :cond_2

    .line 14240
    sget-object v1, Lcom/facebook/ads/redexgen/X/6h;->A02:Lcom/facebook/ads/redexgen/X/6h;

    sget-object v0, Lcom/facebook/ads/redexgen/X/5w;->A06:Lcom/facebook/ads/redexgen/X/6f;

    invoke-virtual {v2, v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/6Q;->A05(Lcom/facebook/ads/redexgen/X/6h;Lcom/facebook/ads/redexgen/X/6f;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6j;)V

    .line 14241
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final A05(Landroid/view/MotionEvent;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 14242
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14243
    return-void

    .line 14244
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5w;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/6B;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6B;->A06(Landroid/view/MotionEvent;)Z

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14245
    :catchall_0
    move-exception v0

    .line 14246
    .local p0, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V

    .line 14247
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final declared-synchronized A06(Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    monitor-enter p0

    .line 14248
    const/4 v7, 0x0

    .line 14249
    .local p0, "bdResponseHandled":Z
    const/4 v4, 0x0

    if-eqz p1, :cond_7

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14250
    :cond_0
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14251
    .local v7, "rootNode":Lorg/json/JSONObject;
    const/4 v2, 0x0

    const/4 v1, 0x2

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5w;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 14252
    .local v4, "bdObject":Lorg/json/JSONObject;
    if-nez v3, :cond_1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14253
    monitor-exit p0

    return v4

    .line 14254
    :cond_1
    :try_start_2
    const/4 v2, 0x6

    const/4 v1, 0x2

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5w;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14255
    const/4 v2, 0x6

    const/4 v1, 0x2

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5w;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 14256
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6f;->A00(I)Lcom/facebook/ads/redexgen/X/6f;

    move-result-object v0

    .line 14257
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5w;->A03(Lcom/facebook/ads/redexgen/X/6f;)Z

    move-result v0

    or-int/2addr v7, v0

    .line 14258
    :cond_2
    const/4 v2, 0x2

    const/4 v1, 0x2

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5w;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 14259
    .local v0, "sessionKeyArray":Lorg/json/JSONArray;
    const/16 v2, 0x8

    const/4 v1, 0x3

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5w;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 14260
    const/16 v2, 0x8

    const/4 v1, 0x3

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5w;->A00(III)Ljava/lang/String;

    move-result-object v0

    .line 14261
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 14262
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6j;->A00(I)Lcom/facebook/ads/redexgen/X/6j;

    move-result-object v3

    .line 14263
    .local p1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v4, v0, :cond_6

    .line 14264
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 14265
    .local v2, "bdChallengeIdObject":Lorg/json/JSONObject;
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5w;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 14266
    :cond_3
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5w;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14267
    .local v1, "bdChallengeId":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14268
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/5w;->A03:Lcom/facebook/ads/redexgen/X/5v;

    sget-object v0, Lcom/facebook/ads/redexgen/X/62;->A04:Lcom/facebook/ads/redexgen/X/62;

    .line 14269
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/62;->A02()Ljava/lang/String;

    move-result-object v0

    .line 14270
    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/72;->A0C(Lcom/facebook/ads/redexgen/X/5v;Ljava/lang/String;Ljava/lang/String;)V

    .line 14271
    invoke-direct {p0, v2, v3}, Lcom/facebook/ads/redexgen/X/5w;->A04(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/6j;)Z

    move-result v0

    or-int/2addr v7, v0

    .line 14272
    .end local v2    # "bdChallengeIdObject":Lorg/json/JSONObject;
    .end local v1    # "bdChallengeId":Ljava/lang/String;
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14273
    :cond_5
    sget-object v3, Lcom/facebook/ads/redexgen/X/6j;->A04:Lcom/facebook/ads/redexgen/X/6j;

    goto :goto_0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14274
    :catchall_0
    move-exception v0

    .line 14275
    .local p1, "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/67;->A03(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14276
    :catch_0
    :cond_6
    monitor-exit p0

    return v7

    .line 14277
    .end local p0    # "bdResponseHandled":Z
    .end local v2
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 14278
    .restart local p0    # "bdResponseHandled":Z
    .restart local v2    # "bdChallengeIdObject":Lorg/json/JSONObject;
    :cond_7
    :goto_2
    monitor-exit p0

    return v4
.end method
