.class final Landroidx/media2/exoplayer/external/source/af$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/source/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# instance fields
.field public final a:Landroidx/media2/exoplayer/external/extractor/o;

.field public final b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

.field public final c:[Z

.field public final d:[Z

.field public final e:[Z


# direct methods
.method public constructor <init>(Landroidx/media2/exoplayer/external/extractor/o;Landroidx/media2/exoplayer/external/source/TrackGroupArray;[Z)V
    .locals 0

    .line 1124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af$d;->a:Landroidx/media2/exoplayer/external/extractor/o;

    .line 1126
    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/af$d;->b:Landroidx/media2/exoplayer/external/source/TrackGroupArray;

    .line 1127
    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/af$d;->c:[Z

    .line 1128
    iget p1, p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af$d;->d:[Z

    .line 1129
    iget p1, p2, Landroidx/media2/exoplayer/external/source/TrackGroupArray;->length:I

    new-array p1, p1, [Z

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/af$d;->e:[Z

    return-void
.end method
