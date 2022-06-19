.class final Lokhttp3/aa$1;
.super Lokhttp3/aa;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/aa;->a(Lokhttp3/u;[BII)Lokhttp3/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/u;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lokhttp3/u;I[BI)V
    .locals 0

    .line 88
    iput-object p1, p0, Lokhttp3/aa$1;->a:Lokhttp3/u;

    iput p2, p0, Lokhttp3/aa$1;->b:I

    iput-object p3, p0, Lokhttp3/aa$1;->c:[B

    iput p4, p0, Lokhttp3/aa$1;->d:I

    invoke-direct {p0}, Lokhttp3/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/u;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 90
    iget-object v0, p0, Lokhttp3/aa$1;->a:Lokhttp3/u;

    return-object v0
.end method

.method public a(La/d;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lokhttp3/aa$1;->c:[B

    iget v1, p0, Lokhttp3/aa$1;->d:I

    iget v2, p0, Lokhttp3/aa$1;->b:I

    invoke-interface {p1, v0, v1, v2}, La/d;->c([BII)La/d;

    return-void
.end method

.method public b()J
    .locals 2

    .line 94
    iget v0, p0, Lokhttp3/aa$1;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
