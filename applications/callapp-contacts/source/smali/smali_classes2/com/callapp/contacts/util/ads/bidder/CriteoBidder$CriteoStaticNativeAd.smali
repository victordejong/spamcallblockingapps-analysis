.class public Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;
.super Lcom/mopub/nativeads/StaticNativeAd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/ads/bidder/CriteoBidder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CriteoStaticNativeAd"
.end annotation


# instance fields
.field final criteoNativeAd:Lcom/criteo/publisher/advancednative/CriteoNativeAd;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/mopub/nativeads/StaticNativeAd;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;->criteoNativeAd:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    return-void
.end method


# virtual methods
.method public getCriteoNativeAd()Lcom/criteo/publisher/advancednative/CriteoNativeAd;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/callapp/contacts/util/ads/bidder/CriteoBidder$CriteoStaticNativeAd;->criteoNativeAd:Lcom/criteo/publisher/advancednative/CriteoNativeAd;

    return-object v0
.end method
