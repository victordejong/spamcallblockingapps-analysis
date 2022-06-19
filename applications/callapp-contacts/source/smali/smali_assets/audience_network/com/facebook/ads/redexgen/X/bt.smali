.class public final Lcom/facebook/ads/redexgen/X/bt;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JM;->A03(Lcom/facebook/ads/redexgen/X/8D;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8D;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bt;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0

    .line 71346
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bt;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bt;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x33

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

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bt;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x6ft
        0x63t
        0x61t
        0x22t
        0x6at
        0x6dt
        0x6ft
        0x69t
        0x6et
        0x63t
        0x63t
        0x67t
        0x22t
        0x6dt
        0x68t
        0x7ft
        0x22t
        0x40t
        0x43t
        0x4ft
        0x4dt
        0x40t
        0x53t
        0x4ft
        0x43t
        0x59t
        0x42t
        0x58t
        0x49t
        0x5et
        0x5ft
        0x58t
        0x5bt
        0x57t
        0x55t
        0x58t
        0x6bt
        0x57t
        0x5bt
        0x41t
        0x5at
        0x40t
        0x51t
        0x46t
        0x47t
        0x54t
        0x5ct
        0x58t
        0x4at
        0x4ct
        0x4bt
        0x5ct
        0x5dt
        0x66t
        0x4at
        0x5ct
        0x4at
        0x4at
        0x50t
        0x56t
        0x57t
        0x66t
        0x50t
        0x5dt
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 7

    .line 71347
    const/4 v6, 0x0

    .line 71348
    .local p0, "sp":Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bt;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 71349
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bt;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bt;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 71350
    invoke-static {v1, v0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    .line 71351
    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 71352
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 71353
    .local v6, "allValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v0, 0x1

    if-le v1, v0, :cond_0

    .line 71354
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bt;->A00:Lcom/facebook/ads/redexgen/X/8D;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bt;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 71355
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qc;->A00(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QK;

    move-result-object v0

    .line 71356
    invoke-static {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/JM;->A05(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/QK;Ljava/util/Map;)V

    .line 71357
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71358
    :cond_0
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v2, 0x2d

    const/16 v1, 0x13

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bt;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bt;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 71359
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71360
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71361
    :catch_0
    move-exception v1

    .line 71362
    .local v6, "t":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bt;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 71363
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    const/16 v4, 0xdae

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 71364
    const/16 v2, 0x1f

    const/16 v1, 0xe

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bt;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 71365
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71366
    .end local v6    # "t":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
