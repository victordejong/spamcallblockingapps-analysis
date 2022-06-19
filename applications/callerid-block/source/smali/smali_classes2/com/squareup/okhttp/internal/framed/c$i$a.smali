.class Lcom/squareup/okhttp/internal/framed/c$i$a;
.super Lcom/squareup/okhttp/u/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/okhttp/internal/framed/c$i;->h(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/squareup/okhttp/internal/framed/d;

.field final synthetic d:Lcom/squareup/okhttp/internal/framed/c$i;


# direct methods
.method varargs constructor <init>(Lcom/squareup/okhttp/internal/framed/c$i;Ljava/lang/String;[Ljava/lang/Object;Lcom/squareup/okhttp/internal/framed/d;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/internal/framed/c$i$a;->d:Lcom/squareup/okhttp/internal/framed/c$i;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/framed/c$i$a;->c:Lcom/squareup/okhttp/internal/framed/d;

    invoke-direct {p0, p2, p3}, Lcom/squareup/okhttp/u/d;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i$a;->d:Lcom/squareup/okhttp/internal/framed/c$i;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/framed/c;->W(Lcom/squareup/okhttp/internal/framed/c;)Lcom/squareup/okhttp/internal/framed/i;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/framed/c$i$a;->c:Lcom/squareup/okhttp/internal/framed/d;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/framed/i;->a(Lcom/squareup/okhttp/internal/framed/d;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/squareup/okhttp/u/b;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StreamHandler failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/framed/c$i$a;->d:Lcom/squareup/okhttp/internal/framed/c$i;

    iget-object v4, v4, Lcom/squareup/okhttp/internal/framed/c$i;->d:Lcom/squareup/okhttp/internal/framed/c;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/framed/c;->h0(Lcom/squareup/okhttp/internal/framed/c;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/framed/c$i$a;->c:Lcom/squareup/okhttp/internal/framed/d;

    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->c:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/framed/d;->l(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
