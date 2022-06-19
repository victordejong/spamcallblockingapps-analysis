.class Lcom/callapp/contacts/activity/base/BaseSwipeView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/base/BaseSwipeView;->setOnContainerLongClickListener(Landroid/view/View$OnLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View$OnLongClickListener;

.field final synthetic b:Lcom/callapp/contacts/activity/base/BaseSwipeView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseSwipeView;Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$4;->b:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$4;->a:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$4;->b:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-boolean v0, v0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$4;->a:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_1

    .line 336
    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
