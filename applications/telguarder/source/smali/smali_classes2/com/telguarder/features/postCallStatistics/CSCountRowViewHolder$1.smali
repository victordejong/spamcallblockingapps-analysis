.class Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder$1;
.super Ljava/lang/Object;
.source "CSCountRowViewHolder.java"

# interfaces
.implements Lcom/telguarder/features/postCallStatistics/CircleProgressView$ProgressAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;->updateCountValue(Lcom/telguarder/features/postCallStatistics/CircleProgressView;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;

.field final synthetic val$countView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;Lcom/telguarder/features/postCallStatistics/CircleProgressView;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder;

    iput-object p2, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder$1;->val$countView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSCountRowViewHolder$1;->val$countView:Lcom/telguarder/features/postCallStatistics/CircleProgressView;

    invoke-virtual {v0}, Lcom/telguarder/features/postCallStatistics/CircleProgressView;->invalidate()V

    return-void
.end method

.method public onValueChanged(F)V
    .locals 0

    return-void
.end method
