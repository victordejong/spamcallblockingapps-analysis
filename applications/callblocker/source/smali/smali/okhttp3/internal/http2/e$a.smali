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
    .locals 2

    .prologue
    .line 204
    iput-object p1, p0, Lokhttp3/internal/http2/e$a;->c:Lokhttp3/internal/http2/e;

    .line 205
    invoke-direct {p0, p2}, La/h;-><init>(La/s;)V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/http2/e$a;->a:Z

    .line 202
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/http2/e$a;->b:J

    .line 206
    return-void
.end method

.method private a(Ljava/io/IOException;)V
    .locals 7

    .prologue
    .line 227
    iget-boolean v0, p0, Lokhttp3/internal/http2/e$a;->a:Z

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http2/e$a;->a:Z

    .line 229
    iget-object v0, p0, Lokhttp3/internal/http2/e$a;->c:Lokhttp3/internal/http2/e;

    iget-object v1, v0, Lokhttp3/internal/http2/e;->a:Lokhttp3/internal/connection/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lokhttp3/internal/http2/e$a;->c:Lokhttp3/internal/http2/e;

    iget-wide v4, p0, Lokhttp3/internal/http2/e$a;->b:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Lokhttp3/internal/connection/f;->a(ZLokhttp3/internal/b/c;JLjava/io/IOException;)V

    goto :goto_0
.end method


# virtual methods
.method public a(La/c;J)J
    .locals 4

    .prologue
    .line 210
    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/http2/e$a;->b()La/s;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, La/s;->a(La/c;J)J

    move-result-wide v0

    .line 211
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 212
    iget-wide v2, p0, Lokhttp3/internal/http2/e$a;->b:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/internal/http2/e$a;->b:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_0
    return-wide v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-direct {p0, v0}, Lokhttp3/internal/http2/e$a;->a(Ljava/io/IOException;)V

    .line 217
    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, La/h;->close()V

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/internal/http2/e$a;->a(Ljava/io/IOException;)V

    .line 224
    return-void
.end method
