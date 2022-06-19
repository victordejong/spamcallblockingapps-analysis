.class public Lp8/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp8/g$b;
    }
.end annotation


# static fields
.field public static final k:Lp8/h;

.field public static final l:Lp8/h;

.field public static m:[Ljava/lang/Class;

.field public static n:[Ljava/lang/Class;

.field public static o:[Ljava/lang/Class;

.field public static final p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lq8/c;

.field public c:Ljava/lang/reflect/Method;

.field public d:Ljava/lang/reflect/Method;

.field public e:Ljava/lang/Class;

.field public f:Lp8/d;

.field public final g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public final h:[Ljava/lang/Object;

.field public i:Lp8/h;

.field public j:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/lang/Double;

    const-class v2, Ljava/lang/Float;

    new-instance v3, Lg6/b;

    invoke-direct {v3}, Lg6/b;-><init>()V

    sput-object v3, Lp8/g;->k:Lp8/h;

    .line 2
    new-instance v3, Lc4/e;

    invoke-direct {v3}, Lc4/e;-><init>()V

    sput-object v3, Lp8/g;->l:Lp8/h;

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/Class;

    .line 3
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v7, 0x1

    aput-object v2, v4, v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x2

    aput-object v8, v4, v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x3

    aput-object v10, v4, v11

    const/4 v12, 0x4

    aput-object v1, v4, v12

    const/4 v13, 0x5

    aput-object v0, v4, v13

    sput-object v4, Lp8/g;->m:[Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v10, v4, v6

    aput-object v0, v4, v7

    aput-object v5, v4, v9

    aput-object v8, v4, v11

    aput-object v2, v4, v12

    aput-object v1, v4, v13

    .line 4
    sput-object v4, Lp8/g;->n:[Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v8, v3, v6

    aput-object v1, v3, v7

    aput-object v5, v3, v9

    aput-object v10, v3, v11

    aput-object v2, v3, v12

    aput-object v0, v3, v13

    .line 5
    sput-object v3, Lp8/g;->o:[Ljava/lang/Class;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lp8/g;->p:Ljava/util/HashMap;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lp8/g;->q:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lp8/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lp8/g;->c:Ljava/lang/reflect/Method;

    .line 3
    iput-object p2, p0, Lp8/g;->d:Ljava/lang/reflect/Method;

    .line 4
    iput-object p2, p0, Lp8/g;->f:Lp8/d;

    .line 5
    new-instance p2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p2, p0, Lp8/g;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lp8/g;->h:[Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lp8/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lq8/c;Lp8/g$a;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 9
    iput-object p2, p0, Lp8/g;->c:Ljava/lang/reflect/Method;

    .line 10
    iput-object p2, p0, Lp8/g;->d:Ljava/lang/reflect/Method;

    .line 11
    iput-object p2, p0, Lp8/g;->f:Lp8/d;

    .line 12
    new-instance p2, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object p2, p0, Lp8/g;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 13
    iput-object p2, p0, Lp8/g;->h:[Ljava/lang/Object;

    .line 14
    iput-object p1, p0, Lp8/g;->b:Lq8/c;

    if-eqz p1, :cond_0

    .line 15
    iget-object p1, p1, Lq8/c;->a:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lp8/g;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lp8/g;->f:Lp8/d;

    check-cast v0, Lp8/b;

    .line 2
    invoke-virtual {v0, p1}, Lp8/b;->b(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lp8/g;->j:Ljava/lang/Object;

    return-void
.end method

.method public b()Lp8/g;
    .locals 2

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp8/g;

    .line 2
    iget-object v1, p0, Lp8/g;->a:Ljava/lang/String;

    iput-object v1, v0, Lp8/g;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lp8/g;->b:Lq8/c;

    iput-object v1, v0, Lp8/g;->b:Lq8/c;

    .line 4
    iget-object v1, p0, Lp8/g;->f:Lp8/d;

    check-cast v1, Lp8/b;

    .line 5
    invoke-virtual {v1}, Lp8/b;->a()Lp8/b;

    move-result-object v1

    .line 6
    iput-object v1, v0, Lp8/g;->f:Lp8/d;

    .line 7
    iget-object v1, p0, Lp8/g;->i:Lp8/h;

    iput-object v1, v0, Lp8/g;->i:Lp8/h;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lp8/g;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lp8/g;->b()Lp8/g;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7

    .line 1
    iget-object v0, p0, Lp8/g;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 6
    :try_start_0
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p3

    .line 7
    :try_start_1
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 9
    :catch_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto :goto_3

    :cond_2
    new-array p3, v2, [Ljava/lang/Class;

    .line 10
    iget-object v3, p0, Lp8/g;->e:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    sget-object v3, Lp8/g;->m:[Ljava/lang/Class;

    goto :goto_1

    .line 12
    :cond_3
    iget-object v3, p0, Lp8/g;->e:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    sget-object v3, Lp8/g;->n:[Ljava/lang/Class;

    goto :goto_1

    .line 14
    :cond_4
    iget-object v3, p0, Lp8/g;->e:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    sget-object v3, Lp8/g;->o:[Ljava/lang/Class;

    goto :goto_1

    :cond_5
    new-array v3, v2, [Ljava/lang/Class;

    .line 16
    iget-object v4, p0, Lp8/g;->e:Ljava/lang/Class;

    aput-object v4, v3, v1

    .line 17
    :goto_1
    array-length v4, v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    aput-object v6, p3, v1

    .line 18
    :try_start_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 19
    iput-object v6, p0, Lp8/g;->e:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 20
    :catch_2
    :try_start_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 22
    iput-object v6, p0, Lp8/g;->e:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 23
    :cond_6
    iget-object p1, p0, Lp8/g;->e:Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_3
    move-object p1, v0

    :goto_4
    return-object p1
.end method

.method public e(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp8/g;->b:Lq8/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lp8/g;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lq8/c;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lp8/g;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    iget-object v0, p0, Lp8/g;->h:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lp8/g;->c()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 5
    iget-object v0, p0, Lp8/g;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lp8/g;->h:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs f([F)V
    .locals 7

    .line 1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lp8/g;->e:Ljava/lang/Class;

    .line 2
    array-length v0, p1

    const/4 v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lp8/c$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 4
    new-instance v0, Lp8/c$a;

    invoke-direct {v0, v2}, Lp8/c$a;-><init>(F)V

    .line 5
    aput-object v0, v1, v3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    aget p1, p1, v3

    .line 7
    new-instance v2, Lp8/c$a;

    invoke-direct {v2, v0, p1}, Lp8/c$a;-><init>(FF)V

    .line 8
    aput-object v2, v1, v4

    goto :goto_1

    .line 9
    :cond_0
    aget v5, p1, v3

    .line 10
    new-instance v6, Lp8/c$a;

    invoke-direct {v6, v2, v5}, Lp8/c$a;-><init>(FF)V

    .line 11
    aput-object v6, v1, v3

    :goto_0
    if-ge v4, v0, :cond_1

    int-to-float v2, v4

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 12
    aget v3, p1, v4

    .line 13
    new-instance v5, Lp8/c$a;

    invoke-direct {v5, v2, v3}, Lp8/c$a;-><init>(FF)V

    .line 14
    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_1
    :goto_1
    new-instance p1, Lp8/b;

    invoke-direct {p1, v1}, Lp8/b;-><init>([Lp8/c$a;)V

    .line 16
    iput-object p1, p0, Lp8/g;->f:Lp8/d;

    return-void
.end method

.method public g(Ljava/lang/Class;)V
    .locals 3

    .line 1
    sget-object v0, Lp8/g;->p:Ljava/util/HashMap;

    iget-object v1, p0, Lp8/g;->e:Ljava/lang/Class;

    const-string v2, "set"

    invoke-virtual {p0, p1, v0, v2, v1}, Lp8/g;->h(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lp8/g;->c:Ljava/lang/reflect/Method;

    return-void
.end method

.method public final h(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lp8/g;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lp8/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p0, p1, p3, p4}, Lp8/g;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object p1, p0, Lp8/g;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    iget-object p1, p0, Lp8/g;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lp8/g;->g:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lp8/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lp8/g;->f:Lp8/d;

    invoke-virtual {v1}, Lp8/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
