.class final Lretrofit2/h$b;
.super Lokhttp3/ad;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lokhttp3/v;

.field private final b:J


# direct methods
.method constructor <init>(Lokhttp3/v;J)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lokhttp3/ad;-><init>()V

    .line 253
    iput-object p1, p0, Lretrofit2/h$b;->a:Lokhttp3/v;

    .line 254
    iput-wide p2, p0, Lretrofit2/h$b;->b:J

    .line 255
    return-void
.end method


# virtual methods
.method public a()Lokhttp3/v;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lretrofit2/h$b;->a:Lokhttp3/v;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 262
    iget-wide v0, p0, Lretrofit2/h$b;->b:J

    return-wide v0
.end method

.method public c()La/e;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
