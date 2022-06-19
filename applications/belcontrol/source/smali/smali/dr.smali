.class public final Ldr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lir;


# instance fields
.field public final a:Lir;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lir;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lir;",
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/offline/StreamKey;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldr;->a:Lir;

    iput-object p2, p0, Ldr;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Let$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Let$a<",
            "Lgr;",
            ">;"
        }
    .end annotation

    new-instance v0, Lno;

    iget-object v1, p0, Ldr;->a:Lir;

    invoke-interface {v1}, Lir;->a()Let$a;

    move-result-object v1

    iget-object v2, p0, Ldr;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lno;-><init>(Let$a;Ljava/util/List;)V

    return-object v0
.end method

.method public b(Ler;)Let$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ler;",
            ")",
            "Let$a<",
            "Lgr;",
            ">;"
        }
    .end annotation

    new-instance v0, Lno;

    iget-object v1, p0, Ldr;->a:Lir;

    invoke-interface {v1, p1}, Lir;->b(Ler;)Let$a;

    move-result-object p1

    iget-object v1, p0, Ldr;->b:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lno;-><init>(Let$a;Ljava/util/List;)V

    return-object v0
.end method
