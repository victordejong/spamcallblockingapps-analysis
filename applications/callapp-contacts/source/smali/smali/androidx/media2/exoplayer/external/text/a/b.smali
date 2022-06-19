.class final Landroidx/media2/exoplayer/external/text/a/b;
.super Landroidx/media2/exoplayer/external/text/a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media2/exoplayer/external/text/a;",
        "Ljava/lang/Comparable<",
        "Landroidx/media2/exoplayer/external/text/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final p:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 0

    .line 59
    invoke-direct/range {p0 .. p10}, Landroidx/media2/exoplayer/external/text/a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 61
    iput p11, p0, Landroidx/media2/exoplayer/external/text/a/b;->p:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 30
    check-cast p1, Landroidx/media2/exoplayer/external/text/a/b;

    .line 1066
    iget p1, p1, Landroidx/media2/exoplayer/external/text/a/b;->p:I

    iget v0, p0, Landroidx/media2/exoplayer/external/text/a/b;->p:I

    if-ge p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
