.class public Lxd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lqe;


# instance fields
.field public a:Lre;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lxd;->a:Lre;

    return-void
.end method


# virtual methods
.method public a(Lme$a;)V
    .locals 1

    iget-object v0, p0, Lxd;->a:Lre;

    invoke-virtual {v0, p1}, Lre;->i(Lme$a;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lxd;->a:Lre;

    if-nez v0, :cond_0

    new-instance v0, Lre;

    invoke-direct {v0, p0}, Lre;-><init>(Lqe;)V

    iput-object v0, p0, Lxd;->a:Lre;

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lxd;->a:Lre;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLifecycle()Lme;
    .locals 1

    invoke-virtual {p0}, Lxd;->b()V

    iget-object v0, p0, Lxd;->a:Lre;

    return-object v0
.end method
