.class final Landroidx/media2/exoplayer/external/extractor/mp4/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/mp4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field public final a:[Landroidx/media2/exoplayer/external/extractor/mp4/m;

.field public b:Landroidx/media2/exoplayer/external/Format;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1481
    new-array p1, p1, [Landroidx/media2/exoplayer/external/extractor/mp4/m;

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->a:[Landroidx/media2/exoplayer/external/extractor/mp4/m;

    const/4 p1, 0x0

    .line 1482
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/mp4/b$c;->d:I

    return-void
.end method
