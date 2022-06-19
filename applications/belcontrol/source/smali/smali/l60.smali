.class public Ll60;
.super Lg60;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg60<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv70;)V
    .locals 0

    invoke-static {p1, p2}, Ls60;->c(Landroid/content/Context;Lv70;)Ls60;

    move-result-object p1

    invoke-virtual {p1}, Ls60;->e()Lr60;

    move-result-object p1

    invoke-direct {p0, p1}, Lg60;-><init>(Lp60;)V

    return-void
.end method


# virtual methods
.method public b(Lc70;)Z
    .locals 0

    iget-object p1, p1, Lc70;->j:Ls40;

    invoke-virtual {p1}, Ls40;->i()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic c(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ll60;->i(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method

.method public i(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
