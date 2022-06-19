.class final Lokhttp3/internal/a/d$b;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:[J

.field final c:[Ljava/io/File;

.field final d:[Ljava/io/File;

.field e:Z

.field f:Lokhttp3/internal/a/d$a;

.field g:J


# virtual methods
.method a(La/d;)V
    .locals 6

    .prologue
    .line 1010
    iget-object v1, p0, Lokhttp3/internal/a/d$b;->b:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v4, v1, v0

    .line 1011
    const/16 v3, 0x20

    invoke-interface {p1, v3}, La/d;->i(I)La/d;

    move-result-object v3

    invoke-interface {v3, v4, v5}, La/d;->l(J)La/d;

    .line 1010
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    :cond_0
    return-void
.end method
