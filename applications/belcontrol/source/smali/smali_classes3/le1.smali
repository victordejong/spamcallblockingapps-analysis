.class public Lle1;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Landroid/widget/Adapter;)V
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubAdAdapter;->destroy()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->destroy()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c(Landroid/widget/ListAdapter;I)I
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubAdAdapter;->getAdjustedPosition(I)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public static d(Landroid/widget/ListAdapter;I)I
    .locals 2

    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/mopub/nativeads/MoPubAdAdapter;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    check-cast p0, Lcom/mopub/nativeads/MoPubAdAdapter;

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ge p1, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/MoPubAdAdapter;->isAd(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method public static e(Landroid/widget/ListView;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/mopub/nativeads/MoPubAdAdapter;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-virtual {v0, p0, p1}, Lcom/mopub/nativeads/MoPubAdAdapter;->refreshAds(Landroid/widget/ListView;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static f(Landroidx/recyclerview/widget/RecyclerView$g;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TITLE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v1, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v2, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->CALL_TO_ACTION_TEXT:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    sget-object v3, Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;->MAIN_IMAGE:Lcom/mopub/nativeads/RequestParameters$NativeAdAsset;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v1, Lcom/mopub/nativeads/RequestParameters$Builder;

    invoke-direct {v1}, Lcom/mopub/nativeads/RequestParameters$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mopub/nativeads/RequestParameters$Builder;->desiredAssets(Ljava/util/EnumSet;)Lcom/mopub/nativeads/RequestParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/nativeads/RequestParameters$Builder;->build()Lcom/mopub/nativeads/RequestParameters;

    move-result-object v0

    check-cast p0, Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-virtual {p0, p1, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->loadAds(Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static g(Landroid/app/Activity;Landroid/widget/Adapter;)Landroid/widget/Adapter;
    .locals 3

    invoke-static {}, Lfa1;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lfa1;->r()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;

    new-instance v1, Lcom/mopub/nativeads/ViewBinder$Builder;

    const v2, 0x7f0d00d0

    invoke-direct {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;-><init>(I)V

    const v2, 0x7f0a0474

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->titleId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v1

    const v2, 0x7f0a0473

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->textId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v1

    const v2, 0x7f0a03c4

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->mainImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v1

    const v2, 0x7f0a0463

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->iconImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v1

    const v2, 0x7f0a0462

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->callToActionId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v1

    const v2, 0x7f0a0464

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->privacyInformationIconImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->build()Lcom/mopub/nativeads/ViewBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;)V

    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v1

    new-instance v2, Lcom/mopub/nativeads/MoPubAdAdapter;

    invoke-direct {v2, p0, p1, v1}, Lcom/mopub/nativeads/MoPubAdAdapter;-><init>(Landroid/app/Activity;Landroid/widget/Adapter;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    invoke-virtual {v2, v0}, Lcom/mopub/nativeads/MoPubAdAdapter;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    return-object v2

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static h(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$g;)Landroidx/recyclerview/widget/RecyclerView$g;
    .locals 3

    invoke-static {}, Lfa1;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lfa1;->r()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;

    new-instance v1, Lcom/mopub/nativeads/ViewBinder$Builder;

    const v2, 0x7f0d00d0

    invoke-direct {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;-><init>(I)V

    const v2, 0x7f0a0474

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->titleId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v1

    const v2, 0x7f0a0473

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->textId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v1

    const v2, 0x7f0a03c4

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->mainImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v1

    const v2, 0x7f0a0463

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->iconImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v1

    const v2, 0x7f0a0462

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->callToActionId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v1

    const v2, 0x7f0a0464

    invoke-virtual {v1, v2}, Lcom/mopub/nativeads/ViewBinder$Builder;->privacyInformationIconImageId(I)Lcom/mopub/nativeads/ViewBinder$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/nativeads/ViewBinder$Builder;->build()Lcom/mopub/nativeads/ViewBinder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;)V

    invoke-static {}, Lcom/mopub/nativeads/MoPubNativeAdPositioning;->serverPositioning()Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;

    move-result-object v1

    new-instance v2, Lcom/mopub/nativeads/MoPubRecyclerAdapter;

    invoke-direct {v2, p0, p1, v1}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;-><init>(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$g;Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning;)V

    invoke-virtual {v2, v0}, Lcom/mopub/nativeads/MoPubRecyclerAdapter;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    return-object v2

    :cond_1
    :goto_0
    return-object p1
.end method
