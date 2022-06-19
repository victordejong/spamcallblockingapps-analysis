.class public Lev$e0$h;
.super Lev$h0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lev$e0;->c(Lfv;Landroidx/media2/common/MediaItem;II)V
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
.field public final synthetic m:Landroidx/media2/common/MediaItem;

.field public final synthetic n:Lev$e0;


# direct methods
.method public constructor <init>(Lev$e0;Ljava/util/concurrent/Executor;Landroidx/media2/common/MediaItem;)V
    .locals 0

    iput-object p1, p0, Lev$e0$h;->n:Lev$e0;

    iput-object p3, p0, Lev$e0$h;->m:Landroidx/media2/common/MediaItem;

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

    iget-object v1, p0, Lev$e0$h;->n:Lev$e0;

    iget-object v1, v1, Lev$e0;->a:Lev;

    iget-object v2, p0, Lev$e0$h;->m:Landroidx/media2/common/MediaItem;

    invoke-virtual {v1, v2}, Lev;->u0(Landroidx/media2/common/MediaItem;)Lxv;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
