.class public final Lcom/facebook/ads/redexgen/X/Xt;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xj;->A0R()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xj;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xt;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xj;)V
    .locals 0

    .line 65479
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "xnGY58SPKTQvUTuUOQGqzsGSrB8gmUGT"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Q6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "qSNkOupNFTYE094tIqGMw1e4jxrXNeJF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dkBb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "kbp1"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0fsNOpc2u8OU7PdLSDyIbw09XOJ8fJwj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hrKFGCIgOYuBUQbeVDOt2ONhdHAmAoOg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dj"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xt;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 5

    .line 65480
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge v1, v0, :cond_0

    .line 65481
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xt;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 65482
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xt;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A04(Lcom/facebook/ads/redexgen/X/Xj;)Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65483
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Xt;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Xj;->A04(Lcom/facebook/ads/redexgen/X/Xj;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xt;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xt;->A01:[Ljava/lang/String;

    const-string v1, "oajV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "LNpg"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Lcom/facebook/ads/redexgen/X/6V;->A0G(Z)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 65484
    :goto_0
    return-object v0

    .line 65485
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Xt;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Xt;->A01:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xt;->A01:[Ljava/lang/String;

    const-string v1, "UQ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "pz"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
