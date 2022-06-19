.class Lnet/pubnative/lite/sdk/api/RequestManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/pubnative/lite/sdk/models/AdRequestFactory$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/api/RequestManager;->requestAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/api/RequestManager;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/api/RequestManager;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lnet/pubnative/lite/sdk/api/RequestManager$1;->this$0:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestCreated(Lnet/pubnative/lite/sdk/models/AdRequest;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lnet/pubnative/lite/sdk/api/RequestManager$1;->this$0:Lnet/pubnative/lite/sdk/api/RequestManager;

    invoke-virtual {v0, p1}, Lnet/pubnative/lite/sdk/api/RequestManager;->requestAdFromApi(Lnet/pubnative/lite/sdk/models/AdRequest;)V

    return-void
.end method
