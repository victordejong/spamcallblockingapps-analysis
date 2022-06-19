.class public final Lcom/nineoldandroids/a/h;
.super Lcom/nineoldandroids/a/l;
.source "ObjectAnimator.java"


# static fields
.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/nineoldandroids/util/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/String;

.field private k:Lcom/nineoldandroids/util/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    .line 44
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->a:Lcom/nineoldandroids/util/c;

    const-string v2, "alpha"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->b:Lcom/nineoldandroids/util/c;

    const-string v2, "pivotX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->c:Lcom/nineoldandroids/util/c;

    const-string v2, "pivotY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->d:Lcom/nineoldandroids/util/c;

    const-string v2, "translationX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->e:Lcom/nineoldandroids/util/c;

    const-string v2, "translationY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->f:Lcom/nineoldandroids/util/c;

    const-string v2, "rotation"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->g:Lcom/nineoldandroids/util/c;

    const-string v2, "rotationX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->h:Lcom/nineoldandroids/util/c;

    const-string v2, "rotationY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->i:Lcom/nineoldandroids/util/c;

    const-string v2, "scaleX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->j:Lcom/nineoldandroids/util/c;

    const-string v2, "scaleY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->k:Lcom/nineoldandroids/util/c;

    const-string v2, "scrollX"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->l:Lcom/nineoldandroids/util/c;

    const-string v2, "scrollY"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->m:Lcom/nineoldandroids/util/c;

    const-string v2, "x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    sget-object v1, Lcom/nineoldandroids/a/i;->n:Lcom/nineoldandroids/util/c;

    const-string v2, "y"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/nineoldandroids/a/l;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/nineoldandroids/a/l;-><init>()V

    .line 163
    iput-object p1, p0, Lcom/nineoldandroids/a/h;->i:Ljava/lang/Object;

    .line 164
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/a/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/a/h;
    .locals 1

    .line 231
    new-instance v0, Lcom/nineoldandroids/a/h;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/a/h;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p2}, Lcom/nineoldandroids/a/h;->a([F)V

    return-object v0
.end method


# virtual methods
.method public a(J)Lcom/nineoldandroids/a/h;
    .locals 0

    .line 427
    invoke-super {p0, p1, p2}, Lcom/nineoldandroids/a/l;->b(J)Lcom/nineoldandroids/a/l;

    return-object p0
.end method

.method public a()V
    .locals 0

    .line 385
    invoke-super {p0}, Lcom/nineoldandroids/a/l;->a()V

    return-void
.end method

.method a(F)V
    .locals 3

    .line 491
    invoke-super {p0, p1}, Lcom/nineoldandroids/a/l;->a(F)V

    .line 492
    iget-object p1, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/nineoldandroids/a/h;->i:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/a/j;->b(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lcom/nineoldandroids/util/c;)V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    aget-object v0, v0, v1

    .line 120
    invoke-virtual {v0}, Lcom/nineoldandroids/a/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/a/j;->a(Lcom/nineoldandroids/util/c;)V

    .line 122
    iget-object v3, p0, Lcom/nineoldandroids/a/h;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v2, p0, Lcom/nineoldandroids/a/h;->g:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nineoldandroids/a/h;->j:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/a/h;->k:Lcom/nineoldandroids/util/c;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/nineoldandroids/util/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nineoldandroids/a/h;->j:Ljava/lang/String;

    .line 128
    :cond_1
    iput-object p1, p0, Lcom/nineoldandroids/a/h;->k:Lcom/nineoldandroids/util/c;

    .line 130
    iput-boolean v1, p0, Lcom/nineoldandroids/a/h;->e:Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    aget-object v0, v0, v1

    .line 98
    invoke-virtual {v0}, Lcom/nineoldandroids/a/j;->c()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/a/j;->a(Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/nineoldandroids/a/h;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v2, p0, Lcom/nineoldandroids/a/h;->g:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/nineoldandroids/a/h;->j:Ljava/lang/String;

    .line 105
    iput-boolean v1, p0, Lcom/nineoldandroids/a/h;->e:Z

    return-void
.end method

.method public varargs a([F)V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/a/l;->a([F)V

    goto :goto_1

    .line 348
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nineoldandroids/a/h;->k:Lcom/nineoldandroids/util/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    new-array v2, v2, [Lcom/nineoldandroids/a/j;

    .line 349
    invoke-static {v0, p1}, Lcom/nineoldandroids/a/j;->a(Lcom/nineoldandroids/util/c;[F)Lcom/nineoldandroids/a/j;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v2}, Lcom/nineoldandroids/a/h;->a([Lcom/nineoldandroids/a/j;)V

    goto :goto_1

    :cond_2
    new-array v0, v2, [Lcom/nineoldandroids/a/j;

    .line 351
    iget-object v2, p0, Lcom/nineoldandroids/a/h;->j:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/nineoldandroids/a/j;->a(Ljava/lang/String;[F)Lcom/nineoldandroids/a/j;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/a/h;->a([Lcom/nineoldandroids/a/j;)V

    :goto_1
    return-void
.end method

.method public synthetic b(J)Lcom/nineoldandroids/a/l;
    .locals 0

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/a/h;->a(J)Lcom/nineoldandroids/a/h;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c()Lcom/nineoldandroids/a/a;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/nineoldandroids/a/h;->e()Lcom/nineoldandroids/a/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/nineoldandroids/a/h;->e()Lcom/nineoldandroids/a/h;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 4

    .line 402
    iget-boolean v0, p0, Lcom/nineoldandroids/a/h;->e:Z

    if-nez v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/nineoldandroids/a/h;->k:Lcom/nineoldandroids/util/c;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/nineoldandroids/b/a/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/a/h;->i:Ljava/lang/Object;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/nineoldandroids/a/h;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/nineoldandroids/a/h;->h:Ljava/util/Map;

    iget-object v1, p0, Lcom/nineoldandroids/a/h;->j:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/util/c;

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/a/h;->a(Lcom/nineoldandroids/util/c;)V

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 410
    iget-object v2, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/nineoldandroids/a/h;->i:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/a/j;->a(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    :cond_1
    invoke-super {p0}, Lcom/nineoldandroids/a/l;->d()V

    :cond_2
    return-void
.end method

.method public e()Lcom/nineoldandroids/a/h;
    .locals 1

    .line 500
    invoke-super {p0}, Lcom/nineoldandroids/a/l;->f()Lcom/nineoldandroids/a/l;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/h;

    return-object v0
.end method

.method public synthetic f()Lcom/nineoldandroids/a/l;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/nineoldandroids/a/h;->e()Lcom/nineoldandroids/a/h;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ObjectAnimator@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nineoldandroids/a/h;->i:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 509
    :goto_0
    iget-object v2, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nineoldandroids/a/h;->f:[Lcom/nineoldandroids/a/j;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/nineoldandroids/a/j;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
