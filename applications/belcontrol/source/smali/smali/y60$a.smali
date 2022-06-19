.class public Ly60$a;
.super Ls00;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly60;-><init>(Lz00;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls00<",
        "Lw60;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ly60;Lz00;)V
    .locals 0

    invoke-direct {p0, p2}, Ls00;-><init>(Lz00;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo`(`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lr10;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lw60;

    invoke-virtual {p0, p1, p2}, Ly60$a;->i(Lr10;Lw60;)V

    return-void
.end method

.method public i(Lr10;Lw60;)V
    .locals 3

    iget-object v0, p2, Lw60;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lp10;->w(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, Lp10;->o(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    iget p2, p2, Lw60;->b:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lp10;->s(IJ)V

    return-void
.end method
