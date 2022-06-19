.class public Lnet/pubnative/lite/sdk/utils/UrlDriller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UrlDriller"


# instance fields
.field private mDrillSize:I

.field protected mHandler:Landroid/os/Handler;

.field protected mListener:Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;

.field private mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mUserAgent:Ljava/lang/String;

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mDrillSize:I

    return-void
.end method


# virtual methods
.method protected doDrill(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, p1, v0}, Lnet/pubnative/lite/sdk/utils/UrlDriller;->doDrill(Ljava/lang/String;I)V

    return-void
.end method

.method protected doDrill(Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x0

    .line 139
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :try_start_1
    iget-object v3, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mUserAgent:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "User-Agent"

    .line 142
    invoke-virtual {v2, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v3, 0x0

    .line 144
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 145
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    const/16 v3, 0x1388

    .line 146
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 147
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    .line 176
    new-instance p2, Ljava/lang/Exception;

    const-string v1, "Drilling error: Invalid URL, Status: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 177
    sget-object v1, Lnet/pubnative/lite/sdk/utils/UrlDriller;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/utils/UrlDriller;->invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_0
    const-string v3, "Location"

    .line 158
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    .line 160
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 161
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 162
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    :cond_1
    invoke-virtual {p0, v3}, Lnet/pubnative/lite/sdk/utils/UrlDriller;->invokeRedirect(Ljava/lang/String;)V

    .line 166
    iget v1, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mDrillSize:I

    if-nez v1, :cond_2

    .line 167
    invoke-virtual {p0, v3}, Lnet/pubnative/lite/sdk/utils/UrlDriller;->doDrill(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    if-ge p2, v1, :cond_3

    add-int/lit8 p2, p2, 0x1

    .line 169
    invoke-virtual {p0, v3, p2}, Lnet/pubnative/lite/sdk/utils/UrlDriller;->doDrill(Ljava/lang/String;I)V

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/utils/UrlDriller;->invokeFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_4
    invoke-virtual {p0, p1}, Lnet/pubnative/lite/sdk/utils/UrlDriller;->invokeFinish(Ljava/lang/String;)V

    .line 183
    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 184
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_5

    .line 193
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v0, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p2

    move-object v2, v0

    .line 189
    :goto_1
    :try_start_2
    sget-object v1, Lnet/pubnative/lite/sdk/utils/UrlDriller;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Drilling error: with URL = ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    invoke-virtual {p0, v0}, Lnet/pubnative/lite/sdk/utils/UrlDriller;->invokeFinish(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_5

    .line 193
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_1
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :catch_3
    move-exception p2

    .line 186
    :goto_2
    :try_start_3
    sget-object v1, Lnet/pubnative/lite/sdk/utils/UrlDriller;->TAG:Ljava/lang/String;

    const-string v2, "Drilling error: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0, p1, p2}, Lnet/pubnative/lite/sdk/utils/UrlDriller;->invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_5

    .line 193
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-void

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public drill(Ljava/lang/String;)V
    .locals 2

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "URLDrill error: url is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lnet/pubnative/lite/sdk/utils/UrlDriller;->invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 98
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/pubnative/lite/sdk/utils/UrlDriller$1;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/lite/sdk/utils/UrlDriller$1;-><init>(Lnet/pubnative/lite/sdk/utils/UrlDriller;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected invokeFail(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invokeFail: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/utils/UrlDriller$5;

    invoke-direct {v1, p0, p1, p2}, Lnet/pubnative/lite/sdk/utils/UrlDriller$5;-><init>(Lnet/pubnative/lite/sdk/utils/UrlDriller;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected invokeFinish(Ljava/lang/String;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/utils/UrlDriller$4;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/lite/sdk/utils/UrlDriller$4;-><init>(Lnet/pubnative/lite/sdk/utils/UrlDriller;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected invokeRedirect(Ljava/lang/String;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/utils/UrlDriller$3;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/lite/sdk/utils/UrlDriller$3;-><init>(Lnet/pubnative/lite/sdk/utils/UrlDriller;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected invokeStart(Ljava/lang/String;)V
    .locals 2

    .line 206
    iget-object v0, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mHandler:Landroid/os/Handler;

    new-instance v1, Lnet/pubnative/lite/sdk/utils/UrlDriller$2;

    invoke-direct {v1, p0, p1}, Lnet/pubnative/lite/sdk/utils/UrlDriller$2;-><init>(Lnet/pubnative/lite/sdk/utils/UrlDriller;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDrillSize(I)V
    .locals 0

    .line 85
    iput p1, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mDrillSize:I

    return-void
.end method

.method public setListener(Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mListener:Lnet/pubnative/lite/sdk/utils/UrlDriller$Listener;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lnet/pubnative/lite/sdk/utils/UrlDriller;->mUserAgent:Ljava/lang/String;

    return-void
.end method
