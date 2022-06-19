.class public Ley$h$g$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ley$h$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ley$h$g;


# direct methods
.method public constructor <init>(Ley$h$g;)V
    .locals 0

    iput-object p1, p0, Ley$h$g$a;->a:Ley$h$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Ley$h$g$a;->a:Ley$h$g;

    iget-object v0, p1, Ley$f;->a:Ldz$i;

    invoke-virtual {p1, v0}, Ley$h$g;->h(Ldz$i;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget-object v1, p0, Ley$h$g$a;->a:Ley$h$g;

    iget-object v1, v1, Ley$f;->a:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->x()Z

    move-result v1

    iget-object v2, p0, Ley$h$g$a;->a:Ley$h$g;

    iget-object v3, v2, Ley$h$g;->o:Ley$h;

    iget-object v3, v3, Ley$h;->j:Ley;

    iget-object v3, v3, Ley;->a:Ldz;

    iget-object v2, v2, Ley$f;->a:Ldz$i;

    if-eqz p1, :cond_0

    invoke-virtual {v3, v2}, Ldz;->c(Ldz$i;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v2}, Ldz;->p(Ldz$i;)V

    :goto_0
    iget-object v2, p0, Ley$h$g$a;->a:Ley$h$g;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, p1, v3}, Ley$h$g;->i(ZZ)V

    if-eqz v1, :cond_2

    iget-object v1, p0, Ley$h$g$a;->a:Ley$h$g;

    iget-object v1, v1, Ley$h$g;->o:Ley$h;

    iget-object v1, v1, Ley$h;->j:Ley;

    iget-object v1, v1, Ley;->d:Ldz$i;

    invoke-virtual {v1}, Ldz$i;->k()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Ley$h$g$a;->a:Ley$h$g;

    iget-object v2, v2, Ley$f;->a:Ldz$i;

    invoke-virtual {v2}, Ldz$i;->k()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldz$i;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eq v4, p1, :cond_1

    iget-object v4, p0, Ley$h$g$a;->a:Ley$h$g;

    iget-object v4, v4, Ley$h$g;->o:Ley$h;

    iget-object v4, v4, Ley$h;->j:Ley;

    iget-object v4, v4, Ley;->s:Ljava/util/Map;

    invoke-virtual {v3}, Ldz$i;->j()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ley$f;

    instance-of v4, v3, Ley$h$g;

    if-eqz v4, :cond_1

    check-cast v3, Ley$h$g;

    invoke-virtual {v3, p1, v0}, Ley$h$g;->i(ZZ)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ley$h$g$a;->a:Ley$h$g;

    iget-object v1, v0, Ley$h$g;->o:Ley$h;

    iget-object v0, v0, Ley$f;->a:Ldz$i;

    invoke-virtual {v1, v0, p1}, Ley$h;->i(Ldz$i;Z)V

    return-void
.end method
