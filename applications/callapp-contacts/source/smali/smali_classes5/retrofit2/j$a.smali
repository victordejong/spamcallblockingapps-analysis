.class final Lretrofit2/j$a;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/io/IOException;

.field private final b:Lokhttp3/ResponseBody;

.field private final c:Lc/h;


# direct methods
.method constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 1

    .line 285
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 286
    iput-object p1, p0, Lretrofit2/j$a;->b:Lokhttp3/ResponseBody;

    .line 287
    new-instance v0, Lretrofit2/j$a$1;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lc/h;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lretrofit2/j$a$1;-><init>(Lretrofit2/j$a;Lc/ad;)V

    .line 1001
    invoke-static {v0}, Lc/r;->a(Lc/ad;)Lc/h;

    move-result-object p1

    .line 287
    iput-object p1, p0, Lretrofit2/j$a;->c:Lc/h;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 312
    iget-object v0, p0, Lretrofit2/j$a;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    return-void
.end method

.method public final contentLength()J
    .locals 2

    .line 304
    iget-object v0, p0, Lretrofit2/j$a;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    .line 300
    iget-object v0, p0, Lretrofit2/j$a;->b:Lokhttp3/ResponseBody;

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public final source()Lc/h;
    .locals 1

    .line 308
    iget-object v0, p0, Lretrofit2/j$a;->c:Lc/h;

    return-object v0
.end method
