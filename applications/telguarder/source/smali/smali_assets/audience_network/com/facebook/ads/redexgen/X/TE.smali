.class public final Lcom/facebook/ads/redexgen/X/TE;
.super Lcom/facebook/ads/redexgen/X/0o;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/T6;->A1U(Lcom/facebook/ads/redexgen/X/JU;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7I;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/T6;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TE;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/T6;)V
    .locals 0

    .line 53789
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0o;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TE;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1e

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

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TE;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x5ft
        0x70t
        0x65t
        0x78t
        0x67t
        0x74t
        0x31t
        0x70t
        0x75t
        0x62t
        0x31t
        0x7ct
        0x70t
        0x7ft
        0x70t
        0x76t
        0x74t
        0x63t
        0x31t
        0x65t
        0x79t
        0x74t
        0x78t
        0x63t
        0x31t
        0x7et
        0x66t
        0x7ft
        0x31t
        0x78t
        0x7ct
        0x61t
        0x63t
        0x74t
        0x62t
        0x62t
        0x78t
        0x7et
        0x7ft
        0x62t
        0x3ft
    .end array-data
.end method


# virtual methods
.method public final A0B(Lcom/facebook/ads/redexgen/X/c9;)V
    .locals 3

    .line 53790
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/T6;

    const/4 v0, 0x1

    invoke-static {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/T6;->A0k(Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/c9;Z)V

    .line 53791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0L(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c9;->A0X()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53792
    new-instance v2, Lcom/facebook/ads/redexgen/X/TF;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/TF;-><init>(Lcom/facebook/ads/redexgen/X/TE;)V

    .line 53793
    .local p0, "carouselChildNativeAdapterListener":Lcom/facebook/ads/redexgen/X/11;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/c9;->A0X()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/T6;

    .line 53794
    .local v1, "childAd":Lcom/facebook/ads/redexgen/X/T6;
    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/T6;->A0l(Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/11;)V

    .line 53795
    .end local v1    # "childAd":Lcom/facebook/ads/redexgen/X/T6;
    goto :goto_0

    .line 53796
    .end local p0    # "carouselChildNativeAdapterListener":Lcom/facebook/ads/redexgen/X/11;
    :cond_0
    return-void
.end method

.method public final A0C()V
    .locals 1

    .line 53797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0L(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0L(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JQ;->A9K()V

    .line 53799
    :cond_0
    return-void
.end method

.method public final A0D()V
    .locals 3

    .line 53800
    const/4 v2, 0x0

    const/16 v1, 0x29

    const/16 v0, 0xf

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TE;->A00(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 1

    .line 53801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0F(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Ez;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0F(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/Ez;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bh;->A0I()V

    .line 53803
    :cond_0
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 5

    .line 53804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A11()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 53805
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/T6;

    .line 53806
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A04(Lcom/facebook/ads/redexgen/X/T6;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lb;->A01(J)J

    move-result-wide v2

    .line 53807
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jn;->A04()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 53808
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Jn;->A05()Ljava/lang/String;

    move-result-object v0

    .line 53809
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 53810
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0L(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:Lcom/facebook/ads/redexgen/X/T6;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T6;->A0L(Lcom/facebook/ads/redexgen/X/T6;)Lcom/facebook/ads/redexgen/X/T5;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/JQ;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 53812
    :cond_0
    return-void
.end method
