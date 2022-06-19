.class public Lp8/g$b;
.super Lp8/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp8/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public r:Lq8/a;

.field public s:Lp8/b;

.field public t:F


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lp8/g;-><init>(Ljava/lang/String;Lp8/g$a;)V

    .line 2
    invoke-super {p0, p2}, Lp8/g;->f([F)V

    .line 3
    iget-object p1, p0, Lp8/g;->f:Lp8/d;

    check-cast p1, Lp8/b;

    iput-object p1, p0, Lp8/g$b;->s:Lp8/b;

    return-void
.end method

.method public varargs constructor <init>(Lq8/c;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lp8/g;-><init>(Lq8/c;Lp8/g$a;)V

    .line 5
    invoke-super {p0, p2}, Lp8/g;->f([F)V

    .line 6
    iget-object p2, p0, Lp8/g;->f:Lp8/d;

    check-cast p2, Lp8/b;

    iput-object p2, p0, Lp8/g$b;->s:Lp8/b;

    .line 7
    instance-of p1, p1, Lq8/a;

    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lp8/g;->b:Lq8/c;

    check-cast p1, Lq8/a;

    iput-object p1, p0, Lp8/g$b;->r:Lq8/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp8/g$b;->s:Lp8/b;

    invoke-virtual {v0, p1}, Lp8/b;->b(F)F

    move-result p1

    iput p1, p0, Lp8/g$b;->t:F

    return-void
.end method

.method public b()Lp8/g;
    .locals 2

    .line 1
    invoke-super {p0}, Lp8/g;->b()Lp8/g;

    move-result-object v0

    check-cast v0, Lp8/g$b;

    .line 2
    iget-object v1, v0, Lp8/g;->f:Lp8/d;

    check-cast v1, Lp8/b;

    iput-object v1, v0, Lp8/g$b;->s:Lp8/b;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lp8/g$b;->t:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lp8/g;->b()Lp8/g;

    move-result-object v0

    check-cast v0, Lp8/g$b;

    .line 2
    iget-object v1, v0, Lp8/g;->f:Lp8/d;

    check-cast v1, Lp8/b;

    iput-object v1, v0, Lp8/g$b;->s:Lp8/b;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp8/g$b;->r:Lq8/a;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lp8/g$b;->t:F

    invoke-virtual {v0, p1, v1}, Lq8/a;->c(Ljava/lang/Object;F)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lp8/g;->b:Lq8/c;

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Lp8/g$b;->t:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lq8/c;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lp8/g;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    .line 6
    :try_start_0
    iget-object v0, p0, Lp8/g;->h:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lp8/g$b;->t:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    .line 7
    iget-object v0, p0, Lp8/g;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lp8/g;->h:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs f([F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lp8/g;->f([F)V

    .line 2
    iget-object p1, p0, Lp8/g;->f:Lp8/d;

    check-cast p1, Lp8/b;

    iput-object p1, p0, Lp8/g$b;->s:Lp8/b;

    return-void
.end method

.method public g(Ljava/lang/Class;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp8/g;->b:Lq8/c;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lp8/g;->p:Ljava/util/HashMap;

    iget-object v1, p0, Lp8/g;->e:Ljava/lang/Class;

    const-string v2, "set"

    invoke-virtual {p0, p1, v0, v2, v1}, Lp8/g;->h(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lp8/g;->c:Ljava/lang/reflect/Method;

    return-void
.end method
