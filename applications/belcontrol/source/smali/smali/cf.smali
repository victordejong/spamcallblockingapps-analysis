.class public Lcf;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcf$a;
    }
.end annotation


# instance fields
.field public final a:Lre;

.field public final b:Landroid/os/Handler;

.field public c:Lcf$a;


# direct methods
.method public constructor <init>(Lqe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lre;

    invoke-direct {v0, p1}, Lre;-><init>(Lqe;)V

    iput-object v0, p0, Lcf;->a:Lre;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcf;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a()Lme;
    .locals 1

    iget-object v0, p0, Lcf;->a:Lre;

    return-object v0
.end method

.method public b()V
    .locals 1

    sget-object v0, Lme$a;->ON_START:Lme$a;

    invoke-virtual {p0, v0}, Lcf;->f(Lme$a;)V

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lme$a;->ON_CREATE:Lme$a;

    invoke-virtual {p0, v0}, Lcf;->f(Lme$a;)V

    return-void
.end method

.method public d()V
    .locals 1

    sget-object v0, Lme$a;->ON_STOP:Lme$a;

    invoke-virtual {p0, v0}, Lcf;->f(Lme$a;)V

    sget-object v0, Lme$a;->ON_DESTROY:Lme$a;

    invoke-virtual {p0, v0}, Lcf;->f(Lme$a;)V

    return-void
.end method

.method public e()V
    .locals 1

    sget-object v0, Lme$a;->ON_START:Lme$a;

    invoke-virtual {p0, v0}, Lcf;->f(Lme$a;)V

    return-void
.end method

.method public final f(Lme$a;)V
    .locals 2

    iget-object v0, p0, Lcf;->c:Lcf$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcf$a;->run()V

    :cond_0
    new-instance v0, Lcf$a;

    iget-object v1, p0, Lcf;->a:Lre;

    invoke-direct {v0, v1, p1}, Lcf$a;-><init>(Lre;Lme$a;)V

    iput-object v0, p0, Lcf;->c:Lcf$a;

    iget-object p1, p0, Lcf;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
