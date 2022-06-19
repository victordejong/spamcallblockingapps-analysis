.class Lretrofit2/k$a;
.super Lokhttp3/ab;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lokhttp3/ab;

.field private final b:Lokhttp3/v;


# direct methods
.method constructor <init>(Lokhttp3/ab;Lokhttp3/v;)V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lokhttp3/ab;-><init>()V

    .line 237
    iput-object p1, p0, Lretrofit2/k$a;->a:Lokhttp3/ab;

    .line 238
    iput-object p2, p0, Lretrofit2/k$a;->b:Lokhttp3/v;

    .line 239
    return-void
.end method


# virtual methods
.method public a()Lokhttp3/v;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lretrofit2/k$a;->b:Lokhttp3/v;

    return-object v0
.end method

.method public a(La/d;)V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lretrofit2/k$a;->a:Lokhttp3/ab;

    invoke-virtual {v0, p1}, Lokhttp3/ab;->a(La/d;)V

    .line 251
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lretrofit2/k$a;->a:Lokhttp3/ab;

    invoke-virtual {v0}, Lokhttp3/ab;->b()J

    move-result-wide v0

    return-wide v0
.end method
