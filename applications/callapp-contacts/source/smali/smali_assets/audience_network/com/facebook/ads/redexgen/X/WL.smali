.class public final Lcom/facebook/ads/redexgen/X/WL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WM;->A0J()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/WM;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/WL;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WM;)V
    .locals 0

    .line 56933
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/WL;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x51

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

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/WL;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x80t
        -0x1ct
        -0x1dt
        -0x2bt
        -0x44t
        -0x39t
    .end array-data
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 56934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WM;->A09(Lcom/facebook/ads/redexgen/X/WM;)[Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 56935
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56936
    .local p0, "sb":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WM;->A09(Lcom/facebook/ads/redexgen/X/WM;)[Landroid/content/pm/ActivityInfo;

    move-result-object v0

    array-length v0, v0

    if-ge v4, v0, :cond_1

    .line 56937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WM;->A09(Lcom/facebook/ads/redexgen/X/WM;)[Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aget-object v0, v0, v4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WM;->A09(Lcom/facebook/ads/redexgen/X/WM;)[Landroid/content/pm/ActivityInfo;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-eq v4, v0, :cond_0

    .line 56939
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56940
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56941
    .end local v0    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:Lcom/facebook/ads/redexgen/X/WM;

    .line 56942
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x5

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/WL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/71;->A06:Lcom/facebook/ads/redexgen/X/71;

    .line 56943
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/72;->A08([BLcom/facebook/ads/redexgen/X/71;)Ljava/lang/String;

    move-result-object v0

    .line 56944
    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 56945
    .local v0, "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    return-object v0

    .line 56946
    .end local p0    # "sb":Ljava/lang/StringBuilder;
    .end local v0    # "signalValueTypeDef":Lcom/facebook/ads/redexgen/X/6t;
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WL;->A00:Lcom/facebook/ads/redexgen/X/WM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
