.class Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$4;
.super Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallbackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$4;->a:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    invoke-direct {p0}, Lcom/callapp/contacts/activity/favorites/DragListView$DragListCallbackAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$4;->a:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    .line 274
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->getViewType()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(I)Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder$4;->a:Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/contactListHeader/FavoritesHeaderContactListHolder;->u:Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;

    iget-object v0, v0, Lcom/callapp/contacts/activity/base/BaseCallAppAdapter;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;

    .line 280
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/favorites/FavoriteMemoryContactItem;->getViewType()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
