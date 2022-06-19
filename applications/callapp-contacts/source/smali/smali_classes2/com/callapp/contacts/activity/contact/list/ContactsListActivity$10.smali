.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$10;
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

    .line 742
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$10;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 3

    .line 746
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$10;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$10;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->u(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    .line 749
    :cond_0
    new-instance v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$10;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->t(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$10;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {v0, v1, p1, v2}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;-><init>(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2376
    iput-boolean p1, v0, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->q:Z

    .line 749
    invoke-virtual {v0}, Lcom/callapp/contacts/util/glide/GlideUtils$GlideRequestBuilder;->d()V

    return-void
.end method

.method public static synthetic lambda$_rotaqJjLdhCco17fyk_h7_xUMM(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$10;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$10;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic onAssetReady(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 742
    check-cast p1, Ljava/lang/String;

    .line 1745
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p2

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$10$_rotaqJjLdhCco17fyk_h7_xUMM;

    invoke-direct {v0, p0, p1}, Lcom/callapp/contacts/activity/contact/list/-$$Lambda$ContactsListActivity$10$_rotaqJjLdhCco17fyk_h7_xUMM;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$10;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void
.end method
