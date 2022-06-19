.class public final Lcom/facebook/ads/redexgen/X/TP;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/JN;->A03(Lcom/facebook/ads/redexgen/X/8D;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8D;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TP;->A03()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TP;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0

    .line 53996
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/TP;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/TP;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/TP;->A02:[Ljava/lang/String;

    const-string v1, "yU9Q3i2imseGifaShK33hUjg5wmSv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_0

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x64

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TP;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x4t
        0x10t
        0xet
        -0x31t
        0x7t
        0x2t
        0x4t
        0x6t
        0x3t
        0x10t
        0x10t
        0xct
        -0x31t
        0x2t
        0x5t
        0x14t
        -0x31t
        -0x13t
        -0x10t
        -0x1ct
        -0x1et
        -0x13t
        0x0t
        -0x1ct
        -0x10t
        -0xat
        -0x11t
        -0xbt
        -0x1at
        -0xdt
        -0xct
        -0x2t
        0x1t
        -0xbt
        -0xdt
        -0x2t
        -0xft
        -0xbt
        0x1t
        0x7t
        0x0t
        0x6t
        -0x9t
        0x4t
        0x5t
        -0xdt
        -0x15t
        -0x19t
        -0x7t
        -0x5t
        -0x8t
        -0x15t
        -0x16t
        -0x1bt
        -0x7t
        -0x15t
        -0x7t
        -0x7t
        -0x11t
        -0xbt
        -0xct
        -0x1bt
        -0x11t
        -0x16t
    .end array-data
.end method

.method public static A03()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Cp4y0jGzgjmlhNOtolFVOVefspLcmrKL"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5GK8sLOcHtszB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "AOLPTOXU9sJ8f7mkW5imzLW9uvMXwnIa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cYEf6saXY9z3veQOBiLayO"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AetyrNGNYAsiijDpUFLgJdlj31dZpeYf"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "GwgqZOf2k60xdBESFLM8urtE7U9bH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vGNTznilo2MQ1OpS5sYGGd"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "eyCkGrJdBkkJqznMzmMtN6FzCpyOGqXF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TP;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 7

    .line 53997
    const/4 v6, 0x0

    .line 53998
    .local p0, "sp":Landroid/content/SharedPreferences;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 53999
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TP;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 54000
    invoke-static {v1, v0}, Lcom/facebook/ads/internal/util/process/ProcessUtils;->getProcessSpecificName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    .line 54001
    invoke-virtual {v3, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 54002
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    .line 54003
    .local v6, "allValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v5}, Ljava/util/Map;->size()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/TP;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    .line 54004
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54005
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/TP;->A02:[Ljava/lang/String;

    const-string v1, "aveP7BpfQu1XCL0VXutwleQyoDJgBTrS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-le v4, v3, :cond_1

    .line 54006
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:Lcom/facebook/ads/redexgen/X/8D;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 54007
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/QX;->A00(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v0

    .line 54008
    invoke-static {v1, v0, v5}, Lcom/facebook/ads/redexgen/X/JN;->A05(Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/QF;Ljava/util/Map;)V

    .line 54009
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54010
    :cond_1
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/16 v2, 0x2d

    const/16 v1, 0x13

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TP;->A00(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 54011
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A05()Lcom/facebook/ads/redexgen/X/93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/93;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 54012
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 54013
    :catch_0
    move-exception v1

    .line 54014
    .local v6, "t":Lorg/json/JSONException;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TP;->A00:Lcom/facebook/ads/redexgen/X/8D;

    .line 54015
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    const/16 v4, 0xdae

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 54016
    const/16 v2, 0x1f

    const/16 v1, 0xe

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TP;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 54017
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54018
    .end local v6    # "t":Lorg/json/JSONException;
    :goto_0
    return-void
.end method
