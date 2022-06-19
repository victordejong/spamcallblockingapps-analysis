.class public final Lcom/facebook/ads/redexgen/X/Rg;
.super Lcom/facebook/ads/redexgen/X/Q8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Rb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rb;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rg;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rb;)V
    .locals 0

    .line 50326
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Q8;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rg;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x26

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

    sput-object v0, Lcom/facebook/ads/redexgen/X/Rg;->A01:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x6t
        0x11t
        0xet
        0x3dt
        0xat
        0x11t
    .end array-data
.end method


# virtual methods
.method public final A04()V
    .locals 5

    .line 50327
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A05(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A08()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A05(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lc;->A06()V

    .line 50329
    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/NX;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    .line 50330
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A0A(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/Q9;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    .line 50331
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A05(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/Lc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A02(Lcom/facebook/ads/redexgen/X/Lc;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    .line 50332
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v4

    .line 50333
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A09(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0P()Ljava/lang/String;

    move-result-object v3

    .line 50334
    .local v0, "htmlHashSum":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50335
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Rg;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50336
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A03(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A00(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Lcom/facebook/ads/redexgen/X/JC;->A8c(Ljava/lang/String;Ljava/util/Map;)V

    .line 50337
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A02(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Z()V

    .line 50338
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    .line 50339
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A00(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    .line 50340
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/24;->A01(Ljava/lang/String;)V

    .line 50341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A06(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50342
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A06(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rg;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A07(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/MZ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MZ;->A6b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A3p(Ljava/lang/String;)V

    .line 50343
    .end local p0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v0    # "htmlHashSum":Ljava/lang/String;
    :cond_1
    return-void
.end method
