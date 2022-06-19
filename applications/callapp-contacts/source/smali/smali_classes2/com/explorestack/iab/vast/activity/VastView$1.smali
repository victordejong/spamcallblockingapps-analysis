.class final Lcom/explorestack/iab/vast/activity/VastView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/activity/VastView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 185
    iput-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$1;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$1;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-virtual {p1}, Lcom/explorestack/iab/vast/activity/VastView;->b()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$1;->a:Lcom/explorestack/iab/vast/activity/VastView;

    iget-object p1, p1, Lcom/explorestack/iab/vast/activity/VastView;->s:Lcom/explorestack/iab/vast/activity/VastView$VastViewState;

    iget-boolean p1, p1, Lcom/explorestack/iab/vast/activity/VastView$VastViewState;->isCompanionShown:Z

    if-eqz p1, :cond_1

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/explorestack/iab/vast/activity/VastView$1;->a:Lcom/explorestack/iab/vast/activity/VastView;

    invoke-static {p1}, Lcom/explorestack/iab/vast/activity/VastView;->a(Lcom/explorestack/iab/vast/activity/VastView;)V

    :cond_1
    return-void
.end method
