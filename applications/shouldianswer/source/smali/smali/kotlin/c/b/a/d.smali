.class public abstract Lkotlin/c/b/a/d;
.super Lkotlin/c/b/a/a;
.source "ContinuationImpl.kt"


# instance fields
.field private transient a:Lkotlin/c/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/c/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/c/f;


# direct methods
.method public constructor <init>(Lkotlin/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 102
    invoke-interface {p1}, Lkotlin/c/c;->a()Lkotlin/c/f;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lkotlin/c/b/a/d;-><init>(Lkotlin/c/c;Lkotlin/c/f;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/c/c;Lkotlin/c/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/c/c<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/c/f;",
            ")V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lkotlin/c/b/a/a;-><init>(Lkotlin/c/c;)V

    iput-object p2, p0, Lkotlin/c/b/a/d;->b:Lkotlin/c/f;

    return-void
.end method


# virtual methods
.method public a()Lkotlin/c/f;
    .locals 1

    .line 105
    iget-object v0, p0, Lkotlin/c/b/a/d;->b:Lkotlin/c/f;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    return-object v0
.end method

.method protected b()V
    .locals 3

    .line 116
    iget-object v0, p0, Lkotlin/c/b/a/d;->a:Lkotlin/c/c;

    if-eqz v0, :cond_1

    .line 117
    move-object v1, p0

    check-cast v1, Lkotlin/c/b/a/d;

    if-eq v0, v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lkotlin/c/b/a/d;->a()Lkotlin/c/f;

    move-result-object v1

    sget-object v2, Lkotlin/c/d;->a:Lkotlin/c/d$b;

    check-cast v2, Lkotlin/c/f$c;

    invoke-interface {v1, v2}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_0
    check-cast v1, Lkotlin/c/d;

    invoke-interface {v1, v0}, Lkotlin/c/d;->b(Lkotlin/c/c;)V

    .line 120
    :cond_1
    sget-object v0, Lkotlin/c/b/a/c;->a:Lkotlin/c/b/a/c;

    check-cast v0, Lkotlin/c/c;

    iput-object v0, p0, Lkotlin/c/b/a/d;->a:Lkotlin/c/c;

    return-void
.end method

.method public final f()Lkotlin/c/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/c/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lkotlin/c/b/a/d;->a:Lkotlin/c/c;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {p0}, Lkotlin/c/b/a/d;->a()Lkotlin/c/f;

    move-result-object v0

    sget-object v1, Lkotlin/c/d;->a:Lkotlin/c/d$b;

    check-cast v1, Lkotlin/c/f$c;

    invoke-interface {v0, v1}, Lkotlin/c/f;->get(Lkotlin/c/f$c;)Lkotlin/c/f$b;

    move-result-object v0

    check-cast v0, Lkotlin/c/d;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lkotlin/c/c;

    invoke-interface {v0, v1}, Lkotlin/c/d;->a(Lkotlin/c/c;)Lkotlin/c/c;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lkotlin/c/c;

    .line 113
    :goto_0
    iput-object v0, p0, Lkotlin/c/b/a/d;->a:Lkotlin/c/c;

    :goto_1
    return-object v0
.end method
