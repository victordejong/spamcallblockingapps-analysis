.class public abstract Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;
.super Lcom/callapp/contacts/activity/base/BaseTopBarActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;,
        Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemAppAppearance;",
        "U:",
        "Lcom/callapp/contacts/activity/marketplace/viewholders/StoreItemLoadingViewHolder;",
        ">",
        "Lcom/callapp/contacts/activity/base/BaseTopBarActivity;"
    }
.end annotation


# instance fields
.field protected a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity<",
            "TT;TU;>.StoreItemAdapter;"
        }
    .end annotation
.end field

.field protected b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

.field private e:I

.field private f:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->e:I

    return p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->getItemsStore()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;Ljava/util/List;)V
    .locals 2

    .line 4127
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$3;-><init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;)Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->f:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->e:I

    return p0
.end method

.method private getItemsStore()V
    .locals 3

    .line 110
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->get()Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$2;-><init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;)V

    .line 3207
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected a(Landroidx/recyclerview/widget/RecyclerView;Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 187
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 188
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 189
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/list/VerticalSpaceItemDecoration;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->a(F)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/marketplace/list/VerticalSpaceItemDecoration;-><init>(I)V

    const/4 v1, -0x1

    .line 3665
    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;I)V

    .line 191
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const v1, 0x7f0600f3

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/ThemeUtils;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 192
    new-instance v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->d:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    invoke-direct {v0, p0, p3, p2, v1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;-><init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreListItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->a:Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$StoreItemAdapter;

    .line 193
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    return-void
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d01d5

    return v0
.end method

.method protected abstract getStoreItemType()I
.end method

.method protected abstract getStoreTitle()Ljava/lang/String;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 65
    invoke-super {p0, p1}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->a()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->finish()V

    .line 69
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v1, 0x7f12052f

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2111
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->isBillingAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->finish()V

    .line 75
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object p1

    const v1, 0x7f1200ef

    invoke-static {v1}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3111
    invoke-virtual {p1, v1, v0}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    .line 79
    :cond_1
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->getStoreTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    new-instance p1, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-direct {p1}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->f:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    const v0, 0x7f120537

    .line 82
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->f:Lcom/callapp/contacts/popup/contact/SimpleProgressDialog;

    invoke-virtual {p1, p0, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    .line 85
    new-instance p1, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    new-instance v0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity$1;-><init>(Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;)V

    invoke-direct {p1, v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;-><init>(Lcom/callapp/contacts/manager/inAppBilling/BillingManager$BillingUpdatesListener;)V

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/StoreItemsListActivity;->b:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->b()V

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/callapp/contacts/activity/base/BaseTopBarActivity;->onDestroy()V

    return-void
.end method
