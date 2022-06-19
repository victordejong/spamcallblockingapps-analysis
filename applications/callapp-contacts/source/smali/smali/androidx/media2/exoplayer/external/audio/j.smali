.class final synthetic Landroidx/media2/exoplayer/external/audio/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/audio/g$a;

.field private final b:Landroidx/media2/exoplayer/external/Format;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/audio/g$a;Landroidx/media2/exoplayer/external/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/j;->a:Landroidx/media2/exoplayer/external/audio/g$a;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/audio/j;->b:Landroidx/media2/exoplayer/external/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/j;->a:Landroidx/media2/exoplayer/external/audio/g$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/audio/j;->b:Landroidx/media2/exoplayer/external/Format;

    .line 1137
    iget-object v0, v0, Landroidx/media2/exoplayer/external/audio/g$a;->b:Landroidx/media2/exoplayer/external/audio/g;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/audio/g;->b(Landroidx/media2/exoplayer/external/Format;)V

    return-void
.end method
