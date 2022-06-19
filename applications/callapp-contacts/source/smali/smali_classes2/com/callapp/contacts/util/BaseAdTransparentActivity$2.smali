.class Lcom/callapp/contacts/util/BaseAdTransparentActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/NativeAdParamGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/BaseAdTransparentActivity;->initAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/BaseAdTransparentActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/BaseAdTransparentActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$2;->a:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$2;->a:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$2;->a:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    new-instance v2, Lcom/callapp/contacts/util/-$$Lambda$fWrEpz8eOICyubfkpp1MawagR5A;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/util/-$$Lambda$fWrEpz8eOICyubfkpp1MawagR5A;-><init>(Lcom/callapp/contacts/util/BaseAdTransparentActivity;)V

    invoke-static {p1, v0, v2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$NativeAdLayoutGetter;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/callapp/contacts/util/BaseAdTransparentActivity$2;->a:Lcom/callapp/contacts/util/BaseAdTransparentActivity;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/BaseAdTransparentActivity;->getViewBinder(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;
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

    .line 101
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method
