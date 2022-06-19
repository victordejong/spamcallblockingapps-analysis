.class public Lrb;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrb$c;,
        Lrb$b;,
        Lrb$d;,
        Lrb$a;,
        Lrb$h;,
        Lrb$g;,
        Lrb$f;,
        Lrb$e;,
        Lrb$i;
    }
.end annotation


# static fields
.field public static final b:Lrb;


# instance fields
.field public final a:Lrb$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrb$a;

    invoke-direct {v0}, Lrb$a;-><init>()V

    invoke-virtual {v0}, Lrb$a;->a()Lrb;

    move-result-object v0

    invoke-virtual {v0}, Lrb;->a()Lrb;

    move-result-object v0

    invoke-virtual {v0}, Lrb;->b()Lrb;

    move-result-object v0

    invoke-virtual {v0}, Lrb;->c()Lrb;

    move-result-object v0

    sput-object v0, Lrb;->b:Lrb;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    new-instance v0, Lrb$h;

    invoke-direct {v0, p0, p1}, Lrb$h;-><init>(Lrb;Landroid/view/WindowInsets;)V

    :goto_0
    iput-object v0, p0, Lrb;->a:Lrb$i;

    goto :goto_1

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    new-instance v0, Lrb$g;

    invoke-direct {v0, p0, p1}, Lrb$g;-><init>(Lrb;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    new-instance v0, Lrb$f;

    invoke-direct {v0, p0, p1}, Lrb$f;-><init>(Lrb;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    new-instance v0, Lrb$e;

    invoke-direct {v0, p0, p1}, Lrb$e;-><init>(Lrb;Landroid/view/WindowInsets;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lrb$i;

    invoke-direct {p1, p0}, Lrb$i;-><init>(Lrb;)V

    iput-object p1, p0, Lrb;->a:Lrb$i;

    :goto_1
    return-void
.end method

.method public constructor <init>(Lrb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    iget-object p1, p1, Lrb;->a:Lrb$i;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    instance-of v1, p1, Lrb$h;

    if-eqz v1, :cond_0

    new-instance v0, Lrb$h;

    check-cast p1, Lrb$h;

    invoke-direct {v0, p0, p1}, Lrb$h;-><init>(Lrb;Lrb$h;)V

    :goto_0
    iput-object v0, p0, Lrb;->a:Lrb$i;

    goto :goto_2

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    instance-of v1, p1, Lrb$g;

    if-eqz v1, :cond_1

    new-instance v0, Lrb$g;

    check-cast p1, Lrb$g;

    invoke-direct {v0, p0, p1}, Lrb$g;-><init>(Lrb;Lrb$g;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    instance-of v1, p1, Lrb$f;

    if-eqz v1, :cond_2

    new-instance v0, Lrb$f;

    check-cast p1, Lrb$f;

    invoke-direct {v0, p0, p1}, Lrb$f;-><init>(Lrb;Lrb$f;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    instance-of v0, p1, Lrb$e;

    if-eqz v0, :cond_3

    new-instance v0, Lrb$e;

    check-cast p1, Lrb$e;

    invoke-direct {v0, p0, p1}, Lrb$e;-><init>(Lrb;Lrb$e;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lrb$i;

    invoke-direct {p1, p0}, Lrb$i;-><init>(Lrb;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lrb$i;

    invoke-direct {p1, p0}, Lrb$i;-><init>(Lrb;)V

    :goto_1
    iput-object p1, p0, Lrb;->a:Lrb$i;

    :goto_2
    return-void
.end method

.method public static l(Lt8;IIII)Lt8;
    .locals 5

    iget v0, p0, Lt8;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lt8;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lt8;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Lt8;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lt8;->a(IIII)Lt8;

    move-result-object p0

    return-object p0
.end method

.method public static p(Landroid/view/WindowInsets;)Lrb;
    .locals 1

    new-instance v0, Lrb;

    invoke-static {p0}, Loa;->d(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Lrb;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method


# virtual methods
.method public a()Lrb;
    .locals 1

    iget-object v0, p0, Lrb;->a:Lrb$i;

    invoke-virtual {v0}, Lrb$i;->a()Lrb;

    move-result-object v0

    return-object v0
.end method

.method public b()Lrb;
    .locals 1

    iget-object v0, p0, Lrb;->a:Lrb$i;

    invoke-virtual {v0}, Lrb$i;->b()Lrb;

    move-result-object v0

    return-object v0
.end method

.method public c()Lrb;
    .locals 1

    iget-object v0, p0, Lrb;->a:Lrb$i;

    invoke-virtual {v0}, Lrb$i;->c()Lrb;

    move-result-object v0

    return-object v0
.end method

.method public d()Lt8;
    .locals 1

    iget-object v0, p0, Lrb;->a:Lrb$i;

    invoke-virtual {v0}, Lrb$i;->e()Lt8;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    invoke-virtual {p0}, Lrb;->i()Lt8;

    move-result-object v0

    iget v0, v0, Lt8;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lrb;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lrb;

    iget-object v0, p0, Lrb;->a:Lrb$i;

    iget-object p1, p1, Lrb;->a:Lrb$i;

    invoke-static {v0, p1}, Lja;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lrb;->i()Lt8;

    move-result-object v0

    iget v0, v0, Lt8;->a:I

    return v0
.end method

.method public g()I
    .locals 1

    invoke-virtual {p0}, Lrb;->i()Lt8;

    move-result-object v0

    iget v0, v0, Lt8;->c:I

    return v0
.end method

.method public h()I
    .locals 1

    invoke-virtual {p0}, Lrb;->i()Lt8;

    move-result-object v0

    iget v0, v0, Lt8;->b:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lrb;->a:Lrb$i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lrb$i;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public i()Lt8;
    .locals 1

    iget-object v0, p0, Lrb;->a:Lrb$i;

    invoke-virtual {v0}, Lrb$i;->g()Lt8;

    move-result-object v0

    return-object v0
.end method

.method public j()Z
    .locals 2

    invoke-virtual {p0}, Lrb;->i()Lt8;

    move-result-object v0

    sget-object v1, Lt8;->e:Lt8;

    invoke-virtual {v0, v1}, Lt8;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public k(IIII)Lrb;
    .locals 1

    iget-object v0, p0, Lrb;->a:Lrb$i;

    invoke-virtual {v0, p1, p2, p3, p4}, Lrb$i;->h(IIII)Lrb;

    move-result-object p1

    return-object p1
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lrb;->a:Lrb$i;

    invoke-virtual {v0}, Lrb$i;->i()Z

    move-result v0

    return v0
.end method

.method public n(IIII)Lrb;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lrb$a;

    invoke-direct {v0, p0}, Lrb$a;-><init>(Lrb;)V

    invoke-static {p1, p2, p3, p4}, Lt8;->a(IIII)Lt8;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrb$a;->c(Lt8;)Lrb$a;

    invoke-virtual {v0}, Lrb$a;->a()Lrb;

    move-result-object p1

    return-object p1
.end method

.method public o()Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lrb;->a:Lrb$i;

    instance-of v1, v0, Lrb$e;

    if-eqz v1, :cond_0

    check-cast v0, Lrb$e;

    iget-object v0, v0, Lrb$e;->b:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
