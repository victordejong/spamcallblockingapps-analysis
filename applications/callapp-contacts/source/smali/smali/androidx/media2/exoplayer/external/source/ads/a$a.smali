.class public final Landroidx/media2/exoplayer/external/source/ads/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/ads/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Landroid/net/Uri;

.field public final c:[I

.field public final d:[J


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [Landroid/net/Uri;

    new-array v0, v0, [J

    const/4 v3, -0x1

    .line 65
    invoke-direct {p0, v3, v1, v2, v0}, Landroidx/media2/exoplayer/external/source/ads/a$a;-><init>(I[I[Landroid/net/Uri;[J)V

    return-void
.end method

.method constructor <init>(I[I[Landroid/net/Uri;[J)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/a;->a(Z)V

    .line 75
    iput p1, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->a:I

    .line 76
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->c:[I

    .line 77
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->b:[Landroid/net/Uri;

    .line 78
    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->d:[J

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 95
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->c:[I

    array-length v2, v1

    if-ge p1, v2, :cond_0

    .line 96
    aget v2, v1, p1

    if-eqz v2, :cond_0

    aget v1, v1, p1

    if-eq v1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public final a()Z
    .locals 2

    .line 107
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1086
    invoke-virtual {p0, v1}, Landroidx/media2/exoplayer/external/source/ads/a$a;->a(I)I

    move-result v0

    .line 107
    iget v1, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->a:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/source/ads/a$a;

    .line 119
    iget v2, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->a:I

    iget v3, p1, Landroidx/media2/exoplayer/external/source/ads/a$a;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->b:[Landroid/net/Uri;

    iget-object v3, p1, Landroidx/media2/exoplayer/external/source/ads/a$a;->b:[Landroid/net/Uri;

    .line 120
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->c:[I

    iget-object v3, p1, Landroidx/media2/exoplayer/external/source/ads/a$a;->c:[I

    .line 121
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->d:[J

    iget-object p1, p1, Landroidx/media2/exoplayer/external/source/ads/a$a;->d:[J

    .line 122
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 127
    iget v0, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->b:[Landroid/net/Uri;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/ads/a$a;->d:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
