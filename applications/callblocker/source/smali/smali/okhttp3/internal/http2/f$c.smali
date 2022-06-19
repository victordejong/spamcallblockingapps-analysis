.class final Lokhttp3/internal/http2/f$c;
.super Lokhttp3/internal/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation


# instance fields
.field final a:Z

.field final c:I

.field final d:I

.field final synthetic e:Lokhttp3/internal/http2/f;


# direct methods
.method constructor <init>(Lokhttp3/internal/http2/f;ZII)V
    .locals 4

    .prologue
    .line 365
    iput-object p1, p0, Lokhttp3/internal/http2/f$c;->e:Lokhttp3/internal/http2/f;

    .line 366
    const-string/jumbo v0, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p1, Lokhttp3/internal/http2/f;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    iput-boolean p2, p0, Lokhttp3/internal/http2/f$c;->a:Z

    .line 368
    iput p3, p0, Lokhttp3/internal/http2/f$c;->c:I

    .line 369
    iput p4, p0, Lokhttp3/internal/http2/f$c;->d:I

    .line 370
    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .prologue
    .line 373
    iget-object v0, p0, Lokhttp3/internal/http2/f$c;->e:Lokhttp3/internal/http2/f;

    iget-boolean v1, p0, Lokhttp3/internal/http2/f$c;->a:Z

    iget v2, p0, Lokhttp3/internal/http2/f$c;->c:I

    iget v3, p0, Lokhttp3/internal/http2/f$c;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/internal/http2/f;->a(ZII)V

    .line 374
    return-void
.end method
