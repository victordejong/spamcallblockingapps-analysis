.class public Landroidx/core/view/ac$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field final a:Landroidx/core/view/ac;


# direct methods
.method constructor <init>(Landroidx/core/view/ac;)V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput-object p1, p0, Landroidx/core/view/ac$e;->a:Landroidx/core/view/ac;

    return-void
.end method


# virtual methods
.method a(IIII)Landroidx/core/view/ac;
    .locals 0

    .line 637
    sget-object p1, Landroidx/core/view/ac;->a:Landroidx/core/view/ac;

    return-object p1
.end method

.method a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroidx/core/view/ac;
    .locals 1

    .line 589
    iget-object v0, p0, Landroidx/core/view/ac$e;->a:Landroidx/core/view/ac;

    return-object v0
.end method

.method public d()Landroidx/core/view/ac;
    .locals 1

    .line 594
    iget-object v0, p0, Landroidx/core/view/ac$e;->a:Landroidx/core/view/ac;

    return-object v0
.end method

.method e()Landroidx/core/view/c;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 644
    :cond_0
    instance-of v1, p1, Landroidx/core/view/ac$e;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 645
    :cond_1
    check-cast p1, Landroidx/core/view/ac$e;

    .line 646
    invoke-virtual {p0}, Landroidx/core/view/ac$e;->a()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/ac$e;->a()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 647
    invoke-virtual {p0}, Landroidx/core/view/ac$e;->b()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/ac$e;->b()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 648
    invoke-virtual {p0}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    invoke-virtual {p0}, Landroidx/core/view/ac$e;->h()Landroidx/core/graphics/b;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/ac$e;->h()Landroidx/core/graphics/b;

    move-result-object v3

    invoke-static {v1, v3}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 650
    invoke-virtual {p0}, Landroidx/core/view/ac$e;->e()Landroidx/core/view/c;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/ac$e;->e()Landroidx/core/view/c;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/core/e/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public f()Landroidx/core/view/ac;
    .locals 1

    .line 604
    iget-object v0, p0, Landroidx/core/view/ac$e;->a:Landroidx/core/view/ac;

    return-object v0
.end method

.method public g()Landroidx/core/graphics/b;
    .locals 1

    .line 609
    sget-object v0, Landroidx/core/graphics/b;->a:Landroidx/core/graphics/b;

    return-object v0
.end method

.method h()Landroidx/core/graphics/b;
    .locals 1

    .line 614
    sget-object v0, Landroidx/core/graphics/b;->a:Landroidx/core/graphics/b;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 656
    invoke-virtual {p0}, Landroidx/core/view/ac$e;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/ac$e;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 657
    invoke-virtual {p0}, Landroidx/core/view/ac$e;->h()Landroidx/core/graphics/b;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/core/view/ac$e;->e()Landroidx/core/view/c;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 656
    invoke-static {v0}, Landroidx/core/e/a;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Landroidx/core/graphics/b;
    .locals 1

    .line 626
    invoke-virtual {p0}, Landroidx/core/view/ac$e;->g()Landroidx/core/graphics/b;

    move-result-object v0

    return-object v0
.end method
