.class public Loi1$b;
.super Loi1;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loi1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public l:Lki1;

.field public m:F


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Loi1;-><init>(Ljava/lang/String;Loi1$a;)V

    invoke-virtual {p0, p2}, Loi1$b;->i([F)V

    return-void
.end method


# virtual methods
.method public b(F)V
    .locals 1

    iget-object v0, p0, Loi1$b;->l:Lki1;

    invoke-virtual {v0, p1}, Lki1;->f(F)F

    move-result p1

    iput p1, p0, Loi1$b;->m:F

    return-void
.end method

.method public bridge synthetic c()Loi1;
    .locals 1

    invoke-virtual {p0}, Loi1$b;->j()Loi1$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Loi1$b;->j()Loi1$b;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Loi1$b;->m:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public varargs i([F)V
    .locals 0

    invoke-super {p0, p1}, Loi1;->i([F)V

    iget-object p1, p0, Loi1;->d:Lni1;

    check-cast p1, Lki1;

    iput-object p1, p0, Loi1$b;->l:Lki1;

    return-void
.end method

.method public j()Loi1$b;
    .locals 2

    invoke-super {p0}, Loi1;->c()Loi1;

    move-result-object v0

    check-cast v0, Loi1$b;

    iget-object v1, v0, Loi1;->d:Lni1;

    check-cast v1, Lki1;

    iput-object v1, v0, Loi1$b;->l:Lki1;

    return-object v0
.end method
