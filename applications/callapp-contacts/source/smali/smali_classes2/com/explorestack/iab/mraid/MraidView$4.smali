.class final Lcom/explorestack/iab/mraid/MraidView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/mraid/MraidView;->handleClose()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/mraid/MraidView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/mraid/MraidView;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/explorestack/iab/mraid/MraidView$4;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$4;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$3200(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/g;

    move-result-object v0

    sget-object v1, Lcom/explorestack/iab/mraid/g;->RESIZED:Lcom/explorestack/iab/mraid/g;

    if-ne v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$4;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$3400(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$4;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$3200(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/g;

    move-result-object v0

    sget-object v1, Lcom/explorestack/iab/mraid/g;->EXPANDED:Lcom/explorestack/iab/mraid/g;

    if-ne v0, v1, :cond_1

    .line 407
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$4;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$3500(Lcom/explorestack/iab/mraid/MraidView;)V

    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$4;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$3000(Lcom/explorestack/iab/mraid/MraidView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$4;->a:Lcom/explorestack/iab/mraid/MraidView;

    sget-object v1, Lcom/explorestack/iab/mraid/g;->HIDDEN:Lcom/explorestack/iab/mraid/g;

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidView;->access$3600(Lcom/explorestack/iab/mraid/MraidView;Lcom/explorestack/iab/mraid/g;)V

    .line 412
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$4;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/explorestack/iab/mraid/MraidView$4;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-static {v0}, Lcom/explorestack/iab/mraid/MraidView;->access$2300(Lcom/explorestack/iab/mraid/MraidView;)Lcom/explorestack/iab/mraid/MraidViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/iab/mraid/MraidView$4;->a:Lcom/explorestack/iab/mraid/MraidView;

    invoke-interface {v0, v1}, Lcom/explorestack/iab/mraid/MraidViewListener;->onClose(Lcom/explorestack/iab/mraid/MraidView;)V

    :cond_2
    return-void
.end method
