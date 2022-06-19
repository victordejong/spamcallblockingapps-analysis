.class public Lof1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lof1$c;,
        Lof1$d;,
        Lof1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field public static final h:[Ljava/lang/Object;


# instance fields
.field public final a:Lmf1;

.field public final b:Lof1$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lof1$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lof1$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lof1$d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lof1<",
            "TT;>.c;>;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lof1<",
            "TT;>.c;>;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lof1;->h:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmf1;Lof1$b;Lof1$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmf1;",
            "Lof1$b<",
            "TT;>;",
            "Lof1$d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ltf1;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Ltf1;->a(Ljava/lang/Object;)V

    invoke-static {p3}, Ltf1;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lof1;->a:Lmf1;

    iput-object p2, p0, Lof1;->b:Lof1$b;

    iput-object p3, p0, Lof1;->c:Lof1$d;

    sget-object p2, Lue1;->a:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p3}, Lof1;->d(Lof1$d;)V

    :cond_0
    new-instance p2, Lof1$a;

    invoke-direct {p2, p0}, Lof1$a;-><init>(Lof1;)V

    invoke-interface {p1, p2}, Lmf1;->a(Lmf1$a;)V

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lof1;->d:Ljava/util/LinkedList;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lof1;->e:Ljava/util/LinkedList;

    return-void
.end method

.method public static synthetic a()[Ljava/lang/Object;
    .locals 1

    sget-object v0, Lof1;->h:[Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic b(Lof1;)V
    .locals 0

    invoke-virtual {p0}, Lof1;->j()V

    return-void
.end method

.method public static synthetic c(Lof1;)Z
    .locals 0

    iget-boolean p0, p0, Lof1;->f:Z

    return p0
.end method

.method public static f(Lmf1;Lof1$b;Lof1$d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmf1;",
            "Lof1$b<",
            "TT;>;",
            "Lof1$d<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p2}, Lof1$d;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    new-instance v2, Lof1;

    invoke-direct {v2, p0, p1, p2}, Lof1;-><init>(Lmf1;Lof1$b;Lof1$d;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Class;

    const/4 p1, 0x0

    aput-object v0, p0, p1

    invoke-static {v1, p0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final d(Lof1$d;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lof1$d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lof1$d;->b()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1, v3}, Lof1$d;->a(Ljava/lang/reflect/Method;)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot proxy a tracker with nonpostponable method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cannot proxy a tracker with non-void, non-boolean return types."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lof1;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lof1;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public final g(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lof1;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lof1;->d:Ljava/util/LinkedList;

    new-instance v2, Lof1$c;

    invoke-direct {v2, p0, p1, p2, v1}, Lof1$c;-><init>(Lof1;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lof1$a;)V

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lof1;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lof1;->e:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lof1;->e:Ljava/util/LinkedList;

    new-instance v2, Lof1$c;

    invoke-direct {v2, p0, p1, p2, v1}, Lof1$c;-><init>(Lof1;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lof1$a;)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method public final h(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lue1;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lof1;->c:Lof1$d;

    invoke-interface {v0, p1}, Lof1$d;->a(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot queue method call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Luf1;->a(Ljava/lang/Exception;)V

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final i(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lof1;->c:Lof1$d;

    invoke-interface {v1}, Lof1$d;->b()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getClass"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const-string v2, "toString"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_1

    const-class p2, Lof1;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    iget-boolean v0, p0, Lof1;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lof1;->g:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lof1;->e()V

    invoke-virtual {p0, p1}, Lof1;->h(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v0, p0, Lof1;->a:Lmf1;

    invoke-interface {v0}, Lmf1;->getStatus()Lmf1$b;

    move-result-object v0

    sget-object v1, Lmf1$b;->b:Lmf1$b;

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lof1;->j()V

    iget-object v0, p0, Lof1;->g:Ljava/lang/Object;

    if-eqz v0, :cond_4

    invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object v0, p0, Lof1;->a:Lmf1;

    invoke-interface {v0}, Lmf1;->getStatus()Lmf1$b;

    move-result-object v0

    sget-object v1, Lmf1$b;->a:Lmf1$b;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lof1;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lof1;->g:Ljava/lang/Object;

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0, p1, p2}, Lof1;->g(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0, p1}, Lof1;->h(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lof1;->i(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Luf1;->a(Ljava/lang/Exception;)V

    invoke-virtual {p0, p2}, Lof1;->h(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final j()V
    .locals 12

    iget-boolean v0, p0, Lof1;->f:Z

    const-string v1, "OnOffTrackerProxy"

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lof1;->b:Lof1$b;

    invoke-interface {v0}, Lof1$b;->create()Lvf1;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lvf1;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lof1;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lue1;->a:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Could not create instance"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lof1;->f:Z

    :cond_1
    iget-object v0, p0, Lof1;->g:Ljava/lang/Object;

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lof1;->d:Ljava/util/LinkedList;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lof1;->e:Ljava/util/LinkedList;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lof1$c;

    :try_start_1
    invoke-static {v4}, Lof1$c;->a(Lof1$c;)[Ljava/lang/ref/WeakReference;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Lof1$c;->a(Lof1$c;)[Ljava/lang/ref/WeakReference;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v8, v7, :cond_4

    aget-object v10, v6, v8

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v5, v9

    add-int/lit8 v8, v8, 0x1

    move v9, v11

    goto :goto_3

    :cond_4
    invoke-static {v4}, Lof1$c;->b(Lof1$c;)Ljava/lang/reflect/Method;

    move-result-object v6

    iget-object v7, p0, Lof1;->g:Ljava/lang/Object;

    invoke-virtual {v6, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    sget-object v6, Lue1;->a:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    move-object v5, v6

    :goto_4
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not resurrect call to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lof1$c;->b(Lof1$c;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    goto :goto_1

    :cond_7
    return-void
.end method
