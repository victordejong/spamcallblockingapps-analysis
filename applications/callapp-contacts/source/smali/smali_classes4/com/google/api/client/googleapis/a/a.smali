.class public final Lcom/google/api/client/googleapis/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/a/a$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:J

.field public d:I

.field public e:J

.field public f:J

.field private final g:Lcom/google/api/client/http/r;

.field private final h:Lcom/google/api/client/http/w;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/w;Lcom/google/api/client/http/s;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/google/api/client/googleapis/a/a;->a:Z

    const/high16 v0, 0x2000000

    .line 102
    iput v0, p0, Lcom/google/api/client/googleapis/a/a;->b:I

    .line 111
    sget v0, Lcom/google/api/client/googleapis/a/a$a;->a:I

    iput v0, p0, Lcom/google/api/client/googleapis/a/a;->d:I

    const-wide/16 v0, -0x1

    .line 123
    iput-wide v0, p0, Lcom/google/api/client/googleapis/a/a;->f:J

    .line 134
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/http/w;

    iput-object v0, p0, Lcom/google/api/client/googleapis/a/a;->h:Lcom/google/api/client/http/w;

    if-nez p2, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/google/api/client/http/w;->createRequestFactory()Lcom/google/api/client/http/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/api/client/http/w;->createRequestFactory(Lcom/google/api/client/http/s;)Lcom/google/api/client/http/r;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/api/client/googleapis/a/a;->g:Lcom/google/api/client/http/r;

    return-void
.end method


# virtual methods
.method public final a(JLcom/google/api/client/http/i;Lcom/google/api/client/http/n;Ljava/io/OutputStream;)Lcom/google/api/client/http/t;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/api/client/googleapis/a/a;->g:Lcom/google/api/client/http/r;

    invoke-virtual {v0, p3}, Lcom/google/api/client/http/r;->a(Lcom/google/api/client/http/i;)Lcom/google/api/client/http/q;

    move-result-object p3

    if-eqz p4, :cond_0

    .line 232
    invoke-virtual {p3}, Lcom/google/api/client/http/q;->g()Lcom/google/api/client/http/n;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/api/client/http/n;->putAll(Ljava/util/Map;)V

    .line 235
    :cond_0
    iget-wide v0, p0, Lcom/google/api/client/googleapis/a/a;->e:J

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    cmp-long p4, v0, v2

    if-nez p4, :cond_1

    cmp-long p4, p1, v4

    if-eqz p4, :cond_3

    .line 236
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bytes="

    .line 237
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/google/api/client/googleapis/a/a;->e:J

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, p1, v4

    if-eqz v0, :cond_2

    .line 239
    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 241
    :cond_2
    invoke-virtual {p3}, Lcom/google/api/client/http/q;->g()Lcom/google/api/client/http/n;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/api/client/http/n;->e(Ljava/lang/String;)Lcom/google/api/client/http/n;

    .line 244
    :cond_3
    invoke-virtual {p3}, Lcom/google/api/client/http/q;->o()Lcom/google/api/client/http/t;

    move-result-object p1

    .line 246
    :try_start_0
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->h()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2, p5}, Lcom/google/api/client/a/o;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {p1}, Lcom/google/api/client/http/t;->j()V

    return-object p1

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/google/api/client/http/t;->j()V

    throw p2
.end method
