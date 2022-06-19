.class final Lcom/explorestack/iab/mraid/MraidView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView;->handleRedirect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/h;

.field final synthetic b:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/h;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$5;->b:Lcom/explorestack/iab/mraid/MraidView;

    iput-object p2, p0, Lcom/explorestack/iab/mraid/MraidView$5;->a:Lcom/explorestack/iab/mraid/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 427
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$5;->b:Lcom/explorestack/iab/mraid/MraidView;

    .line 428
    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/MraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$5;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->access$3700(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/utils/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/iab/utils/Assets;->resolveDefCloseStyle(Landroid/content/Context;Lcom/explorestack/iab/utils/h;)Lcom/explorestack/iab/utils/h;

    move-result-object v0

    .line 429
    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$5;->b:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v1}, Lcom/explorestack/iab/mraid/MraidView;->access$3800(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/e;

    move-result-object v1

    .line 1082
    iget-object v1, v1, Lcom/explorestack/iab/mraid/e;->b:Landroid/graphics/Rect;

    .line 430
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/h;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 431
    invoke-virtual {v0}, Lcom/explorestack/iab/utils/h;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 429
    invoke-static {v1, v2, v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/graphics/Rect;II)Landroid/graphics/Point;

    move-result-object v0

    .line 432
    new-instance v1, Lcom/explorestack/iab/mraid/MraidView$5$1;

    invoke-direct {v1, p0, v0}, Lcom/explorestack/iab/mraid/MraidView$5$1;-><init>(Lcom/explorestack/iab/mraid/MraidView$5;Landroid/graphics/Point;)V

    .line 444
    iget-object v2, p0, Lcom/explorestack/iab/mraid/MraidView$5;->b:Lcom/explorestack/iab/mraid/MraidView;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/explorestack/iab/mraid/MraidView$5;->a:Lcom/explorestack/iab/mraid/h;

    invoke-static {v2, v3, v0, v4, v1}, Lcom/explorestack/iab/mraid/MraidView;->access$4100(Lcom/explorestack/iab/mraid/MraidView;IILcom/explorestack/iab/mraid/h;Ljava/lang/Runnable;)V

    return-void
.end method
