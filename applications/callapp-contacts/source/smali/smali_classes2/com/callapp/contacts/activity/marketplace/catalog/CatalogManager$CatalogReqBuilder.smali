.class public Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CatalogReqBuilder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field final synthetic c:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/manager/inAppBilling/BillingManager;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/i;",
            ">;)V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->c:Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 187
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->b:Z

    .line 192
    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->e:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    .line 193
    iput-object p3, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->d:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;-><init>(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;)Ljava/lang/String;
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;)V
    .locals 5

    .line 214
    invoke-static {}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->get()Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->e:Lcom/callapp/contacts/manager/inAppBilling/BillingManager;

    iget-object v2, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->d:Ljava/util/List;

    iget-boolean v3, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;->b:Z

    new-instance v4, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder$1;

    invoke-direct {v4, p0, p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder$1;-><init>(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogReqBuilder;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;->a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;Lcom/callapp/contacts/manager/inAppBilling/BillingManager;Ljava/util/List;ZLcom/callapp/contacts/manager/task/Task$DoneListener;)V

    return-void
.end method
