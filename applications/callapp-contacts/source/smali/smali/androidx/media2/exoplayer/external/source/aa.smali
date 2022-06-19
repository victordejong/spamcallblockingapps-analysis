.class final synthetic Landroidx/media2/exoplayer/external/source/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/source/u$a;

.field private final b:Landroidx/media2/exoplayer/external/source/u;

.field private final c:Landroidx/media2/exoplayer/external/source/u$b;

.field private final d:Landroidx/media2/exoplayer/external/source/u$c;

.field private final e:Ljava/io/IOException;

.field private final f:Z


# direct methods
.method constructor <init>(Landroidx/media2/exoplayer/external/source/u$a;Landroidx/media2/exoplayer/external/source/u;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/source/aa;->a:Landroidx/media2/exoplayer/external/source/u$a;

    iput-object p2, p0, Landroidx/media2/exoplayer/external/source/aa;->b:Landroidx/media2/exoplayer/external/source/u;

    iput-object p3, p0, Landroidx/media2/exoplayer/external/source/aa;->c:Landroidx/media2/exoplayer/external/source/u$b;

    iput-object p4, p0, Landroidx/media2/exoplayer/external/source/aa;->d:Landroidx/media2/exoplayer/external/source/u$c;

    iput-object p5, p0, Landroidx/media2/exoplayer/external/source/aa;->e:Ljava/io/IOException;

    iput-boolean p6, p0, Landroidx/media2/exoplayer/external/source/aa;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Landroidx/media2/exoplayer/external/source/aa;->a:Landroidx/media2/exoplayer/external/source/u$a;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/source/aa;->b:Landroidx/media2/exoplayer/external/source/u;

    iget-object v4, p0, Landroidx/media2/exoplayer/external/source/aa;->c:Landroidx/media2/exoplayer/external/source/u$b;

    iget-object v5, p0, Landroidx/media2/exoplayer/external/source/aa;->d:Landroidx/media2/exoplayer/external/source/u$c;

    iget-object v6, p0, Landroidx/media2/exoplayer/external/source/aa;->e:Ljava/io/IOException;

    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/source/aa;->f:Z

    .line 1656
    iget v2, v0, Landroidx/media2/exoplayer/external/source/u$a;->a:I

    iget-object v3, v0, Landroidx/media2/exoplayer/external/source/u$a;->b:Landroidx/media2/exoplayer/external/source/t$a;

    invoke-interface/range {v1 .. v7}, Landroidx/media2/exoplayer/external/source/u;->a(ILandroidx/media2/exoplayer/external/source/t$a;Landroidx/media2/exoplayer/external/source/u$b;Landroidx/media2/exoplayer/external/source/u$c;Ljava/io/IOException;Z)V

    return-void
.end method
