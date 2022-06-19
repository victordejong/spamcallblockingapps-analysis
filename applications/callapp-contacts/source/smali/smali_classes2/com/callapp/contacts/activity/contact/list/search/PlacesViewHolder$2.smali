.class Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

.field final synthetic b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$2;->c:Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$2;->a:Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$2;->b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x1

    .line 137
    invoke-static {p1, v0}, Lcom/callapp/contacts/util/AndroidUtils;->a(Landroid/view/View;I)V

    .line 138
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$2;->c:Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->a(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$2;->a:Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->getPhone()Lcom/callapp/framework/phone/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$2;->a:Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    iget-object v3, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$2;->b:Lcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;

    invoke-static {p1, v1, v2, v0, v3}, Lcom/callapp/contacts/util/ListsUtils;->a(Landroid/content/Context;Lcom/callapp/framework/phone/Phone;Lcom/callapp/contacts/activity/base/BaseAdapterItemData;ZLcom/callapp/contacts/activity/interfaces/ContactItemViewEvents;)V

    return v0
.end method
