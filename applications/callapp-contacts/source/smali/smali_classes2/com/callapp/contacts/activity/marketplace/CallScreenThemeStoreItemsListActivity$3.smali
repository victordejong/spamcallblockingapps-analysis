.class Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;Landroid/view/View;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;->a:Landroid/view/View;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 99
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-lez p3, :cond_0

    .line 100
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->a(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 101
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;->b(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity;)Z

    .line 102
    iget-object p2, p0, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3$1;

    invoke-direct {p3, p0}, Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3$1;-><init>(Lcom/callapp/contacts/activity/marketplace/CallScreenThemeStoreItemsListActivity$3;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v0, 0x12c

    .line 107
    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 108
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroidx/recyclerview/widget/RecyclerView$m;)V

    :cond_0
    return-void
.end method
