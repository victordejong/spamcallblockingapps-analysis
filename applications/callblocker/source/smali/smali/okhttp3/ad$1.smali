.class final Lokhttp3/ad$1;
.super Lokhttp3/ad;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/ad;->a(Lokhttp3/v;JLa/e;)Lokhttp3/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/v;

.field final synthetic b:J

.field final synthetic c:La/e;


# direct methods
.method constructor <init>(Lokhttp3/v;JLa/e;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lokhttp3/ad$1;->a:Lokhttp3/v;

    iput-wide p2, p0, Lokhttp3/ad$1;->b:J

    iput-object p4, p0, Lokhttp3/ad$1;->c:La/e;

    invoke-direct {p0}, Lokhttp3/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/v;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lokhttp3/ad$1;->a:Lokhttp3/v;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lokhttp3/ad$1;->b:J

    return-wide v0
.end method

.method public c()La/e;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lokhttp3/ad$1;->c:La/e;

    return-object v0
.end method
