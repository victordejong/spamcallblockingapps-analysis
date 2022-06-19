.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 3

    .line 721
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const v1, 0x7f0a029a

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 727
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v0, v1, p1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2376
    iput-boolean p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 727
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    .line 728
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->q(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Landroid/widget/ImageView;

    move-result-object p1

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 729
    sget-object p1, Lcom/callapp/contacts/event/EventBusManager;->a:Lcom/callapp/contacts/event/bus/EventBus;

    sget-object v0, Lcom/callapp/contacts/activity/interfaces/InvalidateDataListener;->b:Lcom/callapp/contacts/event/bus/EventType;

    sget-object v1, Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;->SUPER_SKIN_CHANGED:Lcom/callapp/contacts/event/EventBusManager$CallAppDataType;

    .line 3095
    new-instance v2, Lcom/callapp/contacts/event/bus/EventBus$2;

    invoke-direct {v2, p1, v0, v1}, Lcom/callapp/contacts/event/bus/EventBus$2;-><init>(Lcom/callapp/contacts/event/bus/EventBus;Lcom/callapp/contacts/event/bus/EventType;Ljava/lang/Object;)V

    .line 3100
    invoke-virtual {v2}, Lcom/callapp/contacts/event/bus/EventBus$2;->execute()Lcom/callapp/contacts/manager/task/Task;

    return-void
.end method

.method public static synthetic lambda$iSqlSXQQCnb9DowEIh8GEkDyIpY(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 717
    check-cast p1, Ljava/lang/String;

    .line 1720
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$8$iSqlSXQQCnb9DowEIh8GEkDyIpY;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$8$iSqlSXQQCnb9DowEIh8GEkDyIpY;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$8;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
