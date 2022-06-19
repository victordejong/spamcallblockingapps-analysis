.class final synthetic Landroidx/media2/exoplayer/external/video/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/video/g$a;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:J


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/video/g$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/i;->a:Landroidx/media2/exoplayer/external/video/g$a;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/i;->b:Ljava/lang/String;

    iput-wide p3, p0, Landroidx/media2/exoplayer/external/video/i;->c:J

    iput-wide p5, p0, Landroidx/media2/exoplayer/external/video/i;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/i;->a:Landroidx/media2/exoplayer/external/video/g$a;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/video/i;->b:Ljava/lang/String;

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/video/i;->c:J

    iget-wide v5, p0, Landroidx/media2/exoplayer/external/video/i;->d:J

    .line 1146
    iget-object v1, v0, Landroidx/media2/exoplayer/external/video/g$a;->b:Landroidx/media2/exoplayer/external/video/g;

    invoke-interface/range {v1 .. v6}, Landroidx/media2/exoplayer/external/video/g;->a(Ljava/lang/String;JJ)V

    return-void
.end method
