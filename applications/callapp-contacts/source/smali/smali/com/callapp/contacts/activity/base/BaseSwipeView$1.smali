.class Lcom/callapp/contacts/activity/base/BaseSwipeView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseSwipeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/base/BaseSwipeView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/base/BaseSwipeView;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$1;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$1;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->a(Lcom/callapp/contacts/activity/base/BaseSwipeView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$1;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->isSwipeable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$1;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->b()V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$1;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    invoke-static {p1}, Lcom/callapp/contacts/activity/base/BaseSwipeView;->a(Lcom/callapp/contacts/activity/base/BaseSwipeView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseSwipeView$1;->a:Lcom/callapp/contacts/activity/base/BaseSwipeView;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseSwipeView;->g:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method
