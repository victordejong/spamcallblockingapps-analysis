.class Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 442
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->d(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->e(I)Landroidx/recyclerview/widget/RecyclerView$v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$f;->c(Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 445
    iget-object v1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-static {v1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->f(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)Lcom/callapp/contacts/activity/favorites/DragItem;

    move-result-object v1

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    new-instance v3, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2$1;

    invoke-direct {v3, p0, v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2$1;-><init>(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;Landroidx/recyclerview/widget/RecyclerView$v;)V

    .line 1148
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v4, v1, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v0, v4

    iget-object v4, v1, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    .line 1149
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v0, v4

    .line 1150
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v6, v1, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v6, v2

    div-int/2addr v6, v5

    int-to-float v2, v6

    sub-float/2addr v4, v2

    iget-object v2, v1, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    .line 1151
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/2addr v2, v5

    int-to-float v2, v2

    add-float/2addr v4, v2

    new-array v2, v5, [F

    .line 1152
    iget v6, v1, Lcom/callapp/contacts/activity/favorites/DragItem;->c:F

    const/4 v7, 0x0

    aput v6, v2, v7

    const/4 v6, 0x1

    aput v0, v2, v6

    const-string v0, "X"

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v2, v5, [F

    .line 1153
    iget v8, v1, Lcom/callapp/contacts/activity/favorites/DragItem;->d:F

    aput v8, v2, v7

    aput v4, v2, v6

    const-string v4, "Y"

    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v4, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v7

    aput-object v2, v4, v6

    .line 1154
    invoke-static {v1, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1155
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 1156
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1157
    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1158
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-static {v0}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->e(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)V

    return-void
.end method
