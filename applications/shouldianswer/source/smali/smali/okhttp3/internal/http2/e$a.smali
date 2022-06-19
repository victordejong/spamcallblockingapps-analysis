.class Lokhttp3/internal/http2/e$a;
.super La/h;
.source "Http2Codec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:J

.field final synthetic c:Lokhttp3/internal/http2/e;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/e;La/s;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lokhttp3/internal/http2/e$a;->c:Lokhttp3/internal/http2/e;

    .line 205
    invoke-direct {p0, p2}, La/h;-><init>(La/s;)V

    const/4 p1, 0x0

    .line 201
    iput-boolean p1, p0, Lokhttp3/internal/http2/e$a;->a:Z

    const-wide/16 p1, 0x0

    .line 202
    iput-wide p1, p0, Lokhttp3/internal/http2/e$a;->b:J

    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 7

    .line 227
    iget-boolean v0, p0, Lokhttp3/internal/http2/e$a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 228
    iput-boolean v0, p0, Lokhttp3/internal/http2/e$a;->a:Z

    .line 229
    iget-object v0, p0, Lokhttp3/internal/http2/e$a;->c:Lokhttp3/internal/http2/e;

    iget-object v1, v0, Lokhttp3/internal/http2/e;->a:Lokhttp3/internal/connection/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lokhttp3/internal/http2/e$a;->c:Lokhttp3/internal/http2/e;

    iget-wide v4, p0, Lokhttp3/internal/http2/e$a;->b:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/f;->a(ZLokhttp3/internal/b/c;JLjava/io/IOException;)V

    return-void
.end method


# virtual methods
.method public a(La/c;J)J
    .locals 2

    .line 210
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/e$a;->b()La/s;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, La/s;->a(La/c;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 212
    iget-wide v0, p0, Lokhttp3/internal/http2/e$a;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/e$a;->b:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    .line 216
    invoke-direct {p0, p1}, Lokhttp3/internal/http2/e$a;->a(Ljava/io/IOException;)V

    .line 217
    throw p1
.end method

.method public close()V
    .locals 1

    .line 222
    invoke-super {p0}, La/h;->close()V

    const/4 v0, 0x0

    .line 223
    invoke-direct {p0, v0}, Lokhttp3/internal/http2/e$a;->a(Ljava/io/IOException;)V

    return-void
.end method
