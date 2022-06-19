.class Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->handleFileFullDownloaded()V
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

    .line 241
    iput-object p1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 244
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->access$100(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->access$100(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;

    move-result-object v0

    iget-object v1, p0, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$2;->this$0:Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;->access$200(Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/pubnative/lite/sdk/vpaid/helpers/FileLoader$Callback;->onFileLoaded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
