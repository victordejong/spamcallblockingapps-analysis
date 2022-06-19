.class Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;Ljava/util/List;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->b(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->b(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->dismiss()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    const v1, 0x7f0a0740

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->getStoreItemType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->a(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;I)I

    .line 137
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;

    invoke-direct {v1, p0, v0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3$1;-><init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 181
    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->b:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;

    iget-object v3, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;->a:Ljava/util/List;

    invoke-virtual {v2, v0, v1, v3}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;Ljava/util/List;)V

    return-void
.end method
