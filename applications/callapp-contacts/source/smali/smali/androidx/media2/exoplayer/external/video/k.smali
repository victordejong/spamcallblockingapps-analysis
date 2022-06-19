.class final synthetic Landroidx/media2/exoplayer/external/video/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/video/g$a;

.field private final b:I

.field private final c:J


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/video/g$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/k;->a:Landroidx/media2/exoplayer/external/video/g$a;

    iput p2, p0, Landroidx/media2/exoplayer/external/video/k;->b:I

    iput-wide p3, p0, Landroidx/media2/exoplayer/external/video/k;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/k;->a:Landroidx/media2/exoplayer/external/video/g$a;

    iget v1, p0, Landroidx/media2/exoplayer/external/video/k;->b:I

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/video/k;->c:J

    .line 1161
    iget-object v0, v0, Landroidx/media2/exoplayer/external/video/g$a;->b:Landroidx/media2/exoplayer/external/video/g;

    invoke-interface {v0, v1, v2, v3}, Landroidx/media2/exoplayer/external/video/g;->a(IJ)V

    return-void
.end method
