.class final Landroidx/media2/exoplayer/external/extractor/f/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/f/d$a;->a:I

    .line 177
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/f/d$a;->b:J

    return-void
.end method

.method public static a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/extractor/f/d$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 191
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p0, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 192
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 194
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result p0

    .line 195
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->h()J

    move-result-wide v0

    .line 197
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/f/d$a;

    invoke-direct {p1, p0, v0, v1}, Landroidx/media2/exoplayer/external/extractor/f/d$a;-><init>(IJ)V

    return-object p1
.end method
