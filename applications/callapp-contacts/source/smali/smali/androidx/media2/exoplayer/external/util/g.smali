.class final synthetic Landroidx/media2/exoplayer/external/util/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/f$b;

.field private final b:Landroidx/media2/exoplayer/external/util/f$a;


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/util/f$b;Landroidx/media2/exoplayer/external/util/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/util/g;->a:Landroidx/media2/exoplayer/external/util/f$b;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/util/g;->b:Landroidx/media2/exoplayer/external/util/f$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media2/exoplayer/external/util/g;->a:Landroidx/media2/exoplayer/external/util/f$b;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/util/g;->b:Landroidx/media2/exoplayer/external/util/f$a;

    .line 1100
    iget-boolean v2, v0, Landroidx/media2/exoplayer/external/util/f$b;->b:Z

    if-nez v2, :cond_0

    .line 1101
    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/f$b;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Landroidx/media2/exoplayer/external/util/f$a;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
