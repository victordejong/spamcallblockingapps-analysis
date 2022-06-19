.class public final Lcom/facebook/ads/redexgen/X/Or;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ou;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/Os;Lcom/facebook/ads/redexgen/X/Ot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ou;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Or;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ou;)V
    .locals 0

    .line 47494
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Or;->A00:Lcom/facebook/ads/redexgen/X/Ou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ghkUVmlwULkXhCGcvaakm2iAj65EZu55"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "n7UqIh4JR7BUI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0DOnhTCO7uzBT2it3E5SppgFott9uSJ5"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "9s3KxlTd8SxVggcVOlt3R4EurMnypwdB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QYcipI7nYG7uk"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "phVdl7dn088KCdzjkI7bm9gtd3rYddi4"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "tKYyRthLF0yQ9l"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Or;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v4, p0

    .line 47495
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Or;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Or;->A00:Lcom/facebook/ads/redexgen/X/Ou;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ou;->A01(Lcom/facebook/ads/redexgen/X/Ou;)Lcom/facebook/ads/redexgen/X/Ot;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Or;->A00:Lcom/facebook/ads/redexgen/X/Ou;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ou;->A00(Lcom/facebook/ads/redexgen/X/Ou;)Lcom/facebook/ads/redexgen/X/Os;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ot;->ABl(Lcom/facebook/ads/redexgen/X/Os;)V

    .line 47496
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Or;
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Or;->A01:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Or;->A01:[Ljava/lang/String;

    const-string v1, "KYuoXObYE4adBl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3, v4}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
