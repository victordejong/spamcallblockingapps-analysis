.class public Ldv;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldv$b;,
        Ldv$a;
    }
.end annotation


# instance fields
.field public final a:Ldv$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lev;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldv$b;

    invoke-direct {v0, p1, p2}, Ldv$b;-><init>(Landroid/content/Context;Lev;)V

    iput-object v0, p0, Ldv;->a:Ldv$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Ldv;->a:Ldv$a;

    invoke-interface {v0}, Ldv$a;->close()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Ldv;->a:Ldv$a;

    invoke-interface {v0}, Ldv$a;->onPause()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Ldv;->a:Ldv$a;

    invoke-interface {v0}, Ldv$a;->a()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Ldv;->a:Ldv$a;

    invoke-interface {v0}, Ldv$a;->b()V

    return-void
.end method
