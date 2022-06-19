.class final Lokhttp3/ab$1;
.super Lokhttp3/ab;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/ab;->a(Lokhttp3/v;[BII)Lokhttp3/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/v;

.field final synthetic b:I

.field final synthetic c:[B

.field final synthetic d:I


# direct methods
.method constructor <init>(Lokhttp3/v;I[BI)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lokhttp3/ab$1;->a:Lokhttp3/v;

    iput p2, p0, Lokhttp3/ab$1;->b:I

    iput-object p3, p0, Lokhttp3/ab$1;->c:[B

    iput p4, p0, Lokhttp3/ab$1;->d:I

    invoke-direct {p0}, Lokhttp3/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/v;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lokhttp3/ab$1;->a:Lokhttp3/v;

    return-object v0
.end method

.method public a(La/d;)V
    .locals 3

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/ab$1;->c:[B

    iget v1, p0, Lokhttp3/ab$1;->d:I

    iget v2, p0, Lokhttp3/ab$1;->b:I

    invoke-interface {p1, v0, v1, v2}, La/d;->c([BII)La/d;

    .line 99
    return-void
.end method

.method public b()J
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lokhttp3/ab$1;->b:I

    int-to-long v0, v0

    return-wide v0
.end method
