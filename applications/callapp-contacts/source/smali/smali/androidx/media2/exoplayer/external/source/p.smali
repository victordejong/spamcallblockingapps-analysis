.class final Landroidx/media2/exoplayer/external/source/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/upstream/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/source/p$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/upstream/f;

.field private final b:I

.field private final c:Landroidx/media2/exoplayer/external/source/p$a;

.field private final d:[B

.field private e:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/upstream/f;ILandroidx/media2/exoplayer/external/source/p$a;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 66
    :goto_0
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 67
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/p;->a:Landroidx/media2/exoplayer/external/upstream/f;

    .line 68
    iput p2, p0, Landroidx/media2/exoplayer/external/source/p;->b:I

    .line 69
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/p;->c:Landroidx/media2/exoplayer/external/source/p$a;

    new-array p1, v0, [B

    .line 70
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/p;->d:[B

    .line 71
    iput p2, p0, Landroidx/media2/exoplayer/external/source/p;->e:I

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

    .line 86
    iget v0, p0, Landroidx/media2/exoplayer/external/source/p;->e:I

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 1124
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/p;->a:Landroidx/media2/exoplayer/external/upstream/f;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/p;->d:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Landroidx/media2/exoplayer/external/upstream/f;->a([BII)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1128
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/p;->d:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 1135
    new-array v2, v0, [B

    move v5, v0

    const/4 v6, 0x0

    :goto_0
    if-lez v5, :cond_2

    .line 1137
    iget-object v7, p0, Landroidx/media2/exoplayer/external/source/p;->a:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v7, v2, v6, v5}, Landroidx/media2/exoplayer/external/upstream/f;->a([BII)I

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

    .line 1146
    aget-byte v3, v2, v3

    if-nez v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-lez v0, :cond_4

    .line 1151
    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/p;->c:Landroidx/media2/exoplayer/external/source/p$a;

    new-instance v5, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {v5, v2, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>([BI)V

    invoke-interface {v3, v5}, Landroidx/media2/exoplayer/external/source/p$a;->a(Landroidx/media2/exoplayer/external/util/p;)V

    :cond_4
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_5

    .line 88
    iget v0, p0, Landroidx/media2/exoplayer/external/source/p;->b:I

    iput v0, p0, Landroidx/media2/exoplayer/external/source/p;->e:I

    goto :goto_3

    :cond_5
    return v1

    .line 93
    :cond_6
    :goto_3
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/p;->a:Landroidx/media2/exoplayer/external/upstream/f;

    iget v2, p0, Landroidx/media2/exoplayer/external/source/p;->e:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/upstream/f;->a([BII)I

    move-result p1

    if-eq p1, v1, :cond_7

    .line 95
    iget p2, p0, Landroidx/media2/exoplayer/external/source/p;->e:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/source/p;->e:I

    :cond_7
    return p1
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/h;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    .line 103
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/p;->a:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroidx/media2/exoplayer/external/upstream/w;)V
    .locals 1

    .line 76
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/p;->a:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0, p1}, Landroidx/media2/exoplayer/external/upstream/f;->a(Landroidx/media2/exoplayer/external/upstream/w;)V

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

    .line 108
    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/p;->a:Landroidx/media2/exoplayer/external/upstream/f;

    invoke-interface {v0}, Landroidx/media2/exoplayer/external/upstream/f;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
