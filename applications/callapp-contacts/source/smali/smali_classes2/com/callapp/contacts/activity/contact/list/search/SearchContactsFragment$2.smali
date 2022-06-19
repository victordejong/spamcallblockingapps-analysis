.class Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$2;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    const/4 p1, 0x0

    .line 397
    iput p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$2;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 401
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 402
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$2;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->b(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$2;->a:I

    if-eq v1, v0, :cond_0

    .line 404
    invoke-static {p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/view/View;)V

    .line 405
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$2;->b:Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;->b(Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment;)Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/interfaces/ContactScrollEvent;->m()V

    .line 408
    :cond_0
    iput p2, p0, Lcom/callapp/contacts/activity/contact/list/search/SearchContactsFragment$2;->a:I

    return-void
.end method
