.class Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;Ljava/lang/String;Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$6;->c:Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$6;->b:Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$6;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$6;->b:Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->getPlaceImageUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$6;->c:Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$6;->b:Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/contact/list/search/PlaceItemData;->getDataSource()Lcom/callapp/contacts/model/contact/DataSource;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder$6;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/contact/list/search/PlacesViewHolder;->a(Lcom/callapp/contacts/model/contact/DataSource;Ljava/lang/String;)V

    return-void

    .line 260
    :cond_0
    const-class v0, Lcom/callapp/contacts/model/contact/PlaceData;

    const-string v1, "Fast scrolling, showing none"

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
