.class final synthetic Landroidx/media2/exoplayer/external/video/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/video/g$a;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:F


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/video/g$a;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/l;->a:Landroidx/media2/exoplayer/external/video/g$a;

    iput p2, p0, Landroidx/media2/exoplayer/external/video/l;->b:I

    iput p3, p0, Landroidx/media2/exoplayer/external/video/l;->c:I

    iput p4, p0, Landroidx/media2/exoplayer/external/video/l;->d:I

    iput p5, p0, Landroidx/media2/exoplayer/external/video/l;->e:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/l;->a:Landroidx/media2/exoplayer/external/video/g$a;

    iget v1, p0, Landroidx/media2/exoplayer/external/video/l;->b:I

    iget v2, p0, Landroidx/media2/exoplayer/external/video/l;->c:I

    iget v3, p0, Landroidx/media2/exoplayer/external/video/l;->d:I

    iget v4, p0, Landroidx/media2/exoplayer/external/video/l;->e:F

    .line 1174
    iget-object v0, v0, Landroidx/media2/exoplayer/external/video/g$a;->b:Landroidx/media2/exoplayer/external/video/g;

    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/media2/exoplayer/external/video/g;->a(IIIF)V

    return-void
.end method
