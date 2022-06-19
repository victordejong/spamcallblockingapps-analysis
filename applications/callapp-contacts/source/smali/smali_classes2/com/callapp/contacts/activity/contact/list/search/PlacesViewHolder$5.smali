.class Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$5;->c:Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$5;->a:Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$5;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$5;->a:Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$5;->b:Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;

    invoke-static {p1, v0, v1}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->a(Landroid/view/View;Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;Lcom/callapp/contacts/activity/contact/list/search/ContactsClickEvents;)V

    return-void
.end method
