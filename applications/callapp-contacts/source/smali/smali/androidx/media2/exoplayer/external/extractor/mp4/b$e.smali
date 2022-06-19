.class final Landroidx/media2/exoplayer/external/extractor/mp4/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/mp4/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mp4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/p;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/mp4/a$b;)V
    .locals 1

    .line 1555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1556
    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;->a:Landroidx/media2/exoplayer/external/util/p;

    const/16 v0, 0xc

    .line 1557
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1558
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;->c:I

    .line 1559
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1564
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;->b:I

    return v0
.end method

.method public final b()I
    .locals 2

    .line 1569
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1570
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 1572
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v0

    return v0

    .line 1575
    :cond_1
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;->d:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 1577
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;->e:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 1582
    :cond_2
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$e;->e:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
