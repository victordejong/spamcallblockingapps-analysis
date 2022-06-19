.class Lnet/pubnative/lite/sdk/utils/UrlDriller$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/utils/UrlDriller;->invokeFinish(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/utils/UrlDriller;Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$4;->this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$4;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 241
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$4;->this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mListener:Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$4;->this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mListener:Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$4;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;->onURLDrillerFinish(Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$4;->this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mListener:Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;

    return-void
.end method
