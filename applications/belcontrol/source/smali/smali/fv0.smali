.class public abstract Lfv0;
.super Lge;
.source ""


# instance fields
.field public d:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lge;-><init>(Landroid/app/Application;)V

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lfv0;->d:Lve;

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Lfv0;->f:Lve;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 0

    invoke-super {p0}, Ldf;->e()V

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lfv0;->d:Lve;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lve;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public j(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lfv0;->k(Ljava/lang/Throwable;)V

    return-void
.end method

.method public k(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lfv0;->f:Lve;

    invoke-virtual {v0, p1}, Lve;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Lfv0;->d:Lve;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lve;->j(Ljava/lang/Object;)V

    return-void
.end method
