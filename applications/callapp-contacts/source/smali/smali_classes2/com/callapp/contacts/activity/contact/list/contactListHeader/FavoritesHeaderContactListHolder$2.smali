.class Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->setData(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;Ljava/util/List;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$2;->b:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$2;->b:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->b(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$2;->b:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$2;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->a(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;Ljava/util/List;)Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    move-result-object v1

    iput-object v1, v0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    .line 236
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$2;->b:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->t:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$2;->b:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    iget-object v1, v1, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void

    .line 238
    :cond_0
    const-class v0, Lcom/callapp/contacts/activity/base/BaseCallAppFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/String;)V

    return-void
.end method
