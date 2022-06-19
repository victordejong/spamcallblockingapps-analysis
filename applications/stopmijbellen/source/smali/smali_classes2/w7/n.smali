.class public Lw7/n;
.super Lw7/p$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw7/p$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public n:Lw7/p$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw7/p$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic o:Ls7/a;

.field public final synthetic p:Lw7/p;


# direct methods
.method public constructor <init>(Lw7/p;Ljava/lang/Runnable;Ls7/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lw7/n;->p:Lw7/p;

    iput-object p3, p0, Lw7/n;->o:Ls7/a;

    invoke-direct {p0, p1, p2}, Lw7/p$a;-><init>(Lw7/p;Ljava/lang/Runnable;)V

    .line 2
    iput-object p0, p0, Lw7/n;->n:Lw7/p$a;

    return-void
.end method


# virtual methods
.method public u(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lw7/q$a;

    .line 2
    iget-object v0, p1, Lw7/q$a;->a:Lk7/m;

    .line 3
    iput-object v0, p0, Lw7/p$a;->l:Lk7/m;

    .line 4
    iget-object v0, p0, Lw7/p$a;->m:Lw7/p;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-wide v0, p1, Lw7/q$a;->b:J

    .line 6
    iget-object p1, p0, Lw7/p$a;->l:Lk7/m;

    instance-of v2, p1, Lk7/p;

    if-nez v2, :cond_0

    .line 7
    new-instance v2, Lk7/r;

    invoke-direct {v2}, Lk7/r;-><init>()V

    .line 8
    invoke-virtual {v2, p1}, Lk7/r;->o(Lk7/m;)V

    goto :goto_0

    .line 9
    :cond_0
    move-object v2, p1

    check-cast v2, Lk7/p;

    .line 10
    :goto_0
    iput-object v2, p0, Lw7/p$a;->l:Lk7/m;

    .line 11
    new-instance p1, Lw7/o;

    invoke-direct {p1, p0, v0, v1}, Lw7/o;-><init>(Lw7/p$a;J)V

    invoke-interface {v2, p1}, Lk7/p;->l(Lk7/p$a;)V

    .line 12
    iget-object p1, p0, Lw7/n;->o:Ls7/a;

    iget-object v0, p0, Lw7/p$a;->l:Lk7/m;

    invoke-interface {p1, v0}, Ls7/a;->a(Lk7/m;)Lm7/c;

    move-result-object p1

    new-instance v0, Lw7/m;

    invoke-direct {v0, p0}, Lw7/m;-><init>(Lw7/n;)V

    check-cast p1, Lm7/g;

    invoke-virtual {p1, v0}, Lm7/g;->k(Lm7/d;)V

    return-void
.end method
