.class public final Lcom/facebook/ads/redexgen/X/5a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A01:[B


# instance fields
.field public A00:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/5a;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 3

    .line 13613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13614
    const/16 v2, 0x21

    const/16 v1, 0x15

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5a;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/8D;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Landroid/content/SharedPreferences;

    .line 13615
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5a;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7f

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

    const/16 v0, 0x45

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5a;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x29t
        0x2ct
        0x3et
        0x2dt
        0x3at
        0x3ct
        0x21t
        0x3bt
        0x21t
        0x26t
        0x2ft
        0x1t
        0x2ct
        0x50t
        0x45t
        0x45t
        0x43t
        0x58t
        0x53t
        0x44t
        0x45t
        0x58t
        0x5et
        0x5ft
        0x78t
        0x55t
        0x5dt
        0x5ft
        0x5dt
        0x56t
        0x5bt
        0x6at
        0x6dt
        0x18t
        0x14t
        0x16t
        0x55t
        0x1dt
        0x1at
        0x18t
        0x1et
        0x19t
        0x14t
        0x14t
        0x10t
        0x55t
        0x1at
        0x1ft
        0x8t
        0x55t
        0x12t
        0x1ft
        0x1dt
        0x1at
        0x73t
        0x76t
        0x72t
        0x76t
        0x6bt
        0x5et
        0x7bt
        0x4bt
        0x6dt
        0x7et
        0x7ct
        0x74t
        0x76t
        0x71t
        0x78t
    .end array-data
.end method


# virtual methods
.method public final A02()Lcom/facebook/ads/redexgen/X/5Z;
    .locals 11

    .line 13616
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5a;->A00(III)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13617
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5a;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 13618
    .local p0, "advertiserId":Ljava/lang/String;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    const/16 v2, 0x36

    const/16 v1, 0xf

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5a;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 13619
    .local v3, "limitAdTracking":Z
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Landroid/content/SharedPreferences;

    const-wide/16 v1, -0x1

    const/16 v4, 0x1a

    const/4 v3, 0x7

    const/16 v0, 0x41

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/5a;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 13620
    .local v1, "cacheTS":J
    new-instance v5, Lcom/facebook/ads/redexgen/X/5Z;

    sget-object v8, Lcom/facebook/ads/redexgen/X/5Y;->A08:Lcom/facebook/ads/redexgen/X/5Y;

    invoke-direct/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/5Z;-><init>(Ljava/lang/String;ZLcom/facebook/ads/redexgen/X/5Y;J)V

    return-object v5

    .line 13621
    .end local p0    # "advertiserId":Ljava/lang/String;
    .end local v3    # "limitAdTracking":Z
    .end local v1    # "cacheTS":J
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5Z;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 5

    .line 13622
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Landroid/content/SharedPreferences;

    const/16 v2, 0xd

    const/16 v1, 0xd

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5a;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5a;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/5Z;)V
    .locals 6

    .line 13623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 13624
    .local p0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5Z;->A03()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xd

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5a;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13625
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5Z;->A04()Z

    move-result v3

    const/16 v2, 0x36

    const/16 v1, 0xf

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5a;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 13626
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5Z;->A01()J

    move-result-wide v2

    const/16 v4, 0x1a

    const/4 v1, 0x7

    const/16 v0, 0x41

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/5a;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 13627
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13628
    return-void
.end method

.method public final A05(Ljava/lang/String;)V
    .locals 4

    .line 13629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5a;->A00:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 13630
    .local p0, "editor":Landroid/content/SharedPreferences$Editor;
    const/16 v2, 0xd

    const/16 v1, 0xd

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5a;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13631
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 13632
    return-void
.end method
