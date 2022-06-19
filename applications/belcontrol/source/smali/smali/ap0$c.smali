.class public final Lap0$c;
.super Lxo0;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lap0;->l(Lpi0;)Lxo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpi0;


# direct methods
.method public constructor <init>(Lpi0;Lpi0;)V
    .locals 0

    iput-object p2, p0, Lap0$c;->a:Lpi0;

    invoke-direct {p0, p1}, Lxo0;-><init>(Lpi0;)V

    return-void
.end method


# virtual methods
.method public a(Lyl0;)V
    .locals 0

    iget-object p1, p0, Lap0$c;->a:Lpi0;

    invoke-static {p1}, Lap0;->r(Lpi0;)V

    return-void
.end method

.method public b(Lyl0;Lri0;)V
    .locals 0

    iget-object p1, p0, Lap0$c;->a:Lpi0;

    invoke-static {p1, p2}, Lap0;->s(Lpi0;Lri0;)V

    return-void
.end method

.method public c(Lyl0;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p2, :cond_3

    invoke-static {p2}, Lap0;->i(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "post"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "cancel"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lap0$c;->a:Lpi0;

    invoke-static {p1}, Lap0;->r(Lpi0;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lap0$c;->a:Lpi0;

    new-instance p2, Lri0;

    const-string v0, "UnknownError"

    invoke-direct {p2, v0}, Lri0;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lap0;->s(Lpi0;Lri0;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p2}, Lap0;->k(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lap0$c;->a:Lpi0;

    invoke-static {p2, p1}, Lap0;->t(Lpi0;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
