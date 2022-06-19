.class public final Lcom/facebook/ads/redexgen/X/W9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WM;->A0M()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/WM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WM;)V
    .locals 0

    .line 56853
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W9;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 3

    .line 56854
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W9;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WM;->A04(Lcom/facebook/ads/redexgen/X/WM;)Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56855
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/W9;->A00:Lcom/facebook/ads/redexgen/X/WM;

    .line 56856
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/WM;->A04(Lcom/facebook/ads/redexgen/X/WM;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W9;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WM;->A01(Lcom/facebook/ads/redexgen/X/WM;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56857
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 56858
    :goto_0
    return-object v0

    .line 56859
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W9;->A00:Lcom/facebook/ads/redexgen/X/WM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
