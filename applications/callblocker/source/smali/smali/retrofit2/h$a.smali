.class final Lretrofit2/h$a;
.super Lokhttp3/ad;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Ljava/io/IOException;

.field private final b:Lokhttp3/ad;


# direct methods
.method constructor <init>(Lokhttp3/ad;)V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lokhttp3/ad;-><init>()V

    .line 275
    iput-object p1, p0, Lretrofit2/h$a;->b:Lokhttp3/ad;

    .line 276
    return-void
.end method


# virtual methods
.method public a()Lokhttp3/v;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lretrofit2/h$a;->b:Lokhttp3/ad;

    invoke-virtual {v0}, Lokhttp3/ad;->a()Lokhttp3/v;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lretrofit2/h$a;->b:Lokhttp3/ad;

    invoke-virtual {v0}, Lokhttp3/ad;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()La/e;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lretrofit2/h$a$1;

    iget-object v1, p0, Lretrofit2/h$a;->b:Lokhttp3/ad;

    invoke-virtual {v1}, Lokhttp3/ad;->c()La/e;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lretrofit2/h$a$1;-><init>(Lretrofit2/h$a;La/s;)V

    invoke-static {v0}, La/l;->a(La/s;)La/e;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lretrofit2/h$a;->b:Lokhttp3/ad;

    invoke-virtual {v0}, Lokhttp3/ad;->close()V

    .line 301
    return-void
.end method

.method e()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lretrofit2/h$a;->a:Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lretrofit2/h$a;->a:Ljava/io/IOException;

    throw v0

    .line 307
    :cond_0
    return-void
.end method
