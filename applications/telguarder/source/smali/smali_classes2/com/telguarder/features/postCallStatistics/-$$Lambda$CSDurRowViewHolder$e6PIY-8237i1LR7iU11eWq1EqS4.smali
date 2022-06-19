.class public final synthetic Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDurRowViewHolder$e6PIY-8237i1LR7iU11eWq1EqS4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDurRowViewHolder$e6PIY-8237i1LR7iU11eWq1EqS4;->f$0:Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

    iput-object p2, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDurRowViewHolder$e6PIY-8237i1LR7iU11eWq1EqS4;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDurRowViewHolder$e6PIY-8237i1LR7iU11eWq1EqS4;->f$0:Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/-$$Lambda$CSDurRowViewHolder$e6PIY-8237i1LR7iU11eWq1EqS4;->f$1:Landroid/widget/TextView;

    invoke-virtual {v0, v1, p1}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->lambda$setProgressTextAnimate$1$CSDurRowViewHolder(Landroid/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
