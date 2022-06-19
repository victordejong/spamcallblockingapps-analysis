.class Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;Ljava/util/List;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onDone(Ljava/lang/Object;)V
    .locals 26

    move-object/from16 v0, p0

    .line 173
    move-object/from16 v8, p1

    check-cast v8, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    .line 1176
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getCovers()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_c

    .line 1177
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getThemes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 1185
    :cond_0
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getBanners()Ljava/util/List;

    move-result-object v1

    .line 1186
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    new-instance v3, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1;

    invoke-direct {v3, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$1;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    invoke-static {v2, v1, v3}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Ljava/util/List;Lcom/callapp/contacts/manager/task/Task$DoneListener;)V

    .line 1200
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableCovers()Ljava/util/List;

    move-result-object v1

    .line 1201
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1202
    sget-object v2, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->COVER:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-static {v2, v1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;Ljava/util/List;)V

    .line 1204
    new-instance v2, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$2;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$2;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    .line 1213
    iget-object v3, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v3, v3, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    new-instance v4, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCoverAdapter;

    new-instance v5, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$3;

    invoke-direct {v5, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$3;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    iget-object v6, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v6, v6, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    .line 1225
    invoke-virtual {v6}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v6

    invoke-direct {v4, v1, v5, v8, v6}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCoverAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    .line 1213
    invoke-static {v3, v4}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    .line 1227
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    const v3, 0x7f0a02c4

    const v4, 0x7f12041c

    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v5, v5, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v5}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->c(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    move-result-object v5

    invoke-static {v1, v3, v4, v2, v5}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;IILandroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)V

    .line 1234
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v1, v10, :cond_2

    .line 1235
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableKeypads()Ljava/util/List;

    move-result-object v1

    .line 1236
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1237
    sget-object v2, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->KEYPAD:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-static {v2, v1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;Ljava/util/List;)V

    .line 1239
    new-instance v2, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$4;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$4;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    .line 1248
    iget-object v3, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v3, v3, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    new-instance v4, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceKeypadAdapter;

    new-instance v5, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$5;

    invoke-direct {v5, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$5;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    iget-object v6, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v6, v6, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    .line 1254
    invoke-virtual {v6}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v6

    invoke-direct {v4, v1, v5, v8, v6}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceKeypadAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    .line 1248
    invoke-static {v3, v4}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->b(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    .line 1256
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    const v3, 0x7f0a0553

    const v4, 0x7f12041e

    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v5, v5, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v5}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->d(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    move-result-object v5

    invoke-static {v1, v3, v4, v2, v5}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;IILandroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)V

    .line 1263
    :cond_2
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAllSuperSkins()Ljava/util/List;

    move-result-object v1

    .line 1264
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1265
    sget-object v2, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->SUPER_SKIN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-static {v2, v1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;Ljava/util/List;)V

    .line 1267
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceSuperSkinAdapter;

    invoke-virtual {v8}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAllSuperSkins()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$6;

    invoke-direct {v4, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$6;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v5, v5, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    .line 1277
    invoke-virtual {v5}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v5

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceSuperSkinAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    .line 1267
    invoke-static {v1, v2}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->c(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    .line 1279
    new-instance v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$7;

    invoke-direct {v1, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$7;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    .line 1287
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    const v3, 0x7f0a08c3

    const v4, 0x7f120421

    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v5, v5, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v5}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->e(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    move-result-object v5

    invoke-static {v2, v3, v4, v1, v5}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;IILandroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)V

    .line 1292
    :cond_3
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableThemes()Ljava/util/List;

    move-result-object v1

    .line 1293
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1294
    sget-object v2, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->THEME:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-static {v2, v1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;Ljava/util/List;)V

    .line 1296
    new-instance v2, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$8;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$8;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    .line 1305
    iget-object v3, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v3, v3, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    new-instance v4, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceThemeAdapter;

    new-instance v5, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$9;

    invoke-direct {v5, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$9;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    iget-object v6, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v6, v6, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    .line 1312
    invoke-virtual {v6}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v6

    invoke-direct {v4, v1, v5, v8, v6}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceThemeAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    .line 1305
    invoke-static {v3, v4}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->d(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    .line 1315
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    const v3, 0x7f0a090f

    const v4, 0x7f120422

    iget-object v5, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v5, v5, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v5}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->f(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    move-result-object v5

    invoke-static {v1, v3, v4, v2, v5}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;IILandroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)V

    .line 1320
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const v11, 0x7f0a04f7

    const/16 v12, 0x8

    if-lt v1, v10, :cond_5

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isNotificationListenerServiceSupportedOnDevice()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1321
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvailableCallScreenThemes()Ljava/util/List;

    move-result-object v3

    .line 1322
    invoke-static {v3}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1323
    sget-object v1, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->CALL_SCREEN:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-static {v1, v3}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;Ljava/util/List;)V

    .line 1325
    new-instance v13, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$10;

    invoke-direct {v13, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$10;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    .line 1334
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v14, v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    new-instance v15, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter;

    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v2

    new-instance v4, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$11;

    invoke-direct {v4, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$11;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    const v6, 0x7f0d0173

    const/4 v7, 0x0

    move-object v1, v15

    move-object v5, v8

    invoke-direct/range {v1 .. v7}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceCallScreenThemeAdapter;-><init>(Landroidx/lifecycle/j;Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;IZ)V

    invoke-static {v14, v15}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->e(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    .line 1348
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    const v2, 0x7f12041d

    iget-object v3, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v3, v3, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->h(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    move-result-object v3

    invoke-static {v1, v11, v2, v13, v3}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;IILandroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)V

    goto :goto_0

    .line 1351
    :cond_5
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {v1, v11}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    :cond_6
    :goto_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getDaysSinceInstall()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const v5, 0x7f0a04f6

    cmp-long v6, v1, v3

    if-lez v6, :cond_b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v10, :cond_b

    .line 1357
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isNotificationListenerServiceSupportedOnDevice()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1359
    invoke-virtual {v8}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableBundles()Ljava/util/List;

    move-result-object v1

    .line 1361
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    sget-object v3, Lcom/callapp/contacts/manager/preferences/Prefs;->cJ:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v3}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1363
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;

    .line 1364
    invoke-virtual {v4}, Lcom/callapp/contacts/activity/marketplace/catalog/JSONStoreItemBundle;->getPageLayout()I

    move-result v6

    if-ltz v6, :cond_8

    .line 1366
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1368
    :cond_8
    iget-object v6, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->a:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    const-string v13, "onetime_10_05_2020"

    const-string v14, "onetime_12_05_2020"

    const-string v15, "onetime_10"

    const-string v16, "onetime_12"

    const-string v17, "onetime_gold_dynamic_all_included"

    const-string v18, "onetime_silver_dynamic_all_included"

    const-string v19, "onetime_bronze_dynamic_all_included"

    const-string v20, "monthly_gold_5.00_all_included"

    const-string v21, "monthly_silver_4.00_all_included"

    const-string v22, "monthly_bronze_3.00_all_included"

    const-string v23, "yearly_gold_18.00_all_included"

    const-string v24, "yearly_silver_14.00_all_included"

    const-string v25, "yearly_bronze_10.00_all_included"

    filled-new-array/range {v13 .. v25}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v6, v7}, Lcom/callapp/contacts/activity/marketplace/catalog/StoreUtils;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1371
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1377
    :cond_9
    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1378
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1379
    sget-object v2, Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;->BUNDLE:Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;

    invoke-static {v2, v1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/model/objectbox/Promotion$ProductType;Ljava/util/List;)V

    .line 1380
    iget-object v2, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    new-instance v3, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceBundleAdapter;

    new-instance v4, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$12;

    invoke-direct {v4, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$12;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    iget-object v6, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v6, v6, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    .line 1397
    invoke-virtual {v6}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v6

    invoke-direct {v3, v1, v4, v8, v6}, Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceBundleAdapter;-><init>(Ljava/util/List;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter$MarketItemClickEvent;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;Landroidx/lifecycle/j;)V

    .line 1380
    invoke-static {v2, v3}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->f(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    .line 1399
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    const v2, 0x7f12041b

    iget-object v3, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v3, v3, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-static {v3}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->i(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;)Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;

    move-result-object v3

    invoke-static {v1, v5, v2, v9, v3}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->a(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;IILandroid/view/View$OnClickListener;Lcom/callapp/contacts/activity/marketplace/list/MarketPlaceAdapter;)V

    goto :goto_2

    .line 1402
    :cond_a
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1406
    :cond_b
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {v1, v5}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1410
    :goto_2
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;

    invoke-direct {v2, v0}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1$13;-><init>(Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/CallAppApplication;->d(Ljava/lang/Runnable;)V

    return-void

    .line 1178
    :cond_c
    :goto_3
    iget-object v1, v0, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;

    iget-object v1, v1, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity$1;->b:Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/activity/marketplace/MarketPlaceActivity;->finish()V

    .line 1179
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f12068b

    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f12068a

    .line 1180
    invoke-static {v3}, Lcom/callapp/contacts/util/Activities;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2111
    invoke-virtual {v1, v2, v9}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
