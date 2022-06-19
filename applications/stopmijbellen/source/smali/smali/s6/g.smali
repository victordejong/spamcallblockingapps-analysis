.class public final Ls6/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/widget/l;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls6/o;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls6/o;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls6/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lt6/a;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lt6/a;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    sget-object v0, Lt6/b;->c:Lt6/b;

    sget-object v1, Ls6/a;->a:Ls6/a;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    .line 7
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 8
    new-instance v6, Landroidx/appcompat/widget/l;

    invoke-direct {v6, v2}, Landroidx/appcompat/widget/l;-><init>(Ljava/util/Map;)V

    iput-object v6, p0, Ls6/g;->a:Landroidx/appcompat/widget/l;

    const/4 v2, 0x1

    .line 9
    iput-boolean v2, p0, Ls6/g;->c:Z

    .line 10
    iput-object v3, p0, Ls6/g;->d:Ljava/util/List;

    .line 11
    iput-object v4, p0, Ls6/g;->e:Ljava/util/List;

    .line 12
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sget-object v3, Lu6/f;->C:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v3, Lu6/c;->a:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    sget-object v3, Lu6/f;->q:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v3, Lu6/f;->f:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v3, Lu6/f;->c:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v3, Lu6/f;->d:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v3, Lu6/f;->e:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v3, Lu6/f;->j:Landroid/support/v4/media/a;

    .line 23
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Long;

    .line 24
    new-instance v7, Lu6/h;

    invoke-direct {v7, v4, v5, v3}, Lu6/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Landroid/support/v4/media/a;)V

    .line 25
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Double;

    .line 27
    new-instance v7, Ls6/c;

    invoke-direct {v7, p0}, Ls6/c;-><init>(Ls6/g;)V

    .line 28
    new-instance v8, Lu6/h;

    invoke-direct {v8, v4, v5, v7}, Lu6/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Landroid/support/v4/media/a;)V

    .line 29
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Float;

    .line 31
    new-instance v7, Ls6/d;

    invoke-direct {v7, p0}, Ls6/d;-><init>(Ls6/g;)V

    .line 32
    new-instance v8, Lu6/h;

    invoke-direct {v8, v4, v5, v7}, Lu6/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Landroid/support/v4/media/a;)V

    .line 33
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v4, Lu6/f;->m:Ls6/o;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v4, Lu6/f;->g:Ls6/o;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v4, Lu6/f;->h:Ls6/o;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    new-instance v5, Ls6/e;

    invoke-direct {v5, v3}, Ls6/e;-><init>(Landroid/support/v4/media/a;)V

    .line 39
    new-instance v7, Ls6/n;

    invoke-direct {v7, v5}, Ls6/n;-><init>(Landroid/support/v4/media/a;)V

    .line 40
    new-instance v5, Lu6/g;

    invoke-direct {v5, v4, v7}, Lu6/g;-><init>(Ljava/lang/Class;Landroid/support/v4/media/a;)V

    .line 41
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    const-class v4, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 43
    new-instance v5, Ls6/f;

    invoke-direct {v5, v3}, Ls6/f;-><init>(Landroid/support/v4/media/a;)V

    .line 44
    new-instance v3, Ls6/n;

    invoke-direct {v3, v5}, Ls6/n;-><init>(Landroid/support/v4/media/a;)V

    .line 45
    new-instance v5, Lu6/g;

    invoke-direct {v5, v4, v3}, Lu6/g;-><init>(Ljava/lang/Class;Landroid/support/v4/media/a;)V

    .line 46
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v3, Lu6/f;->i:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v3, Lu6/f;->n:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v3, Lu6/f;->r:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v3, Lu6/f;->s:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-class v3, Ljava/math/BigDecimal;

    sget-object v4, Lu6/f;->o:Landroid/support/v4/media/a;

    .line 52
    new-instance v5, Lu6/g;

    invoke-direct {v5, v3, v4}, Lu6/g;-><init>(Ljava/lang/Class;Landroid/support/v4/media/a;)V

    .line 53
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    const-class v3, Ljava/math/BigInteger;

    sget-object v4, Lu6/f;->p:Landroid/support/v4/media/a;

    .line 55
    new-instance v5, Lu6/g;

    invoke-direct {v5, v3, v4}, Lu6/g;-><init>(Ljava/lang/Class;Landroid/support/v4/media/a;)V

    .line 56
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v3, Lu6/f;->t:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v3, Lu6/f;->u:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v3, Lu6/f;->w:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v3, Lu6/f;->x:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v3, Lu6/f;->A:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v3, Lu6/f;->v:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v3, Lu6/f;->b:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v3, Lu6/b;->a:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v3, Lu6/f;->z:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v3, Lu6/e;->a:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v3, Lu6/d;->a:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v3, Lu6/f;->y:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v3, Lu6/a;->a:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v3, Lu6/f;->a:Ls6/o;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v3, Ll1/p;

    invoke-direct {v3, v6}, Ll1/p;-><init>(Landroidx/appcompat/widget/l;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v3, Lc4/e;

    const/4 v4, 0x0

    invoke-direct {v3, v6, v4}, Lc4/e;-><init>(Landroidx/appcompat/widget/l;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v3, Lx2/f;

    const/4 v4, 0x5

    invoke-direct {v3, v6, v4}, Lx2/f;-><init>(Ljava/lang/Object;I)V

    .line 74
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v4, Lu6/f;->D:Ls6/o;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v4, Lh8/k;

    invoke-direct {v4, v6, v1, v0, v3}, Lh8/k;-><init>(Landroidx/appcompat/widget/l;Ls6/b;Lt6/b;Lx2/f;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ls6/g;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ls6/i;Lw6/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p2, Lw6/b;->f:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p2, Lw6/b;->f:Z

    .line 3
    iget-boolean v1, p2, Lw6/b;->g:Z

    .line 4
    iget-boolean v2, p0, Ls6/g;->c:Z

    .line 5
    iput-boolean v2, p2, Lw6/b;->g:Z

    .line 6
    iget-boolean v2, p2, Lw6/b;->i:Z

    const/4 v3, 0x0

    .line 7
    iput-boolean v3, p2, Lw6/b;->i:Z

    .line 8
    :try_start_0
    sget-object v3, Lu6/f;->B:Landroid/support/v4/media/a;

    check-cast v3, Lu6/f$u;

    .line 9
    invoke-virtual {v3, p2, p1}, Lu6/f$u;->N(Lw6/b;Ls6/i;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    iput-boolean v0, p2, Lw6/b;->f:Z

    .line 11
    iput-boolean v1, p2, Lw6/b;->g:Z

    .line 12
    iput-boolean v2, p2, Lw6/b;->i:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception p1

    .line 14
    new-instance v3, Lcom/google/gson/JsonIOException;

    invoke-direct {v3, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :goto_0
    iput-boolean v0, p2, Lw6/b;->f:Z

    .line 16
    iput-boolean v1, p2, Lw6/b;->g:Z

    .line 17
    iput-boolean v2, p2, Lw6/b;->i:Z

    .line 18
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls6/g;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls6/g;->a:Landroidx/appcompat/widget/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
