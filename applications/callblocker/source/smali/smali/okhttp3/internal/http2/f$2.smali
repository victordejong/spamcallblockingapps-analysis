.class Lokhttp3/internal/http2/f$2;
.super Lokhttp3/internal/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/f;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Lokhttp3/internal/http2/f;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/f;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1

    .prologue
    .line 346
    iput-object p1, p0, Lokhttp3/internal/http2/f$2;->d:Lokhttp3/internal/http2/f;

    iput p4, p0, Lokhttp3/internal/http2/f$2;->a:I

    iput-wide p5, p0, Lokhttp3/internal/http2/f$2;->c:J

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .prologue
    .line 349
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/f$2;->d:Lokhttp3/internal/http2/f;

    iget-object v0, v0, Lokhttp3/internal/http2/f;->o:Lokhttp3/internal/http2/i;

    iget v1, p0, Lokhttp3/internal/http2/f$2;->a:I

    iget-wide v2, p0, Lokhttp3/internal/http2/f$2;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/internal/http2/i;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    iget-object v0, p0, Lokhttp3/internal/http2/f$2;->d:Lokhttp3/internal/http2/f;

    invoke-static {v0}, Lokhttp3/internal/http2/f;->a(Lokhttp3/internal/http2/f;)V

    goto :goto_0
.end method
