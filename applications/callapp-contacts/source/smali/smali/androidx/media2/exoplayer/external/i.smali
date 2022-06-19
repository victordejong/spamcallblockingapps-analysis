.class final synthetic Landroidx/media2/exoplayer/external/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media2/exoplayer/external/a$b;


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/i;->a:Z

    iput p2, p0, Landroidx/media2/exoplayer/external/i;->b:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/ae$b;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/i;->a:Z

    iget v1, p0, Landroidx/media2/exoplayer/external/i;->b:I

    .line 1263
    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/ae$b;->a(ZI)V

    return-void
.end method
