.class final Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->b(Lcom/android/billingclient/api/g;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1$3$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;

.field final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1$$special$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1$$special$$inlined$apply$lambda$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 155
    iget-object p1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1$$special$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->b(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;)Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1$$special$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1$$special$$inlined$apply$lambda$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity$onItemStoreAvailable$1;->a:Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;

    invoke-static {v1}, Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;->a(Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleActivity;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    move-result-object v1

    const-string v2, "storeItem"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;->getSku()Ljava/lang/String;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {p1, v0, v1, v2}, Lcom/callapp/contacts/manager/inAppBilling/BillingManager;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
