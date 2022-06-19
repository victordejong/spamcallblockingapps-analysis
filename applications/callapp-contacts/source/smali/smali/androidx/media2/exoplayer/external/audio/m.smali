.class final synthetic Landroidx/media2/exoplayer/external/audio/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/audio/g$a;

.field private final b:I


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/audio/g$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/audio/m;->a:Landroidx/media2/exoplayer/external/audio/g$a;

    iput p2, p0, Landroidx/media2/exoplayer/external/audio/m;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media2/exoplayer/external/audio/m;->a:Landroidx/media2/exoplayer/external/audio/g$a;

    iget v1, p0, Landroidx/media2/exoplayer/external/audio/m;->b:I

    .line 1171
    iget-object v0, v0, Landroidx/media2/exoplayer/external/audio/g$a;->b:Landroidx/media2/exoplayer/external/audio/g;

    invoke-interface {v0, v1}, Landroidx/media2/exoplayer/external/audio/g;->b(I)V

    return-void
.end method
