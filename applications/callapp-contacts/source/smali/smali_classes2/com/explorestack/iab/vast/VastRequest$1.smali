.class final Lcom/explorestack/iab/vast/VastRequest$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/iab/vast/VastRequest;->loadVideoWithUrl(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/explorestack/iab/vast/VastRequestListener;

.field final synthetic d:Lcom/explorestack/iab/vast/VastRequest;


# direct methods
.method constructor <init>(Lcom/explorestack/iab/vast/VastRequest;Ljava/lang/String;Landroid/content/Context;Lcom/explorestack/iab/vast/VastRequestListener;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/explorestack/iab/vast/VastRequest$1;->d:Lcom/explorestack/iab/vast/VastRequest;

    iput-object p2, p0, Lcom/explorestack/iab/vast/VastRequest$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/explorestack/iab/vast/VastRequest$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/explorestack/iab/vast/VastRequest$1;->c:Lcom/explorestack/iab/vast/VastRequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    .line 209
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest$1;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 210
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 223
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 228
    :catch_0
    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest$1;->d:Lcom/explorestack/iab/vast/VastRequest;

    iget-object v2, p0, Lcom/explorestack/iab/vast/VastRequest$1;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/explorestack/iab/vast/VastRequest$1;->c:Lcom/explorestack/iab/vast/VastRequestListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/explorestack/iab/vast/VastRequest;->loadVideoWithData(Landroid/content/Context;Ljava/lang/String;Lcom/explorestack/iab/vast/VastRequestListener;)V

    return-void

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 217
    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/explorestack/iab/vast/VastRequest$1;->d:Lcom/explorestack/iab/vast/VastRequest;

    iget-object v3, p0, Lcom/explorestack/iab/vast/VastRequest$1;->b:Landroid/content/Context;

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/explorestack/iab/vast/VastRequest$1;->c:Lcom/explorestack/iab/vast/VastRequestListener;

    invoke-static {v1, v3, v4, v5}, Lcom/explorestack/iab/vast/VastRequest;->access$000(Lcom/explorestack/iab/vast/VastRequest;Landroid/content/Context;ILcom/explorestack/iab/vast/VastErrorListener;)V

    const-string v1, "VastRequest"

    .line 218
    invoke-static {v1, v0}, Lcom/explorestack/iab/vast/VastLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 223
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    nop

    :catch_3
    :cond_1
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 226
    :catch_4
    :cond_2
    throw v0
.end method
