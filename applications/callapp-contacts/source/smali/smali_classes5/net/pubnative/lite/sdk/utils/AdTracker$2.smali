.class Lnet/pubnative/lite/sdk/utils/AdTracker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/api/PNApiClient$TrackJSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/utils/AdTracker;-><init>(Lnet/pubnative/lite/sdk/api/PNApiClient;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/utils/AdTracker;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/utils/AdTracker;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/AdTracker$2;->this$0:Lnet/pubnative/lite/sdk/utils/AdTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 0

    return-void
.end method
