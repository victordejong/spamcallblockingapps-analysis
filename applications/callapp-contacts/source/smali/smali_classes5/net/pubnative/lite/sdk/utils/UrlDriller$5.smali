.class Lnet/pubnative/lite/sdk/utils/UrlDriller$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/utils/UrlDriller;->invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

.field final synthetic val$exception:Ljava/lang/Exception;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/utils/UrlDriller;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$5;->this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$5;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 257
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$5;->this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mListener:Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$5;->this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mListener:Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$5;->val$url:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v2, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$5;->val$exception:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;->onURLDrillerFail(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 260
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$5;->this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mListener:Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;

    return-void
.end method
