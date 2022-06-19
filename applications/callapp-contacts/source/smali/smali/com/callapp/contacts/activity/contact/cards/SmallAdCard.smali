.class public abstract Lcom/callapp/contacts/activity/contact/cards/SmallAdCard;
.super Lcom/callapp/contacts/activity/contact/cards/AdCard;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0083

    .line 14
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    return-void
.end method


# virtual methods
.method protected getAdLayoutResourceId(I)I
    .locals 0

    .line 34
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->getSmallCardAdLayoutResourceId(I)I

    move-result p1

    return p1
.end method

.method protected getCardDesiredAssets(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;
    .locals 0
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

    .line 29
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method

.method protected getCardViewBinder(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->b(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object p1

    return-object p1
.end method

.method public shouldHideCardOnThemeChange()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
