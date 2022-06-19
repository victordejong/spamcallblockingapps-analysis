.class public Lp7/d$f;
.super Lp7/d$d;
.source "SourceFile"

# interfaces
.implements Lk7/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp7/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public m:Z

.field public n:Ll7/a;

.field public final synthetic o:Lp7/d;


# direct methods
.method public constructor <init>(Lp7/d;Lp7/d$h;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp7/d$f;->o:Lp7/d;

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lp7/d$d;-><init>(Lp7/d$h;J)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lp7/d$d;->k:Z

    return-void
.end method


# virtual methods
.method public a()Lk7/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lp7/d$f;->o:Lp7/d;

    .line 2
    iget-object v0, v0, Lp7/d;->d:Lk7/h;

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public g(Ll7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp7/d$f;->n:Ll7/a;

    return-void
.end method

.method public isOpen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k(Lk7/l;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lk7/l;->n()V

    return-void
.end method

.method public m(Ll7/f;)V
    .locals 0

    return-void
.end method

.method public n(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lp7/d$d;->n(Ljava/lang/Exception;)V

    .line 2
    iget-boolean v0, p0, Lp7/d$f;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lp7/d$f;->m:Z

    .line 4
    iget-object v0, p0, Lp7/d$f;->n:Ll7/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, Ll7/a;->a(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
