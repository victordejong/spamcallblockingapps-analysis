.class Lretrofit2/h$a$1;
.super La/h;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/h$a;->c()La/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lretrofit2/h$a;


# direct methods
.method constructor <init>(Lretrofit2/h$a;La/s;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lretrofit2/h$a$1;->a:Lretrofit2/h$a;

    invoke-direct {p0, p2}, La/h;-><init>(La/s;)V

    return-void
.end method


# virtual methods
.method public a(La/c;J)J
    .locals 2

    .prologue
    .line 290
    :try_start_0
    invoke-super {p0, p1, p2, p3}, La/h;->a(La/c;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    iget-object v1, p0, Lretrofit2/h$a$1;->a:Lretrofit2/h$a;

    iput-object v0, v1, Lretrofit2/h$a;->a:Ljava/io/IOException;

    .line 293
    throw v0
.end method
