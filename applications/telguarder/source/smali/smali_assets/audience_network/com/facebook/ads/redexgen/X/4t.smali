.class public final Lcom/facebook/ads/redexgen/X/4t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ac;-><init>(Landroid/content/Context;Lcom/facebook/ads/NativeAdBase;Lcom/facebook/ads/NativeAdLayout;Lcom/facebook/ads/AdOptionsView$Orientation;ILcom/facebook/ads/AdOptionsView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Landroid/content/Context;

.field public final synthetic A01:Landroid/widget/LinearLayout;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/ac;

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/T6;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ac;Lcom/facebook/ads/redexgen/X/T6;Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 12363
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4t;->A02:Lcom/facebook/ads/redexgen/X/ac;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/4t;->A03:Lcom/facebook/ads/redexgen/X/T6;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/4t;->A00:Landroid/content/Context;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/4t;->A01:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 12364
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4t;
    .local v1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/4t;->A03:Lcom/facebook/ads/redexgen/X/T6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T6;->A1I()V

    .line 12365
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/4t;->A00:Landroid/content/Context;

    .line 12366
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12367
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/4t;->A01:Landroid/widget/LinearLayout;

    const/16 v1, 0x80

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 12368
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/4t;
    :cond_1
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
