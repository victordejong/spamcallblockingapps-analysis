.class public Lbu0;
.super Lqd;
.source ""


# instance fields
.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnd;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            "Ljava/util/List<",
            "Lcom/flexaspect/android/everycallcontrol/ui/base/BaseFragment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lqd;-><init>(Lnd;)V

    iput-object p2, p0, Lbu0;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    iget-object v0, p0, Lbu0;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public u(I)Landroidx/fragment/app/Fragment;
    .locals 1

    iget-object v0, p0, Lbu0;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method
