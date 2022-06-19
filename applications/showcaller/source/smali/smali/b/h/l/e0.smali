.class public Lb/h/l/e0;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/h/l/e0$a;,
        Lb/h/l/e0$n;,
        Lb/h/l/e0$m;,
        Lb/h/l/e0$e;,
        Lb/h/l/e0$d;,
        Lb/h/l/e0$c;,
        Lb/h/l/e0$f;,
        Lb/h/l/e0$b;,
        Lb/h/l/e0$k;,
        Lb/h/l/e0$j;,
        Lb/h/l/e0$i;,
        Lb/h/l/e0$h;,
        Lb/h/l/e0$g;,
        Lb/h/l/e0$l;
    }
.end annotation


# static fields
.field public static final a:Lb/h/l/e0;


# instance fields
.field private final b:Lb/h/l/e0$l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, Lb/h/l/e0$k;->r:Lb/h/l/e0;

    sput-object v0, Lb/h/l/e0;->a:Lb/h/l/e0;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lb/h/l/e0$l;->a:Lb/h/l/e0;

    sput-object v0, Lb/h/l/e0;->a:Lb/h/l/e0;

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lb/h/l/e0$k;

    invoke-direct {v0, p0, p1}, Lb/h/l/e0$k;-><init>(Lb/h/l/e0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lb/h/l/e0$j;

    invoke-direct {v0, p0, p1}, Lb/h/l/e0$j;-><init>(Lb/h/l/e0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, Lb/h/l/e0$i;

    invoke-direct {v0, p0, p1}, Lb/h/l/e0$i;-><init>(Lb/h/l/e0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 6
    new-instance v0, Lb/h/l/e0$h;

    invoke-direct {v0, p0, p1}, Lb/h/l/e0$h;-><init>(Lb/h/l/e0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    .line 7
    new-instance v0, Lb/h/l/e0$g;

    invoke-direct {v0, p0, p1}, Lb/h/l/e0$g;-><init>(Lb/h/l/e0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    goto :goto_0

    .line 8
    :cond_4
    new-instance p1, Lb/h/l/e0$l;

    invoke-direct {p1, p0}, Lb/h/l/e0$l;-><init>(Lb/h/l/e0;)V

    iput-object p1, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lb/h/l/e0;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p1, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    instance-of v1, p1, Lb/h/l/e0$k;

    if-eqz v1, :cond_0

    .line 12
    new-instance v0, Lb/h/l/e0$k;

    move-object v1, p1

    check-cast v1, Lb/h/l/e0$k;

    invoke-direct {v0, p0, v1}, Lb/h/l/e0$k;-><init>(Lb/h/l/e0;Lb/h/l/e0$k;)V

    iput-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 13
    instance-of v1, p1, Lb/h/l/e0$j;

    if-eqz v1, :cond_1

    .line 14
    new-instance v0, Lb/h/l/e0$j;

    move-object v1, p1

    check-cast v1, Lb/h/l/e0$j;

    invoke-direct {v0, p0, v1}, Lb/h/l/e0$j;-><init>(Lb/h/l/e0;Lb/h/l/e0$j;)V

    iput-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 15
    instance-of v1, p1, Lb/h/l/e0$i;

    if-eqz v1, :cond_2

    .line 16
    new-instance v0, Lb/h/l/e0$i;

    move-object v1, p1

    check-cast v1, Lb/h/l/e0$i;

    invoke-direct {v0, p0, v1}, Lb/h/l/e0$i;-><init>(Lb/h/l/e0;Lb/h/l/e0$i;)V

    iput-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 17
    instance-of v1, p1, Lb/h/l/e0$h;

    if-eqz v1, :cond_3

    .line 18
    new-instance v0, Lb/h/l/e0$h;

    move-object v1, p1

    check-cast v1, Lb/h/l/e0$h;

    invoke-direct {v0, p0, v1}, Lb/h/l/e0$h;-><init>(Lb/h/l/e0;Lb/h/l/e0$h;)V

    iput-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    .line 19
    instance-of v0, p1, Lb/h/l/e0$g;

    if-eqz v0, :cond_4

    .line 20
    new-instance v0, Lb/h/l/e0$g;

    move-object v1, p1

    check-cast v1, Lb/h/l/e0$g;

    invoke-direct {v0, p0, v1}, Lb/h/l/e0$g;-><init>(Lb/h/l/e0;Lb/h/l/e0$g;)V

    iput-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    goto :goto_0

    .line 21
    :cond_4
    new-instance v0, Lb/h/l/e0$l;

    invoke-direct {v0, p0}, Lb/h/l/e0$l;-><init>(Lb/h/l/e0;)V

    iput-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    .line 22
    :goto_0
    invoke-virtual {p1, p0}, Lb/h/l/e0$l;->e(Lb/h/l/e0;)V

    goto :goto_1

    .line 23
    :cond_5
    new-instance p1, Lb/h/l/e0$l;

    invoke-direct {p1, p0}, Lb/h/l/e0$l;-><init>(Lb/h/l/e0;)V

    iput-object p1, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    :goto_1
    return-void
.end method

.method static o(Lb/h/e/b;IIII)Lb/h/e/b;
    .locals 5

    .line 1
    iget v0, p0, Lb/h/e/b;->b:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    iget v2, p0, Lb/h/e/b;->c:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3
    iget v3, p0, Lb/h/e/b;->d:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4
    iget v4, p0, Lb/h/e/b;->e:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-static {v0, v2, v3, v1}, Lb/h/e/b;->b(IIII)Lb/h/e/b;

    move-result-object p0

    return-object p0
.end method

.method public static w(Landroid/view/WindowInsets;)Lb/h/l/e0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lb/h/l/e0;->x(Landroid/view/WindowInsets;Landroid/view/View;)Lb/h/l/e0;

    move-result-object p0

    return-object p0
.end method

.method public static x(Landroid/view/WindowInsets;Landroid/view/View;)Lb/h/l/e0;
    .locals 1

    .line 1
    new-instance v0, Lb/h/l/e0;

    invoke-static {p0}, Lb/h/k/h;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Lb/h/l/e0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1}, Lb/h/l/w;->K(Landroid/view/View;)Lb/h/l/e0;

    move-result-object p0

    invoke-virtual {v0, p0}, Lb/h/l/e0;->t(Lb/h/l/e0;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Lb/h/l/e0;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lb/h/l/e0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0}, Lb/h/l/e0$l;->a()Lb/h/l/e0;

    move-result-object v0

    return-object v0
.end method

.method public b()Lb/h/l/e0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0}, Lb/h/l/e0$l;->b()Lb/h/l/e0;

    move-result-object v0

    return-object v0
.end method

.method public c()Lb/h/l/e0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0}, Lb/h/l/e0$l;->c()Lb/h/l/e0;

    move-result-object v0

    return-object v0
.end method

.method d(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0, p1}, Lb/h/l/e0$l;->d(Landroid/view/View;)V

    return-void
.end method

.method public e()Lb/h/l/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0}, Lb/h/l/e0$l;->f()Lb/h/l/d;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lb/h/l/e0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lb/h/l/e0;

    .line 3
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    iget-object p1, p1, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-static {v0, p1}, Lb/h/k/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)Lb/h/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0, p1}, Lb/h/l/e0$l;->g(I)Lb/h/e/b;

    move-result-object p1

    return-object p1
