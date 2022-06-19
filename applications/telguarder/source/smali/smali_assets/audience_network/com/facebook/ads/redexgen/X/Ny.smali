.class public final Lcom/facebook/ads/redexgen/X/Ny;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9m;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9m;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9m;)V
    .locals 0

    .line 46136
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ny;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 46137
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ny;
    .local v1, "v":Landroid/view/View;
    :try_start_0
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Ny;->A00:Lcom/facebook/ads/redexgen/X/9m;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9m;->A0H(Lcom/facebook/ads/redexgen/X/9m;Z)Z

    .line 46138
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ny;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9m;->A0G(Lcom/facebook/ads/redexgen/X/9m;)V

    .line 46139
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Ny;
    .end local v1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
