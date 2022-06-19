.class final Lcom/google/android/exoplayer2/source/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/upstream/h;

.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/source/k$a;

.field private final d:[B

.field private e:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/h;ILcom/google/android/exoplayer2/source/k$a;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 62
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 63
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k;->a:Lcom/google/android/exoplayer2/upstream/h;

    .line 64
    iput p2, p0, Lcom/google/android/exoplayer2/source/k;->b:I

    .line 65
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/k;->c:Lcom/google/android/exoplayer2/source/k$a;

    new-array p1, v0, [B

    .line 66
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/k;->d:[B

    .line 67
    iput p2, p0, Lcom/google/android/exoplayer2/source/k;->e:I

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lcom/google/android/exoplayer2/source/k;->e:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 1121
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->a:Lcom/google/android/exoplayer2/upstream/h;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/k;->d:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/h;->a([BII)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->d:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 1132
    new-array v2, v0, [B

    move v5, v0

    const/4 v6, 0x0

    :goto_0
    if-lez v5, :cond_2

    .line 1134
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/k;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v7, v2, v6, v5}, Lcom/google/android/exoplayer2/upstream/h;->a([BII)I

    move-result v7

    if-ne v7, v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/2addr v6, v7

    sub-int/2addr v5, v7

    goto :goto_0

    :cond_2
    :goto_1
    if-lez v0, :cond_3

    add-int/lit8 v3, v0, -0x1

    .line 1143
    aget-byte v3, v2, v3

    if-nez v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-lez v0, :cond_4

    .line 1148
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/k;->c:Lcom/google/android/exoplayer2/source/k$a;

    new-instance v5, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {v5, v2, v0}, Lcom/google/android/exoplayer2/util/u;-><init>([BI)V

    invoke-interface {v3, v5}, Lcom/google/android/exoplayer2/source/k$a;->a(Lcom/google/android/exoplayer2/util/u;)V

    :cond_4
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_5

    .line 85
    iget v0, p0, Lcom/google/android/exoplayer2/source/k;->b:I

    iput v0, p0, Lcom/google/android/exoplayer2/source/k;->e:I

    goto :goto_3

    :cond_5
    return v1

    .line 90
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->a:Lcom/google/android/exoplayer2/upstream/h;

    iget v2, p0, Lcom/google/android/exoplayer2/source/k;->e:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/upstream/h;->a([BII)I

    move-result p1

    if-eq p1, v1, :cond_7

    .line 92
    iget p2, p0, Lcom/google/android/exoplayer2/source/k;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/k;->e:I

    :cond_7
    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/j;)J
    .locals 0

    .line 78
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/exoplayer2/upstream/v;)V
    .locals 1

    .line 72
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/h;->a(Lcom/google/android/exoplayer2/upstream/v;)V

    return-void
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/k;->a:Lcom/google/android/exoplayer2/upstream/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/h;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
