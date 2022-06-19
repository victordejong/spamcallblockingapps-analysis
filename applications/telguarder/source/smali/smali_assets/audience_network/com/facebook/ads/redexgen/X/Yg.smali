.class public final Lcom/facebook/ads/redexgen/X/Yg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YV;->A0e()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YV;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Yg;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YV;)V
    .locals 0

    .line 65986
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yg;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "p7EC3c"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jbtDKaD5Z7FZmCA8Tyb5bjoDZPB3XIY2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gN4blZSWnP43Fk7Om0YrdYcMBIIpHO4a"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "p0qtB1emiU6G765EASM1OcWT08y3XCXA"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1ZqWuUd0TpRNae4xVM11T"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "02wbSACfGk6TkagGqbGrcxSS0Fw2WWgU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fPt64i0CtkQgLYinnBq5DKF8M62XpLYl"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "FfZyk9C2HodGPCodKMa1dI5zFJjfsLSN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 65987
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge v1, v0, :cond_1

    .line 65988
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Yg;->A00:Lcom/facebook/ads/redexgen/X/YV;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A01:[Ljava/lang/String;

    const-string v1, "q4HaTS1UDnccHCItVreS2O4fjT3BUkxr"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "wxbkdqV2zQMYQC3RNbEohU1Ek9mk0eXi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 65989
    :cond_1
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Yg;->A00:Lcom/facebook/ads/redexgen/X/YV;

    sget-object v3, Landroid/os/Build$VERSION;->SECURITY_PATCH:Ljava/lang/String;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Yg;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A01:[Ljava/lang/String;

    const-string v1, "Cy9DrRq4wpeRjC0Bv79lbEwakBzN4ckK"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "6ikYqwUpRyGpqC8gPSVs1GsAyZM2kv67"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Yg;->A01:[Ljava/lang/String;

    const-string v1, "W4oBxCGVpsaoAC2uOnQibN0gzS16WkpC"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "exKPBLPGT4EqaC5fFZwEwZMu0uD2ZXay"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
