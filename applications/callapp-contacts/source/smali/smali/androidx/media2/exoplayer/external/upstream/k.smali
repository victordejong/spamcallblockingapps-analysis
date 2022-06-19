.class final synthetic Landroidx/media2/exoplayer/external/upstream/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media2/exoplayer/external/util/f$a;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:J


# direct methods
.method constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media2/exoplayer/external/upstream/k;->a:I

    iput-wide p2, p0, Landroidx/media2/exoplayer/external/upstream/k;->b:J

    iput-wide p4, p0, Landroidx/media2/exoplayer/external/upstream/k;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Landroidx/media2/exoplayer/external/upstream/k;->a:I

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/upstream/k;->b:J

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/upstream/k;->c:J

    move-object v5, p1

    check-cast v5, Landroidx/media2/exoplayer/external/upstream/c$a;

    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/upstream/j;->a(IJJLandroidx/media2/exoplayer/external/upstream/c$a;)V

    return-void
.end method
