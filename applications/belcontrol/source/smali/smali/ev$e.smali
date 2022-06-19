.class public Lev$e;
.super Lev$h0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev;->w0(F)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lev$h0<",
        "Landroidx/media2/common/SessionPlayer$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic m:F

.field public final synthetic n:Lev;


# direct methods
.method public constructor <init>(Lev;Ljava/util/concurrent/Executor;F)V
    .locals 0

    iput-object p1, p0, Lev$e;->n:Lev;

    iput p3, p0, Lev$e;->m:F

    invoke-direct {p0, p2}, Lev$h0;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public t()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lxv<",
            "Landroidx/media2/common/SessionPlayer$b;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lev$e;->n:Lev;

    iget v2, p0, Lev$e;->m:F

    invoke-virtual {v1, v2}, Lev;->x0(F)Lxv;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
