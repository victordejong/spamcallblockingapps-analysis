.class public final Lcom/facebook/ads/redexgen/X/Xu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xj;->A0S()Lcom/facebook/ads/redexgen/X/6e;
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

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Xu;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xj;)V
    .locals 0

    .line 65486
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xu;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2BB4WaFPi"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Ppp5J7MJlcSrC44EyMLriKptNK43OpAE"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "GAKvKftb4whSTpLdZGmwcUR28dz29GJn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "U4rodEufE3PxuR12O"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4C5DgqNB6YokFavTy"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vha3jQyEZ4GIBsYpQjGUq0ew1M825RnM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EQ3p7aO8lzcQZWnO2P9IwuVAjglPyWLk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "e16uQRhvr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xu;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 65487
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge v1, v0, :cond_0

    .line 65488
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xu;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 65489
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xu;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A04(Lcom/facebook/ads/redexgen/X/Xj;)Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xu;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    .line 65490
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A04(Lcom/facebook/ads/redexgen/X/Xj;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xu;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    .line 65491
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Xj;->A04(Lcom/facebook/ads/redexgen/X/Xj;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65492
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Xu;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    .line 65493
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Xj;->A04(Lcom/facebook/ads/redexgen/X/Xj;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallReason()I

    move-result v0

    .line 65494
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A05(I)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 65495
    :goto_0
    return-object v0

    .line 65496
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Xu;->A00:Lcom/facebook/ads/redexgen/X/Xj;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xu;->A01:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xu;->A01:[Ljava/lang/String;

    const-string v1, "g8NQpo0F7ND8Dud6m"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "hZiXgS9FT5vUjBDTm"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
