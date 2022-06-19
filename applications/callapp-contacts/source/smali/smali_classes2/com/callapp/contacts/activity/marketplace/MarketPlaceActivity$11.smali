.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$11;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$11;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$11;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    .line 681
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$11;->a:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;->getAction()Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/calllog/stickyBanner/JsonStickyAction;->getCta()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 682
    const-class v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    const-string v1, "RETURN_TO_PREVIOUS_CLASS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 683
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/CallAppApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
