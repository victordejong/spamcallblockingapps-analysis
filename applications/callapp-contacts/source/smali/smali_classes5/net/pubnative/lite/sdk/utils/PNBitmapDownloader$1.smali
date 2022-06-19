.class Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field connection:Ljava/net/HttpURLConnection;

.field final synthetic this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;


# direct methods
.method constructor <init>(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 55
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    invoke-static {v1}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->access$000(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->connection:Ljava/net/HttpURLConnection;

    .line 59
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 60
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->access$100(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 65
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    iget-object v2, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->access$100(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;Z)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 67
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 69
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    invoke-static {v0}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->access$000(Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lnet/pubnative/lite/sdk/utils/PNBitmapLruCache;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 70
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    invoke-virtual {v0, v1}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->invokeLoad(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    :try_start_1
    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    invoke-virtual {v1, v0}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_1
    move-exception v0

    .line 72
    :try_start_2
    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->this$0:Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;

    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader;->invokeFail(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void

    .line 76
    :goto_0
    iget-object v1, p0, Lnet/pubnative/lite/sdk/utils/PNBitmapDownloader$1;->connection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v0
.end method
