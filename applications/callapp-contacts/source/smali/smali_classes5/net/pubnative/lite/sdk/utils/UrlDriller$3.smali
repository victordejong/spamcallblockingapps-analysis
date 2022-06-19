.class Lnet/pubnative/lite/sdk/utils/UrlDriller$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/utils/UrlDriller;->invokeRedirect(Ljava/lang/String;)V
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

    .line 221
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$3;->this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

    iput-object p2, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 226
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$3;->this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mListener:Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$3;->this$0:Lnet/pubnative/lite/sdk/utils/UrlDriller;

    iget-object v0, v0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mListener:Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller$3;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;->onURLDrillerRedirect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
