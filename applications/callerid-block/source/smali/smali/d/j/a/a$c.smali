.class Ld/j/a/a$c;
.super Ld/h/m/c0/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/j/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Ld/j/a/a;


# direct methods
.method constructor <init>(Ld/j/a/a;)V
    .locals 0

    iput-object p1, p0, Ld/j/a/a$c;->b:Ld/j/a/a;

    invoke-direct {p0}, Ld/h/m/c0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ld/h/m/c0/c;
    .locals 1

    iget-object v0, p0, Ld/j/a/a$c;->b:Ld/j/a/a;

    invoke-virtual {v0, p1}, Ld/j/a/a;->J(I)Ld/h/m/c0/c;

    move-result-object p1

    invoke-static {p1}, Ld/h/m/c0/c;->Q(Ld/h/m/c0/c;)Ld/h/m/c0/c;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Ld/h/m/c0/c;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ld/j/a/a$c;->b:Ld/j/a/a;

    iget p1, p1, Ld/j/a/a;->k:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ld/j/a/a$c;->b:Ld/j/a/a;

    iget p1, p1, Ld/j/a/a;->l:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Ld/j/a/a$c;->a(I)Ld/h/m/c0/c;

    move-result-object p1

    return-object p1
.end method

.method public e(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Ld/j/a/a$c;->b:Ld/j/a/a;

    invoke-virtual {v0, p1, p2, p3}, Ld/j/a/a;->R(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
