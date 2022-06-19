.class Lcom/callapp/contacts/activity/contact/cards/AdCard$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/NativeAdParamGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/cards/AdCard;->tryLoadingAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/cards/AdCard;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/cards/AdCard;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->access$600(Lcom/callapp/contacts/activity/contact/cards/AdCard;Ljava/lang/String;Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    iput-object p1, v0, Lcom/callapp/contacts/activity/contact/cards/AdCard;->adSettings:Lcom/callapp/contacts/util/ads/AdSettings;

    .line 235
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/cards/AdCard;->adSettings:Lcom/callapp/contacts/util/ads/AdSettings;

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->getCardViewBinder(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/callapp/contacts/util/ads/AdSettings;",
            ")",
            "Ljava/util/EnumSet<",
            "Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/cards/AdCard$4;->a:Lcom/callapp/contacts/activity/contact/cards/AdCard;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/cards/AdCard;->getCardDesiredAssets(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method
