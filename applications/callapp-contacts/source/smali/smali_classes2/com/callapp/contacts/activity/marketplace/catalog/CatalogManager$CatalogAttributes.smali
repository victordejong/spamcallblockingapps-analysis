.class public Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CatalogAttributes"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremiumAppItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

.field private j:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

.field private k:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

.field private l:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

.field private m:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

.field private n:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

.field private o:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->j:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->n:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->k:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->m:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->o:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemPremium;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->i:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    return-object p0
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->i:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->l:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->l:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->k:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->j:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->m:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->h:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getAllSuperSkins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->c:Ljava/util/List;

    return-object v0
.end method

.method public getAvailableCallScreenThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableSuperSkins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvilableBundles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->e:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvilableCovers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvilableKeypads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvilableThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->g:Ljava/util/List;

    invoke-static {v0}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBanners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBanner;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->b:Ljava/util/List;

    return-object v0
.end method

.method public getBundle()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->n:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    return-object v0
.end method

.method public getCallScreenTheme()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->j:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreCallScreenThemeItem;

    return-object v0
.end method

.method public getCover()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->k:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;

    return-object v0
.end method

.method public getCovers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemCover;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->d:Ljava/util/List;

    return-object v0
.end method

.method public getKeypad()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->m:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemKeypad;

    return-object v0
.end method

.method public getSuperSkin()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->i:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemSuperSkin;

    return-object v0
.end method

.method public getTheme()Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->l:Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;

    return-object v0
.end method

.method public getThemes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemTheme;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->g:Ljava/util/List;

    return-object v0
.end method
