.class Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$1;
.super Ljava/lang/Object;
.source "CSDurRowViewHolder.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->showCurrentCallDuration(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;->access$002(Lcom/telguarder/features/postCallStatistics/CSDurRowViewHolder;Z)Z

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
