.class public final Landroidx/media2/exoplayer/external/extractor/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(I[BII)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/q$a;->a:I

    .line 73
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/q$a;->b:[B

    .line 74
    iput p3, p0, Landroidx/media2/exoplayer/external/extractor/q$a;->c:I

    .line 75
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/q$a;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 86
    :cond_1
    check-cast p1, Landroidx/media2/exoplayer/external/extractor/q$a;

    .line 87
    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/q$a;->a:I

    iget v3, p1, Landroidx/media2/exoplayer/external/extractor/q$a;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/q$a;->c:I

    iget v3, p1, Landroidx/media2/exoplayer/external/extractor/q$a;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/q$a;->d:I

    iget v3, p1, Landroidx/media2/exoplayer/external/extractor/q$a;->d:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/q$a;->b:[B

    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/q$a;->b:[B

    .line 88
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 93
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/q$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 94
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/q$a;->b:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 95
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/q$a;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/q$a;->d:I

    add-int/2addr v0, v1

    return v0
.end method
