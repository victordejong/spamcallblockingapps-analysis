.class public Lorg/slf4j/helpers/d;
.super Ljava/lang/Object;
.source "SubstituteLogger.java"

# interfaces
.implements Lorg/slf4j/b;


# instance fields
.field private final d:Ljava/lang/String;

.field private volatile e:Lorg/slf4j/b;

.field private f:Ljava/lang/Boolean;

.field private g:Ljava/lang/reflect/Method;

.field private h:Lorg/slf4j/event/a;

.field private i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/c;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Queue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/c;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/slf4j/helpers/d;->d:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lorg/slf4j/helpers/d;->i:Ljava/util/Queue;

    .line 4
    iput-boolean p3, p0, Lorg/slf4j/helpers/d;->j:Z

    return-void
.end method

.method private b()Lorg/slf4j/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/d;->h:Lorg/slf4j/event/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/slf4j/event/a;

    iget-object v1, p0, Lorg/slf4j/helpers/d;->i:Ljava/util/Queue;

    invoke-direct {v0, p0, v1}, Lorg/slf4j/event/a;-><init>(Lorg/slf4j/helpers/d;Ljava/util/Queue;)V

    iput-object v0, p0, Lorg/slf4j/helpers/d;->h:Lorg/slf4j/event/a;

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/slf4j/helpers/d;->h:Lorg/slf4j/event/a;

    return-object v0
.end method


# virtual methods
.method a()Lorg/slf4j/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/d;->e:Lorg/slf4j/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/slf4j/helpers/d;->e:Lorg/slf4j/b;

    return-object v0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lorg/slf4j/helpers/d;->j:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lorg/slf4j/helpers/NOPLogger;->d:Lorg/slf4j/helpers/NOPLogger;

    return-object v0

    .line 5
    :cond_1
    invoke-direct {p0}, Lorg/slf4j/helpers/d;->b()Lorg/slf4j/b;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/d;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/d;->e:Lorg/slf4j/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/slf4j/event/b;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/slf4j/helpers/d;->g:Ljava/lang/reflect/Method;

    .line 4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/slf4j/helpers/d;->f:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/slf4j/helpers/d;->f:Ljava/lang/Boolean;

    .line 6
    :goto_0
    iget-object v0, p0, Lorg/slf4j/helpers/d;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/d;->a()Lorg/slf4j/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/slf4j/b;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/d;->e:Lorg/slf4j/b;

    instance-of v0, v0, Lorg/slf4j/helpers/NOPLogger;

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Lorg/slf4j/helpers/d;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lorg/slf4j/helpers/d;

    .line 3
    iget-object v2, p0, Lorg/slf4j/helpers/d;->d:Ljava/lang/String;

    iget-object p1, p1, Lorg/slf4j/helpers/d;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/d;->a()Lorg/slf4j/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/slf4j/b;->error(Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/d;->a()Lorg/slf4j/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/slf4j/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/d;->e:Lorg/slf4j/b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Lorg/slf4j/event/b;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/d;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/slf4j/helpers/d;->e:Lorg/slf4j/b;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public h(Lorg/slf4j/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/helpers/d;->e:Lorg/slf4j/b;

    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/d;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/d;->a()Lorg/slf4j/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/slf4j/b;->info(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/d;->a()Lorg/slf4j/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/slf4j/b;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/slf4j/helpers/d;->a()Lorg/slf4j/b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/slf4j/b;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lorg/slf4j/helpers/d;->a()Lorg/slf4j/b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/slf4j/b;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