.end method

.method public g()Lb/h/e/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0}, Lb/h/l/e0$l;->h()Lb/h/e/b;

    move-result-object v0

    return-object v0
.end method

.method public h()Lb/h/e/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0}, Lb/h/l/e0$l;->i()Lb/h/e/b;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/h/l/e0$l;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0}, Lb/h/l/e0$l;->k()Lb/h/e/b;

    move-result-object v0

    iget v0, v0, Lb/h/e/b;->e:I

    return v0
.end method

.method public j()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0}, Lb/h/l/e0$l;->k()Lb/h/e/b;

    move-result-object v0

    iget v0, v0, Lb/h/e/b;->b:I

    return v0
.end method

.method public k()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0}, Lb/h/l/e0$l;->k()Lb/h/e/b;

    move-result-object v0

    iget v0, v0, Lb/h/e/b;->d:I

    return v0
.end method

.method public l()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0}, Lb/h/l/e0$l;->k()Lb/h/e/b;

    move-result-object v0

    iget v0, v0, Lb/h/e/b;->c:I

    return v0
.end method

.method public m()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0}, Lb/h/l/e0$l;->k()Lb/h/e/b;

    move-result-object v0

    sget-object v1, Lb/h/e/b;->a:Lb/h/e/b;

    invoke-virtual {v0, v1}, Lb/h/e/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public n(IIII)Lb/h/l/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0, p1, p2, p3, p4}, Lb/h/l/e0$l;->m(IIII)Lb/h/l/e0;

    move-result-object p1

    return-object p1
.end method

.method public p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0}, Lb/h/l/e0$l;->n()Z

    move-result v0

    return v0
.end method

.method public q(IIII)Lb/h/l/e0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lb/h/l/e0$b;

    invoke-direct {v0, p0}, Lb/h/l/e0$b;-><init>(Lb/h/l/e0;)V

    .line 2
    invoke-static {p1, p2, p3, p4}, Lb/h/e/b;->b(IIII)Lb/h/e/b;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/h/l/e0$b;->c(Lb/h/e/b;)Lb/h/l/e0$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lb/h/l/e0$b;->a()Lb/h/l/e0;

    move-result-object p1

    return-object p1
.end method

.method r([Lb/h/e/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0, p1}, Lb/h/l/e0$l;->p([Lb/h/e/b;)V

    return-void
.end method

.method s(Lb/h/e/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0, p1}, Lb/h/l/e0$l;->q(Lb/h/e/b;)V

    return-void
.end method

.method t(Lb/h/l/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0, p1}, Lb/h/l/e0$l;->r(Lb/h/l/e0;)V

    return-void
.end method

.method u(Lb/h/e/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    invoke-virtual {v0, p1}, Lb/h/l/e0$l;->s(Lb/h/e/b;)V

    return-void
.end method

.method public v()Landroid/view/WindowInsets;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/h/l/e0;->b:Lb/h/l/e0$l;

    instance-of v1, v0, Lb/h/l/e0$g;

    if-eqz v1, :cond_0

    check-cast v0, Lb/h/l/e0$g;

    iget-object v0, v0, Lb/h/l/e0$g;->i:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
