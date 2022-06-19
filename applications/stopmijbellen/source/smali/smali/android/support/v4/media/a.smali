.class public abstract Landroid/support/v4/media/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz4/d;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static m(La7/a;La7/b;)Landroid/support/v4/media/a;
    .locals 1

    .line 1
    sget-object v0, Ly/d;->i:Lm5/b;

    .line 2
    iget-boolean v0, v0, Lm5/b;->a:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, La7/i;

    invoke-direct {v0, p0, p1}, La7/i;-><init>(La7/a;La7/b;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Method called before OM SDK activation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract A(I)V
.end method

.method public abstract B(Landroid/graphics/Typeface;Z)V
.end method

.method public C(Ld2/q;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public D(Ld2/q;)V
    .locals 0

    return-void
.end method

.method public E(Ld2/q;)V
    .locals 0

    return-void
.end method

.method public abstract F(Ld2/q;)V
.end method

.method public abstract G(Ld2/s;)V
.end method

.method public abstract H(Ljava/lang/String;)V
.end method

.method public abstract I(Ljava/lang/Runnable;)V
.end method

.method public abstract J(Landroid/view/View;)V
.end method

.method public abstract K(Landroid/view/View;)V
.end method

.method public abstract L()V
.end method

.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lz4/d;->c(Ljava/lang/Class;)Lw5/b;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lw5/b;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lz4/d;->d(Ljava/lang/Class;)Lw5/b;

    move-result-object p1

    invoke-interface {p1}, Lw5/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public abstract f(Landroid/view/View;La7/e;Ljava/lang/String;)V
.end method

.method public abstract g(IJ)V
.end method

.method public abstract h(I)V
.end method

.method public i(ILjava/lang/Number;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/media/a;->g(IJ)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/media/a;->h(I)V

    :goto_0
    return-void
.end method

.method public abstract j(ILjava/lang/String;)V
.end method

.method public k(ILjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/a;->j(ILjava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/media/a;->h(I)V

    :goto_0
    return-void
.end method

.method public abstract l()V
.end method

.method public abstract n()J
.end method

.method public abstract o(Ljava/lang/Runnable;)V
.end method

.method public abstract p()J
.end method

.method public abstract q()V
.end method

.method public r()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract t(FFFF)Landroid/graphics/Path;
.end method

.method public u()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract v()Z
.end method

.method public w(Ld2/q;)V
    .locals 0

    return-void
.end method

.method public x(Ld2/q;)V
    .locals 0

    return-void
.end method

.method public y(Ld2/q;)V
    .locals 0

    return-void
.end method

.method public abstract z()V
.end method
