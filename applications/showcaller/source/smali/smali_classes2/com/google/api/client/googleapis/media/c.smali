.class Lcom/google/api/client/googleapis/media/c;
.super Ljava/lang/Object;
.source "MediaUploadErrorHandler.java"

# interfaces
.implements Lcom/google/api/client/http/x;
.implements Lcom/google/api/client/http/o;


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

.field private final c:Lcom/google/api/client/http/o;

.field private final d:Lcom/google/api/client/http/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/client/googleapis/media/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/googleapis/media/c;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/googleapis/media/MediaHttpUploader;Lcom/google/api/client/http/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/api/client/util/w;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    iput-object p1, p0, Lcom/google/api/client/googleapis/media/c;->b:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    .line 3
    invoke-virtual {p2}, Lcom/google/api/client/http/q;->g()Lcom/google/api/client/http/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/googleapis/media/c;->c:Lcom/google/api/client/http/o;

    .line 4
    invoke-virtual {p2}, Lcom/google/api/client/http/q;->p()Lcom/google/api/client/http/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/api/client/googleapis/media/c;->d:Lcom/google/api/client/http/x;

    .line 5
    invoke-virtual {p2, p0}, Lcom/google/api/client/http/q;->w(Lcom/google/api/client/http/o;)Lcom/google/api/client/http/q;

    .line 6
    invoke-virtual {p2, p0}, Lcom/google/api/client/http/q;->D(Lcom/google/api/client/http/x;)Lcom/google/api/client/http/q;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/api/client/http/q;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/c;->c:Lcom/google/api/client/http/o;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/api/client/http/o;->a(Lcom/google/api/client/http/q;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/google/api/client/googleapis/media/c;->b:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    invoke-virtual {p2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 4
    sget-object v0, Lcom/google/api/client/googleapis/media/c;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "exception thrown while calling server callback"

    invoke-virtual {v0, v1, v2, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return p1
.end method

.method public b(Lcom/google/api/client/http/q;Lcom/google/api/client/http/t;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/c;->d:Lcom/google/api/client/http/x;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/api/client/http/x;->b(Lcom/google/api/client/http/q;Lcom/google/api/client/http/t;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p2}, Lcom/google/api/client/http/t;->h()I

    move-result p2

    div-int/lit8 p2, p2, 0x64

    const/4 p3, 0x5

    if-ne p2, p3, :cond_1

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/google/api/client/googleapis/media/c;->b:Lcom/google/api/client/googleapis/media/MediaHttpUploader;

    invoke-virtual {p2}, Lcom/google/api/client/googleapis/media/MediaHttpUploader;->j()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 5
    sget-object p3, Lcom/google/api/client/googleapis/media/c;->a:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "exception thrown while calling server callback"

    invoke-virtual {p3, v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return p1
.end method
