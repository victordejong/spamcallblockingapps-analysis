.class final synthetic Landroidx/media2/exoplayer/external/audio/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/audio/g$a;

.field private final b:I

.field private final c:J

.field private final d:J


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/audio/g$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/k;->a:Landroidx/media2/exoplayer/external/audio/g$a;

    iput p2, p0, Landroidx/media2/exoplayer/external/audio/k;->b:I

    iput-wide p3, p0, Landroidx/media2/exoplayer/external/audio/k;->c:J

    iput-wide p5, p0, Landroidx/media2/exoplayer/external/audio/k;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/k;->a:Landroidx/media2/exoplayer/external/audio/g$a;

    iget v2, p0, Landroidx/media2/exoplayer/external/audio/k;->b:I

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/audio/k;->c:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/audio/k;->d:J

    .line 1148
    iget-object v1, v0, Landroidx/media2/exoplayer/external/audio/g$a;->b:Landroidx/media2/exoplayer/external/audio/g;

    invoke-interface/range {v1 .. v6}, Landroidx/media2/exoplayer/external/audio/g;->a(IJJ)V

    return-void
.end method
