.class Lc/f/a/g$b;
.super Lc/f/a/g;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/f/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field t:Lc/f/a/c;

.field u:F


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lc/f/a/g;-><init>(Ljava/lang/String;Lc/f/a/g$a;)V

    .line 2
    invoke-virtual {p0, p2}, Lc/f/a/g$b;->i([F)V

    return-void
.end method


# virtual methods
.method a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/f/a/g$b;->t:Lc/f/a/c;

    invoke-virtual {v0, p1}, Lc/f/a/c;->f(F)F

    move-result p1

    iput p1, p0, Lc/f/a/g$b;->u:F

    return-void
.end method

.method public bridge synthetic b()Lc/f/a/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/f/a/g$b;->j()Lc/f/a/g$b;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lc/f/a/g$b;->u:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/f/a/g$b;->j()Lc/f/a/g$b;

    move-result-object v0

    return-object v0
.end method

.method public varargs i([F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lc/f/a/g;->i([F)V

    .line 2
    iget-object p1, p0, Lc/f/a/g;->o:Lc/f/a/f;

    check-cast p1, Lc/f/a/c;

    iput-object p1, p0, Lc/f/a/g$b;->t:Lc/f/a/c;

    return-void
.end method

.method public j()Lc/f/a/g$b;
    .locals 2

    .line 1
    invoke-super {p0}, Lc/f/a/g;->b()Lc/f/a/g;

    move-result-object v0

    check-cast v0, Lc/f/a/g$b;

    .line 2
    iget-object v1, v0, Lc/f/a/g;->o:Lc/f/a/f;

    check-cast v1, Lc/f/a/c;

    iput-object v1, v0, Lc/f/a/g$b;->t:Lc/f/a/c;

    return-object v0
.end method
