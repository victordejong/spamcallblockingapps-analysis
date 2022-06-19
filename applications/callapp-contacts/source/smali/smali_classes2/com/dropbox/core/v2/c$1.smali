.class final Lcom/dropbox/core/v2/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dropbox/core/v2/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dropbox/core/v2/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/dropbox/core/v2/c$a<",
        "TResT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:[B

.field final synthetic g:Lcom/dropbox/core/a/c;

.field final synthetic h:Lcom/dropbox/core/a/c;

.field final synthetic i:Lcom/dropbox/core/v2/c;


# direct methods
.method constructor <init>(Lcom/dropbox/core/v2/c;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;[BLcom/dropbox/core/a/c;Lcom/dropbox/core/a/c;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/dropbox/core/v2/c$1;->i:Lcom/dropbox/core/v2/c;

    iput-boolean p2, p0, Lcom/dropbox/core/v2/c$1;->b:Z

    iput-object p3, p0, Lcom/dropbox/core/v2/c$1;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/dropbox/core/v2/c$1;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/dropbox/core/v2/c$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/dropbox/core/v2/c$1;->f:[B

    iput-object p7, p0, Lcom/dropbox/core/v2/c$1;->g:Lcom/dropbox/core/a/c;

    iput-object p8, p0, Lcom/dropbox/core/v2/c$1;->h:Lcom/dropbox/core/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dropbox/core/DbxWrappedException;,
            Lcom/dropbox/core/DbxException;
        }
    .end annotation

    .line 142
    iget-boolean v0, p0, Lcom/dropbox/core/v2/c$1;->b:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/dropbox/core/v2/c$1;->i:Lcom/dropbox/core/v2/c;

    iget-object v1, p0, Lcom/dropbox/core/v2/c$1;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/v2/c;->a(Ljava/util/List;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/v2/c$1;->i:Lcom/dropbox/core/v2/c;

    invoke-static {v0}, Lcom/dropbox/core/v2/c;->a(Lcom/dropbox/core/v2/c;)Lcom/dropbox/core/h;

    move-result-object v1

    iget-object v3, p0, Lcom/dropbox/core/v2/c$1;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/core/v2/c$1;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/core/v2/c$1;->f:[B

    iget-object v6, p0, Lcom/dropbox/core/v2/c$1;->c:Ljava/util/List;

    const-string v2, "OfficialDropboxJavaSDKv2"

    invoke-static/range {v1 .. v6}, Lcom/dropbox/core/i;->a(Lcom/dropbox/core/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/util/List;)Lcom/dropbox/core/http/a$b;

    move-result-object v0

    .line 1140
    :try_start_0
    iget v1, v0, Lcom/dropbox/core/http/a$b;->a:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    const/16 v2, 0x199

    if-eq v1, v2, :cond_1

    .line 154
    invoke-static {v0}, Lcom/dropbox/core/i;->b(Lcom/dropbox/core/http/a$b;)Lcom/dropbox/core/DbxException;

    move-result-object v1

    throw v1

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/dropbox/core/v2/c$1;->h:Lcom/dropbox/core/a/c;

    iget-object v2, p0, Lcom/dropbox/core/v2/c$1;->a:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/dropbox/core/DbxWrappedException;->a(Lcom/dropbox/core/a/c;Lcom/dropbox/core/http/a$b;Ljava/lang/String;)Lcom/dropbox/core/DbxWrappedException;

    move-result-object v1

    throw v1

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/dropbox/core/v2/c$1;->g:Lcom/dropbox/core/a/c;

    .line 1151
    iget-object v2, v0, Lcom/dropbox/core/http/a$b;->b:Ljava/io/InputStream;

    .line 150
    invoke-virtual {v1, v2}, Lcom/dropbox/core/a/c;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 160
    new-instance v1, Lcom/dropbox/core/NetworkIOException;

    invoke-direct {v1, v0}, Lcom/dropbox/core/NetworkIOException;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_1
    move-exception v1

    .line 157
    invoke-static {v0}, Lcom/dropbox/core/i;->c(Lcom/dropbox/core/http/a$b;)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v2, Lcom/dropbox/core/BadResponseException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bad JSON: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonProcessingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3, v1}, Lcom/dropbox/core/BadResponseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
