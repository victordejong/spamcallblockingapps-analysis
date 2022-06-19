.class public final Lcom/facebook/ads/redexgen/X/WH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WM;->A0O()Lcom/facebook/ads/redexgen/X/6e;
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

    .line 56905
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WH;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 56906
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WH;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WM;->A03(Lcom/facebook/ads/redexgen/X/WM;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56907
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WH;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WM;->A03(Lcom/facebook/ads/redexgen/X/WM;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 56908
    :goto_0
    return-object v0

    .line 56909
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WH;->A00:Lcom/facebook/ads/redexgen/X/WM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
