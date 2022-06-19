.class Lcom/mopub/common/BaseAdapterConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/OnNetworkInitializationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/BaseAdapterConfiguration;->initializeNetwork(Landroid/content/Context;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/common/BaseAdapterConfiguration;


# direct methods
.method constructor <init>(Lcom/mopub/common/BaseAdapterConfiguration;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mopub/common/BaseAdapterConfiguration$1;->this$0:Lcom/mopub/common/BaseAdapterConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkInitializationFinished(Ljava/lang/Class;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/mopub/common/AdapterConfiguration;",
            ">;",
            "Lcom/mopub/mobileads/MoPubErrorCode;",
            ")V"
        }
    .end annotation

    return-void
.end method
