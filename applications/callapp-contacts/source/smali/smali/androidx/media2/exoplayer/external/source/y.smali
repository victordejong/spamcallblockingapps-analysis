.class final synthetic Landroidx/media2/exoplayer/external/source/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/u$a;

.field private final b:Landroidx/media2/exoplayer/external/source/u;

.field private final c:Landroidx/media2/exoplayer/external/source/u$b;

.field private final d:Landroidx/media2/exoplayer/external/source/u$c;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/u;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/y;->a:Landroidx/media2/exoplayer/external/source/u$a;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/y;->b:Landroidx/media2/exoplayer/external/source/u;

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/y;->c:Landroidx/media2/exoplayer/external/source/u$b;

    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/y;->d:Landroidx/media2/exoplayer/external/source/u$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/y;->a:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/y;->b:Landroidx/media2/exoplayer/external/source/u;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/y;->c:Landroidx/media2/exoplayer/external/source/u$b;

    iget-object v3, p0, Landroidx/media2/exoplayer/external/source/y;->d:Landroidx/media2/exoplayer/external/source/u$c;

    .line 1507
    iget v4, v0, Landroidx/media2/exoplayer/external/source/u$a;->a:I

    iget-object v0, v0, Landroidx/media2/exoplayer/external/source/u$a;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-interface {v1, v4, v0, v2, v3}, Landroidx/media2/exoplayer/external/source/u;->b(ILandroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;)V

    return-void
.end method
