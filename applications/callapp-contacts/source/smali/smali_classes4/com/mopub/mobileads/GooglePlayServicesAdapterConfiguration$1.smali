.class Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;Lcom/mopub/common/OnNetworkInitializationFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration$1;->this$0:Lcom/mopub/mobileads/GooglePlayServicesAdapterConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 0

    const/4 p1, 0x1

    .line 97
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->setAppMuted(Z)V

    return-void
.end method
