.class public final Lcom/facebook/ads/redexgen/X/ZT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZM;->A0S()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZM;)V
    .locals 0

    .line 66340
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZT;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 66341
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZT;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZM;->A02(Lcom/facebook/ads/redexgen/X/ZM;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66342
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZT;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ZM;->A02(Lcom/facebook/ads/redexgen/X/ZM;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 66343
    :goto_0
    return-object v0

    .line 66344
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZT;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
