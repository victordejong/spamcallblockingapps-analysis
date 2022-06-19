.class Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$3;
.super Ljava/lang/Object;
.source "CSDurRowViewHolder.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->setProgressTextAnimate(Landroid/widget/TextView;I)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Landroid/widget/TextView;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$3;->this$0:Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

    iput-object p2, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$3;->val$tv:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 186
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$3;->val$tv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$3;->this$0:Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->access$500(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 187
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$3;->this$0:Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

    invoke-static {p1, v1}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->access$602(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Z)Z

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$3;->val$tv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$3;->this$0:Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->access$700(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 189
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$3;->this$0:Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

    invoke-static {p1, v1}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->access$802(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
