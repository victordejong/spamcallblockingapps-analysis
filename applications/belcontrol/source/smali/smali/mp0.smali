.class public final Lmp0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmp0$a;
    }
.end annotation


# instance fields
.field public final a:Lkp0;

.field public final b:Lhq0;


# direct methods
.method public constructor <init>(Lkp0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmp0;->a:Lkp0;

    new-instance v0, Lhq0;

    invoke-interface {p1}, Lkp0;->b()Lcq0;

    move-result-object p1

    invoke-direct {v0, p1}, Lhq0;-><init>(Lcq0;)V

    iput-object v0, p0, Lmp0;->b:Lhq0;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lmp0;->a:Lkp0;

    invoke-interface {v0}, Lkp0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    iget-object v0, p0, Lmp0;->a:Lkp0;

    invoke-interface {v0}, Lkp0;->a()I

    move-result v0

    return v0
.end method

.method public b(Lvp0;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmp0;->d(Lvp0;)I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lmp0$a;

    invoke-direct {p1}, Lmp0$a;-><init>()V

    throw p1
.end method

.method public c()Lvp0$b;
    .locals 2

    new-instance v0, Lvp0$b;

    iget-object v1, p0, Lmp0;->b:Lhq0;

    invoke-direct {v0, v1}, Lvp0$b;-><init>(Lhq0;)V

    return-object v0
.end method

.method public d(Lvp0;)I
    .locals 1

    iget-object v0, p0, Lmp0;->a:Lkp0;

    invoke-interface {v0}, Lkp0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    iget-object v0, p0, Lmp0;->a:Lkp0;

    invoke-interface {v0, p1}, Lkp0;->c(Lvp0;)I

    move-result p1

    return p1
.end method
