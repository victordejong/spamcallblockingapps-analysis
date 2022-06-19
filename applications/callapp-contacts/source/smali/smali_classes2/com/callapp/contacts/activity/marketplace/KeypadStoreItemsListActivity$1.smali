.class Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;[Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;",
            ">(TT;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItem;->getSku()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/marketplace/KeypadDownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity$1;->a:Lcom/callapp/contacts/activity/marketplace/KeypadStoreItemsListActivity;

    invoke-static {v0, p1, p2}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Landroid/app/Activity;Landroid/content/Intent;[Landroid/view/View;)V

    return-void
.end method
