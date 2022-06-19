.class public Lmv;
.super Luo;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Luo<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Lhp;

.field public l:Lph;


# direct methods
.method public constructor <init>(Lhp;)V
    .locals 0

    invoke-direct {p0}, Luo;-><init>()V

    iput-object p1, p0, Lmv;->k:Lhp;

    return-void
.end method


# virtual methods
.method public b(Lfp;)V
    .locals 1

    iget-object v0, p0, Lmv;->k:Lhp;

    invoke-interface {v0, p1}, Lhp;->b(Lfp;)V

    return-void
.end method

.method public e(Lhp$a;Les;J)Lfp;
    .locals 1

    iget-object v0, p0, Lmv;->k:Lhp;

    invoke-interface {v0, p1, p2, p3, p4}, Lhp;->e(Lhp$a;Les;J)Lfp;

    move-result-object p1

    return-object p1
.end method

.method public k(Lht;)V
    .locals 1

    invoke-super {p0, p1}, Luo;->k(Lht;)V

    iget-object p1, p0, Lmv;->k:Lhp;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Luo;->s(Ljava/lang/Object;Lhp;)V

    return-void
.end method

.method public bridge synthetic r(Ljava/lang/Object;Lhp;Lph;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lmv;->v(Ljava/lang/Void;Lhp;Lph;Ljava/lang/Object;)V

    return-void
.end method

.method public u()J
    .locals 3

    iget-object v0, p0, Lmv;->l:Lph;

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Lph$c;

    invoke-direct {v2}, Lph$c;-><init>()V

    invoke-virtual {v0, v1, v2}, Lph;->m(ILph$c;)Lph$c;

    move-result-object v0

    invoke-virtual {v0}, Lph$c;->c()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public v(Ljava/lang/Void;Lhp;Lph;Ljava/lang/Object;)V
    .locals 0

    iput-object p3, p0, Lmv;->l:Lph;

    invoke-virtual {p0, p3, p4}, Lpo;->l(Lph;Ljava/lang/Object;)V

    return-void
.end method
