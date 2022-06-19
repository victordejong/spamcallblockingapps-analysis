.class final synthetic Landroidx/media2/exoplayer/external/source/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/af;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/af;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/ah;->a:Landroidx/media2/exoplayer/external/source/af;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/ah;->a:Landroidx/media2/exoplayer/external/source/af;

    .line 1188
    iget-boolean v1, v0, Landroidx/media2/exoplayer/external/source/af;->u:Z

    if-nez v1, :cond_0

    .line 1189
    iget-object v1, v0, Landroidx/media2/exoplayer/external/source/af;->f:Landroidx/media2/exoplayer/external/source/s$a;

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media2/exoplayer/external/source/s$a;

    .line 1190
    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/source/s$a;->a(Landroidx/media2/exoplayer/external/source/am;)V

    :cond_0
    return-void
.end method
