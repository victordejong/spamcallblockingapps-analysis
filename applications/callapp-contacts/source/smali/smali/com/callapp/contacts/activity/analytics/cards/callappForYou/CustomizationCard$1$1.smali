.class Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$OnCatalogAttributesLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;Ljava/util/List;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;

    iput-object p2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onDone(Ljava/lang/Object;)V
    .locals 7

    .line 81
    check-cast p1, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;

    .line 1085
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;

    iget-object v0, v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$100(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;)Ljava/util/Map;

    move-result-object v0

    .line 1086
    sget-object v1, Lcom/callapp/contacts/manager/preferences/Prefs;->cW:Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/preferences/prefs/ArrayPref;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1087
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/i;

    .line 1088
    invoke-virtual {v3}, Lcom/android/billingclient/api/i;->b()Ljava/lang/String;

    move-result-object v3

    .line 1089
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1090
    iget-object v4, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;

    iget-object v4, v4, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v4, v3}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$200(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Ljava/lang/String;)V

    goto :goto_0

    .line 1093
    :cond_0
    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b([Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1094
    array-length v2, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 1095
    iget-object v6, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;

    iget-object v6, v6, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$200(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1099
    :cond_1
    new-instance v0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;-><init>()V

    .line 1100
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableCovers()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableCovers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 1101
    :goto_2
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$300(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setCover(I)V

    .line 1102
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setMaxCover(I)V

    .line 1103
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setMaxForProgress(I)V

    .line 1105
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvailableCallScreenThemes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvailableCallScreenThemes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 1106
    :goto_3
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setMaxCallScreen(I)V

    .line 1107
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$400(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setCallScreen(I)V

    .line 1108
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getMaxForProgress()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 1109
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setMaxForProgress(I)V

    .line 1112
    :cond_4
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableKeypads()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableKeypads()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    .line 1113
    :goto_4
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setMaxKeypad(I)V

    .line 1114
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$500(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setKeypad(I)V

    .line 1115
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getMaxForProgress()I

    move-result v2

    if-le v1, v2, :cond_6

    .line 1116
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setMaxForProgress(I)V

    .line 1119
    :cond_6
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableThemes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableThemes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    .line 1120
    :goto_5
    iget-object v2, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;

    iget-object v2, v2, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {v2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$600(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setTheme(I)V

    .line 1121
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setMaxTheme(I)V

    .line 1122
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getMaxForProgress()I

    move-result v2

    if-le v1, v2, :cond_8

    .line 1123
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setMaxForProgress(I)V

    .line 1126
    :cond_8
    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableKeypads()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/marketplace/catalog/CatalogManager$CatalogAttributes;->getAvilableKeypads()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1127
    :cond_9
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->access$700(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setSuperSkin(I)V

    .line 1128
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setMaxSuperSkin(I)V

    .line 1129
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->getMaxForProgress()I

    move-result p1

    if-le v3, p1, :cond_a

    .line 1130
    invoke-virtual {v0, v3}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;->setMaxForProgress(I)V

    .line 1132
    :cond_a
    iget-object p1, p0, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1$1;->b:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;

    iget-object p1, p1, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard$1;->a:Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CustomizationCard;->updateCardData(Lcom/callapp/contacts/activity/analytics/cards/callappForYou/CallAppForYouCardItemCustomization;Z)V

    return-void
.end method
