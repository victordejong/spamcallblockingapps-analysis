.class public Lorg/slf4j/event/a;
.super Ljava/lang/Object;
.source "EventRecodingLogger.java"

# interfaces
.implements Lorg/slf4j/b;


# instance fields
.field d:Ljava/lang/String;

.field e:Lorg/slf4j/helpers/d;

.field f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/slf4j/helpers/d;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/slf4j/helpers/d;",
            "Ljava/util/Queue<",
            "Lorg/slf4j/event/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/slf4j/event/a;->e:Lorg/slf4j/helpers/d;

    .line 3
    invoke-virtual {p1}, Lorg/slf4j/helpers/d;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/slf4j/event/a;->d:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/slf4j/event/a;->f:Ljava/util/Queue;

    return-void
.end method

.method private a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/slf4j/event/a;->b(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method private b(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance p2, Lorg/slf4j/event/c;

    invoke-direct {p2}, Lorg/slf4j/event/c;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/slf4j/event/c;->i(J)V

    .line 3
    invoke-virtual {p2, p1}, Lorg/slf4j/event/c;->c(Lorg/slf4j/event/Level;)V

    .line 4
    iget-object p1, p0, Lorg/slf4j/event/a;->e:Lorg/slf4j/helpers/d;

    invoke-virtual {p2, p1}, Lorg/slf4j/event/c;->d(Lorg/slf4j/helpers/d;)V

    .line 5
    iget-object p1, p0, Lorg/slf4j/event/a;->d:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lorg/slf4j/event/c;->e(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2, p3}, Lorg/slf4j/event/c;->f(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2, p4}, Lorg/slf4j/event/c;->b([Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p2, p5}, Lorg/slf4j/event/c;->h(Ljava/lang/Throwable;)V

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/slf4j/event/c;->g(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lorg/slf4j/event/a;->f:Ljava/util/Queue;

    invoke-interface {p1, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/slf4j/event/Level;->h:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lorg/slf4j/event/a;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/slf4j/event/Level;->d:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lorg/slf4j/event/a;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    sget-object v0, Lorg/slf4j/event/Level;->d:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/slf4j/event/a;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/slf4j/event/Level;->f:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lorg/slf4j/event/a;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/slf4j/event/Level;->e:Lorg/slf4j/event/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Lorg/slf4j/event/a;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 2
    sget-object v0, Lorg/slf4j/event/Level;->e:Lorg/slf4j/event/Level;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/slf4j/event/a;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 3
    sget-object v0, Lorg/slf4j/event/Level;->e:Lorg/slf4j/event/Level;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Lorg/slf4j/event/a;->a(Lorg/slf4j/event/Level;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
