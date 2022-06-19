.class Lokhttp3/internal/http2/f$d$3;
.super Lokhttp3/internal/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/f$d;->a(Lokhttp3/internal/http2/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/internal/http2/l;

.field final synthetic c:Lokhttp3/internal/http2/f$d;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/http2/f$d;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/http2/l;)V
    .locals 0

    .prologue
    .line 736
    iput-object p1, p0, Lokhttp3/internal/http2/f$d$3;->c:Lokhttp3/internal/http2/f$d;

    iput-object p4, p0, Lokhttp3/internal/http2/f$d$3;->a:Lokhttp3/internal/http2/l;

    invoke-direct {p0, p2, p3}, Lokhttp3/internal/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .prologue
    .line 739
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/f$d$3;->c:Lokhttp3/internal/http2/f$d;

    iget-object v0, v0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    iget-object v0, v0, Lokhttp3/internal/http2/f;->o:Lokhttp3/internal/http2/i;

    iget-object v1, p0, Lokhttp3/internal/http2/f$d$3;->a:Lokhttp3/internal/http2/l;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/i;->a(Lokhttp3/internal/http2/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    iget-object v0, p0, Lokhttp3/internal/http2/f$d$3;->c:Lokhttp3/internal/http2/f$d;

    iget-object v0, v0, Lokhttp3/internal/http2/f$d;->c:Lokhttp3/internal/http2/f;

    invoke-static {v0}, Lokhttp3/internal/http2/f;->a(Lokhttp3/internal/http2/f;)V

    goto :goto_0
.end method
