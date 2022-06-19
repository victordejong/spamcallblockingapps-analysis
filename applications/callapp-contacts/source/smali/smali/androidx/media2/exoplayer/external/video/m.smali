.class final synthetic Landroidx/media2/exoplayer/external/video/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/video/g$a;

.field private final b:Landroid/view/Surface;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/video/g$a;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/video/m;->a:Landroidx/media2/exoplayer/external/video/g$a;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/video/m;->b:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/video/m;->a:Landroidx/media2/exoplayer/external/video/g$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/video/m;->b:Landroid/view/Surface;

    .line 1182
    iget-object v0, v0, Landroidx/media2/exoplayer/external/video/g$a;->b:Landroidx/media2/exoplayer/external/video/g;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/video/g;->a(Landroid/view/Surface;)V

    return-void
.end method
