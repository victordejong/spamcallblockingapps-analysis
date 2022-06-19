.class final Landroidx/media2/exoplayer/external/extractor/mp4/b$d;
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
    name = "d"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Landroidx/media2/exoplayer/external/util/p;


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/mp4/a$b;)V
    .locals 1

    .line 1518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1519
    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/mp4/a$b;->b:Landroidx/media2/exoplayer/external/util/p;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$d;->c:Landroidx/media2/exoplayer/external/util/p;

    const/16 v0, 0xc

    .line 1520
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1521
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$d;->a:I

    .line 1522
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result p1

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$d;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1527
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$d;->b:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1532
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$d;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$d;->c:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final c()Z
    .locals 1

    .line 1537
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$d;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
