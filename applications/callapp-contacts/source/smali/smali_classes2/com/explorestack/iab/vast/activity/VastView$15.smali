.class final Lcom/explorestack/iab/vast/activity/VastView$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/activity/VastView;->b(Lcom/explorestack/iab/vast/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/activity/VastView;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$15;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 350
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$15;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$15;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->r:Lcom/explorestack/iab/vast/VastRequest;

    .line 351
    invoke-virtual {p1}, Lcom/explorestack/iab/vast/VastRequest;->isR1()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$15;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->wasClicked:Z

    if-nez p1, :cond_0

    .line 353
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$15;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->b(Lcom/explorestack/iab/vast/activity/VastView;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$15;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->c(Lcom/explorestack/iab/vast/activity/VastView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 358
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$15;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->d(Lcom/explorestack/iab/vast/activity/VastView;)V

    return-void

    .line 360
    :cond_1
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$15;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/activity/VastView;->a()V

    return-void
.end method
