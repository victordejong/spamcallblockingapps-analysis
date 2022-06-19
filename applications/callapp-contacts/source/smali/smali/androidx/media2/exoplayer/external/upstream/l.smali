.class final synthetic Landroidx/media2/exoplayer/external/upstream/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/upstream/j$b;

.field private final b:Landroidx/media2/exoplayer/external/upstream/j;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/upstream/j$b;Landroidx/media2/exoplayer/external/upstream/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/upstream/l;->a:Landroidx/media2/exoplayer/external/upstream/j$b;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/upstream/l;->b:Landroidx/media2/exoplayer/external/upstream/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media2/exoplayer/external/upstream/l;->b:Landroidx/media2/exoplayer/external/upstream/j;

    .line 1461
    invoke-static {v0}, Landroidx/media2/exoplayer/external/upstream/j$b;->b(Landroidx/media2/exoplayer/external/upstream/j;)V

    return-void
.end method
