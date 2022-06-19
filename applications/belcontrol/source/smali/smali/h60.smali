.class public Lh60;
.super Lg60;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg60<",
        "Lb60;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv70;)V
    .locals 0

    invoke-static {p1, p2}, Ls60;->c(Landroid/content/Context;Lv70;)Ls60;

    move-result-object p1

    invoke-virtual {p1}, Ls60;->d()Lq60;

    move-result-object p1

    invoke-direct {p0, p1}, Lg60;-><init>(Lp60;)V

    return-void
.end method


# virtual methods
.method public b(Lc70;)Z
    .locals 1

    iget-object p1, p1, Lc70;->j:Ls40;

    invoke-virtual {p1}, Ls40;->b()Ly40;

    move-result-object p1

    sget-object v0, Ly40;->b:Ly40;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lb60;

    invoke-virtual {p0, p1}, Lh60;->i(Lb60;)Z

    move-result p1

    return p1
.end method

.method public i(Lb60;)Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    invoke-virtual {p1}, Lb60;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lb60;->d()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-virtual {p1}, Lb60;->a()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method
