.class final Lretrofit2/j$b;
.super Lokhttp3/ResponseBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lokhttp3/MediaType;

.field private final b:J


# direct methods
.method constructor <init>(Lokhttp3/MediaType;J)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 263
    iput-object p1, p0, Lretrofit2/j$b;->a:Lokhttp3/MediaType;

    .line 264
    iput-wide p2, p0, Lretrofit2/j$b;->b:J

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    .line 272
    iget-wide v0, p0, Lretrofit2/j$b;->b:J

    return-wide v0
.end method

.method public final contentType()Lokhttp3/MediaType;
    .locals 1

    .line 268
    iget-object v0, p0, Lretrofit2/j$b;->a:Lokhttp3/MediaType;

    return-object v0
.end method

.method public final source()Lc/h;
    .locals 2

    .line 276
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
