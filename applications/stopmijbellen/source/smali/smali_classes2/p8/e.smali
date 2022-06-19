.class public final Lp8/e;
.super Lp8/i;
.source "SourceFile"


# static fields
.field public static final A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lq8/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public x:Ljava/lang/Object;

.field public y:Ljava/lang/String;

.field public z:Lq8/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lp8/e;->A:Ljava/util/Map;

    .line 2
    sget-object v1, Lp8/f;->a:Lq8/c;

    const-string v2, "alpha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lp8/f;->b:Lq8/c;

    const-string v2, "pivotX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lp8/f;->c:Lq8/c;

    const-string v2, "pivotY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lp8/f;->d:Lq8/c;

    const-string v2, "translationX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lp8/f;->e:Lq8/c;

    const-string v2, "translationY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v1, Lp8/f;->f:Lq8/c;

    const-string v2, "rotation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v1, Lp8/f;->g:Lq8/c;

    const-string v2, "rotationX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lp8/f;->h:Lq8/c;

    const-string v2, "rotationY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lp8/f;->i:Lq8/c;

    const-string v2, "scaleX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v1, Lp8/f;->j:Lq8/c;

    const-string v2, "scaleY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    sget-object v1, Lp8/f;->k:Lq8/c;

    const-string v2, "scrollX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lp8/f;->l:Lq8/c;

    const-string v2, "scrollY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v1, Lp8/f;->m:Lq8/c;

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v1, Lp8/f;->n:Lq8/c;

    const-string v2, "y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp8/i;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lp8/i;-><init>()V

    .line 3
    iput-object p1, p0, Lp8/e;->x:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lp8/i;->n:[Lp8/g;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 5
    aget-object p1, p1, v0

    .line 6
    iget-object v1, p1, Lp8/g;->a:Ljava/lang/String;

    .line 7
    iput-object p2, p1, Lp8/g;->a:Ljava/lang/String;

    .line 8
    iget-object v2, p0, Lp8/i;->o:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p0, Lp8/i;->o:Ljava/util/HashMap;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    iput-object p2, p0, Lp8/e;->y:Ljava/lang/String;

    .line 11
    iput-boolean v0, p0, Lp8/i;->j:Z

    return-void
.end method

.method public static varargs l(Ljava/lang/Object;Ljava/lang/String;[F)Lp8/e;
    .locals 1

    .line 1
    new-instance v0, Lp8/e;

    invoke-direct {v0, p0, p1}, Lp8/e;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0, p2}, Lp8/e;->n([F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a()Lp8/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp8/e;->k()Lp8/e;

    move-result-object v0

    return-object v0
.end method

.method public b(F)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lp8/i;->b(F)V

    .line 2
    iget-object p1, p0, Lp8/i;->n:[Lp8/g;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 3
    iget-object v1, p0, Lp8/i;->n:[Lp8/g;

    aget-object v1, v1, v0

    iget-object v2, p0, Lp8/e;->x:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lp8/g;->e(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp8/e;->k()Lp8/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Lp8/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lp8/e;->k()Lp8/e;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lp8/i;->j:Z

    if-nez v0, :cond_a

    .line 2
    iget-object v0, p0, Lp8/e;->z:Lq8/c;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lr8/a;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lp8/e;->x:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_2

    sget-object v0, Lp8/e;->A:Ljava/util/Map;

    iget-object v2, p0, Lp8/e;->y:Ljava/lang/String;

    move-object v3, v0

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, p0, Lp8/e;->y:Ljava/lang/String;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq8/c;

    .line 4
    iget-object v2, p0, Lp8/i;->n:[Lp8/g;

    if-eqz v2, :cond_0

    .line 5
    aget-object v2, v2, v1

    .line 6
    iget-object v3, v2, Lp8/g;->a:Ljava/lang/String;

    .line 7
    iput-object v0, v2, Lp8/g;->b:Lq8/c;

    .line 8
    iget-object v4, p0, Lp8/i;->o:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v3, p0, Lp8/i;->o:Ljava/util/HashMap;

    iget-object v4, p0, Lp8/e;->y:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    iget-object v2, p0, Lp8/e;->z:Lq8/c;

    if-eqz v2, :cond_1

    .line 11
    iget-object v2, v0, Lq8/c;->a:Ljava/lang/String;

    .line 12
    iput-object v2, p0, Lp8/e;->y:Ljava/lang/String;

    .line 13
    :cond_1
    iput-object v0, p0, Lp8/e;->z:Lq8/c;

    .line 14
    iput-boolean v1, p0, Lp8/i;->j:Z

    .line 15
    :cond_2
    iget-object v0, p0, Lp8/i;->n:[Lp8/g;

    array-length v0, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 16
    iget-object v3, p0, Lp8/i;->n:[Lp8/g;

    aget-object v3, v3, v2

    iget-object v4, p0, Lp8/e;->x:Ljava/lang/Object;

    .line 17
    iget-object v5, v3, Lp8/g;->b:Lq8/c;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 18
    :try_start_0
    invoke-virtual {v5, v4}, Lq8/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object v5, v3, Lp8/g;->f:Lp8/d;

    iget-object v5, v5, Lp8/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lp8/c;

    .line 20
    iget-boolean v8, v7, Lp8/c;->c:Z

    if-nez v8, :cond_3

    .line 21
    iget-object v8, v3, Lp8/g;->b:Lq8/c;

    invoke-virtual {v8, v4}, Lq8/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lp8/c;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 22
    :catch_0
    iget-object v5, v3, Lp8/g;->b:Lq8/c;

    .line 23
    iget-object v5, v5, Lq8/c;->a:Ljava/lang/String;

    .line 24
    invoke-static {v4}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    iput-object v6, v3, Lp8/g;->b:Lq8/c;

    .line 26
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 27
    iget-object v7, v3, Lp8/g;->c:Ljava/lang/reflect/Method;

    if-nez v7, :cond_5

    .line 28
    invoke-virtual {v3, v5}, Lp8/g;->g(Ljava/lang/Class;)V

    .line 29
    :cond_5
    iget-object v7, v3, Lp8/g;->f:Lp8/d;

    iget-object v7, v7, Lp8/d;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lp8/c;

    .line 30
    iget-boolean v9, v8, Lp8/c;->c:Z

    if-nez v9, :cond_6

    .line 31
    iget-object v9, v3, Lp8/g;->d:Ljava/lang/reflect/Method;

    if-nez v9, :cond_7

    .line 32
    sget-object v9, Lp8/g;->q:Ljava/util/HashMap;

    const-string v10, "get"

    invoke-virtual {v3, v5, v9, v10, v6}, Lp8/g;->h(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, v3, Lp8/g;->d:Ljava/lang/reflect/Method;

    .line 33
    :cond_7
    :try_start_1
    iget-object v9, v3, Lp8/g;->d:Ljava/lang/reflect/Method;

    new-array v10, v1, [Ljava/lang/Object;

    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lp8/c;->c(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    .line 34
    invoke-virtual {v8}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    goto :goto_2

    :catch_2
    move-exception v8

    .line 35
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 36
    :cond_9
    invoke-super {p0}, Lp8/i;->g()V

    :cond_a
    return-void
.end method

.method public k()Lp8/e;
    .locals 1

    .line 1
    invoke-super {p0}, Lp8/i;->e()Lp8/i;

    move-result-object v0

    check-cast v0, Lp8/e;

    return-object v0
.end method

.method public m(J)Lp8/e;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 1
    iput-wide p1, p0, Lp8/i;->k:J

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animators cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs n([F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp8/i;->n:[Lp8/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_5

    .line 2
    array-length v3, p1

    if-nez v3, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    array-length v3, v0

    if-nez v3, :cond_2

    new-array v0, v2, [Lp8/g;

    .line 4
    sget-object v2, Lp8/g;->k:Lp8/h;

    .line 5
    new-instance v2, Lp8/g$b;

    const-string v3, ""

    invoke-direct {v2, v3, p1}, Lp8/g$b;-><init>(Ljava/lang/String;[F)V

    aput-object v2, v0, v1

    .line 6
    invoke-virtual {p0, v0}, Lp8/i;->i([Lp8/g;)V

    goto :goto_0

    .line 7
    :cond_2
    aget-object v0, v0, v1

    .line 8
    invoke-virtual {v0, p1}, Lp8/g;->f([F)V

    .line 9
    :goto_0
    iput-boolean v1, p0, Lp8/i;->j:Z

    goto :goto_2

    .line 10
    :cond_3
    :goto_1
    iget-object v0, p0, Lp8/e;->z:Lq8/c;

    if-eqz v0, :cond_4

    new-array v2, v2, [Lp8/g;

    .line 11
    sget-object v3, Lp8/g;->k:Lp8/h;

    .line 12
    new-instance v3, Lp8/g$b;

    invoke-direct {v3, v0, p1}, Lp8/g$b;-><init>(Lq8/c;[F)V

    aput-object v3, v2, v1

    .line 13
    invoke-virtual {p0, v2}, Lp8/i;->i([Lp8/g;)V

    goto :goto_2

    :cond_4
    new-array v0, v2, [Lp8/g;

    .line 14
    iget-object v2, p0, Lp8/e;->y:Ljava/lang/String;

    sget-object v3, Lp8/g;->k:Lp8/h;

    .line 15
    new-instance v3, Lp8/g$b;

    invoke-direct {v3, v2, p1}, Lp8/g$b;-><init>(Ljava/lang/String;[F)V

    aput-object v3, v0, v1

    .line 16
    invoke-virtual {p0, v0}, Lp8/i;->i([Lp8/g;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ObjectAnimator@"

    .line 1
    invoke-static {v0}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp8/e;->x:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lp8/i;->n:[Lp8/g;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lp8/i;->n:[Lp8/g;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, "\n    "

    .line 4
    invoke-static {v0, v2}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lp8/i;->n:[Lp8/g;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lp8/g;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
