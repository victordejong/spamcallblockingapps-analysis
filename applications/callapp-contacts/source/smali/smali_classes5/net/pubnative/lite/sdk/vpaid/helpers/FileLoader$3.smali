.class Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->stop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$3;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 258
    invoke-static {}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disconnect()"

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$3;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->access$400(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)Ljava/net/HttpURLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method
