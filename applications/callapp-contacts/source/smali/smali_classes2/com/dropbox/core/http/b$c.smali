.class final Lcom/dropbox/core/http/b$c;
.super Lokhttp3/RequestBody;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/http/b$c$a;
    }
.end annotation


# instance fields
.field final a:Lcom/dropbox/core/http/c$a;

.field b:Lcom/dropbox/core/util/IOUtil$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 340
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 341
    new-instance v0, Lcom/dropbox/core/http/c$a;

    invoke-direct {v0}, Lcom/dropbox/core/http/c$a;-><init>()V

    iput-object v0, p0, Lcom/dropbox/core/http/b$c;->a:Lcom/dropbox/core/http/c$a;

    return-void
.end method

.method static synthetic a(Lcom/dropbox/core/http/b$c;)Lcom/dropbox/core/util/IOUtil$a;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/dropbox/core/http/b$c;->b:Lcom/dropbox/core/util/IOUtil$a;

    return-object p0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/dropbox/core/http/b$c;->a:Lcom/dropbox/core/http/c$a;

    invoke-virtual {v0}, Lcom/dropbox/core/http/c$a;->close()V

    return-void
.end method

.method public final contentLength()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final writeTo(Lc/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 367
    new-instance v0, Lcom/dropbox/core/http/b$c$a;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/http/b$c$a;-><init>(Lcom/dropbox/core/http/b$c;Lc/ab;)V

    .line 1001
    invoke-static {v0}, Lc/r;->a(Lc/ab;)Lc/g;

    move-result-object p1

    .line 369
    iget-object v0, p0, Lcom/dropbox/core/http/b$c;->a:Lcom/dropbox/core/http/c$a;

    .line 1079
    iget-object v0, v0, Lcom/dropbox/core/http/c$a;->a:Ljava/io/PipedInputStream;

    .line 2001
    invoke-static {v0}, Lc/q;->a(Ljava/io/InputStream;)Lc/ad;

    move-result-object v0

    .line 1079
    invoke-interface {p1, v0}, Lc/g;->a(Lc/ad;)J

    .line 370
    invoke-interface {p1}, Lc/g;->flush()V

    .line 371
    invoke-virtual {p0}, Lcom/dropbox/core/http/b$c;->close()V

    return-void
.end method
