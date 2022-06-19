.class Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/util/ads/NativeAdParamGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$7;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/callapp/contacts/util/ads/AdSettings;
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$7;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getExperimentRemoteConfigName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$7;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    new-instance v2, Lcom/callapp/contacts/activity/contact/details/overlay/-$$Lambda$6FC7JIfl7cuKCnmDJc7Jl_t_LAc;

    invoke-direct {v2, v1}, Lcom/callapp/contacts/activity/contact/details/overlay/-$$Lambda$6FC7JIfl7cuKCnmDJc7Jl_t_LAc;-><init>(Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;)V

    invoke-static {p1, v0, v2}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Ljava/lang/String;Ljava/lang/String;Lcom/callapp/contacts/util/ads/AdUtils$NativeAdLayoutGetter;)Lcom/callapp/contacts/util/ads/AdSettings;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView$7;->a:Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/activity/contact/details/overlay/ContactDetailsOverlayView;->getViewBinder(Lcom/callapp/contacts/util/ads/AdSettings;)Lcom/mopub/nativeads/ViewBinder;

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

    .line 378
    invoke-static {p1}, Lcom/callapp/contacts/util/ads/AdUtils;->a(Lcom/callapp/contacts/util/ads/AdSettings;)Ljava/util/EnumSet;

    move-result-object p1

    return-object p1
.end method
