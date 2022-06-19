.class Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$v;

.field final synthetic b:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;Landroidx/recyclerview/widget/RecyclerView$v;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2$1;->b:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;

    iput-object p2, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2$1;->a:Landroidx/recyclerview/widget/RecyclerView$v;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 448
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2$1;->a:Landroidx/recyclerview/widget/RecyclerView$v;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$v;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 449
    iget-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2$1;->b:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;

    iget-object p1, p1, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView$2;->a:Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;->e(Lcom/callapp/contacts/activity/favorites/DragItemRecyclerView;)V

    return-void
.end method
