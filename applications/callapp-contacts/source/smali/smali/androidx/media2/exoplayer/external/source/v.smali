.class final synthetic Landroidx/media2/exoplayer/external/source/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/u$a;

.field private final b:Landroidx/media2/exoplayer/external/source/u;

.field private final c:Landroidx/media2/exoplayer/external/source/t$a;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/u;Landroidx/media2/exoplayer/external/source/t$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/v;->a:Landroidx/media2/exoplayer/external/source/u$a;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/v;->b:Landroidx/media2/exoplayer/external/source/u;

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/v;->c:Landroidx/media2/exoplayer/external/source/t$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/v;->a:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/v;->b:Landroidx/media2/exoplayer/external/source/u;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/source/v;->c:Landroidx/media2/exoplayer/external/source/t$a;

    .line 1379
    iget v0, v0, Landroidx/media2/exoplayer/external/source/u$a;->a:I

    invoke-interface {v1, v0, v2}, Landroidx/media2/exoplayer/external/source/u;->a(ILandroidx/media2/exoplayer/external/source/t$a;)V

    return-void
.end method
