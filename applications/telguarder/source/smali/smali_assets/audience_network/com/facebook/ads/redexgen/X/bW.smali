.class public final Lcom/facebook/ads/redexgen/X/bW;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/bV;->A05()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/bV;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bW;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/bV;)V
    .locals 0

    .line 69704
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bW;->A00:Lcom/facebook/ads/redexgen/X/bV;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bW;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x32

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

    const/16 v0, 0xbf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bW;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x7t
        0x26t
        0x30t
        0x37t
        0x31t
        0x2ct
        0x3at
        0x63t
        0x34t
        0x22t
        0x30t
        0x63t
        0x2dt
        0x2ct
        0x37t
        0x63t
        0x20t
        0x22t
        0x2ft
        0x2ft
        0x26t
        0x27t
        0x6dt
        0x7bt
        0x7ft
        0x7ct
        0x48t
        0x59t
        0x54t
        0x58t
        0x53t
        0x5et
        0x58t
        0x73t
        0x58t
        0x49t
        0x4at
        0x52t
        0x4ft
        0x56t
        0x56t
        0x60t
        0x7at
        0x2ft
        0x6bt
        0x66t
        0x6bt
        0x61t
        0x28t
        0x7bt
        0x2ft
        0x6ct
        0x6et
        0x63t
        0x63t
        0x2ft
        0x6bt
        0x6at
        0x7ct
        0x7bt
        0x7dt
        0x60t
        0x76t
        0x27t
        0x26t
        0x2ft
        0x69t
        0x60t
        0x7dt
        0x2ft
        0x4et
        0x6bt
        0x2ft
        0x40t
        0x6dt
        0x65t
        0x6at
        0x6ct
        0x7bt
        0x21t
        0x2ft
        0x5bt
        0x67t
        0x66t
        0x7ct
        0x2ft
        0x62t
        0x6et
        0x76t
        0x2ft
        0x63t
        0x6at
        0x6et
        0x6bt
        0x2ft
        0x7bt
        0x60t
        0x2ft
        0x63t
        0x6at
        0x6et
        0x64t
        0x66t
        0x61t
        0x68t
        0x2ft
        0x62t
        0x6at
        0x62t
        0x60t
        0x7dt
        0x76t
        0x21t
        0x2ft
        0x5ft
        0x63t
        0x6at
        0x6et
        0x7ct
        0x6at
        0x23t
        0x2ft
        0x6et
        0x63t
        0x78t
        0x6et
        0x76t
        0x7ct
        0x2ft
        0x6ct
        0x6et
        0x63t
        0x63t
        0x2ft
        0x6bt
        0x6at
        0x7ct
        0x7bt
        0x7dt
        0x60t
        0x76t
        0x27t
        0x26t
        0x2ft
        0x78t
        0x67t
        0x6at
        0x61t
        0x2ft
        0x76t
        0x60t
        0x7at
        0x2ft
        0x6bt
        0x60t
        0x61t
        0x28t
        0x7bt
        0x2ft
        0x61t
        0x6at
        0x6at
        0x6bt
        0x2ft
        0x7bt
        0x67t
        0x66t
        0x7ct
        0x2ft
        0x4et
        0x6bt
        0x2ft
        0x40t
        0x6dt
        0x65t
        0x6at
        0x6ct
        0x7bt
        0x2ft
        0x6et
        0x61t
        0x76t
        0x2ft
        0x62t
        0x60t
        0x7dt
        0x6at
        0x21t
        0x38t
        0x29t
        0x30t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 6

    .line 69705
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bW;->A00:Lcom/facebook/ads/redexgen/X/bV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2j()V

    .line 69706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bW;->A00:Lcom/facebook/ads/redexgen/X/bV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bV;->A00:Lcom/facebook/ads/redexgen/X/1s;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1s;->A5W()Lcom/facebook/ads/redexgen/X/1r;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/1r;->A03:Lcom/facebook/ads/redexgen/X/1r;

    if-ne v1, v0, :cond_0

    .line 69707
    return-void

    .line 69708
    :cond_0
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bW;->A00:Lcom/facebook/ads/redexgen/X/bV;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/bV;->A01:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69710
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0N:I

    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bW;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 69711
    const/16 v2, 0xbc

    const/4 v1, 0x3

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bW;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8n(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 69712
    :cond_1
    const/16 v2, 0x17

    const/16 v1, 0x11

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bW;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x28

    const/16 v1, 0x94

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bW;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69713
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bW;->A00:Lcom/facebook/ads/redexgen/X/bV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bV;->A06()V

    .line 69714
    return-void
.end method
