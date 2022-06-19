.class public abstract Lcom/callapp/contacts/activity/contact/cards/LargeAdCard;
.super Lcom/callapp/contacts/activity/contact/cards/AdCard;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;)V
    .locals 1

    const v0, 0x7f0d0082

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/cards/AdCard;-><init>(Lcom/callapp/contacts/activity/contact/details/PresentersContainer;I)V

    return-void
.end method


# virtual methods
.method protected getAdLayoutResourceId(I)I
    .locals 0

    const p1, 0x7f0d0081

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

    .line 42
    sget-object p1, Lcom/callapp/contacts/util/ads/AdUtils;->b:Ljava/util/EnumSet;

    return-object p1
.end method

.method protected getCardViewBinder(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;
    .locals 2

    .line 22
    new-instance v0, Lcom/mopub/nativeads/ViewBinder$Builder;

    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/AdSettings;->getAdLayoutResourceId()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;-><init>(I)V

    const v1, 0x7f0a061c

    .line 23
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->mainImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a061b

    .line 24
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->iconImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a0620

    .line 25
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->titleId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a061f

    .line 26
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->textId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a061d

    .line 27
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->privacyInformationIconImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    const v1, 0x7f0a0617

    .line 28
    invoke-virtual {v0, v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->callToActionId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/callapp/contacts/util/ads/AdSettings;->getAdLayoutResourceId()I

    move-result p1

    const v1, 0x7f0d0081

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0a0622

    .line 32
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ViewBinder$Builder;->titleId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    .line 37
    :goto_0
    invoke-virtual {v0}, Lcom/mopub/nativeads/ViewBinder$Builder;->build()Lcom/mopub/nativeads/ViewBinder;

    move-result-object p1

    return-object p1
.end method
