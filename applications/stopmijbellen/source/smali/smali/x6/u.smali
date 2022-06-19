.class public final Lx6/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lx6/u;


# instance fields
.field public final a:Lx6/x;

.field public final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lx6/w<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx6/u;

    invoke-direct {v0}, Lx6/u;-><init>()V

    sput-object v0, Lx6/u;->c:Lx6/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lx6/u;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    new-instance v0, Lx6/l;

    invoke-direct {v0}, Lx6/l;-><init>()V

    iput-object v0, p0, Lx6/u;->a:Lx6/x;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lx6/w;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lx6/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/k;->a:Ljava/nio/charset/Charset;

    const-string v0, "messageType"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lx6/u;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx6/w;

    if-nez v0, :cond_b

    .line 4
    iget-object v0, p0, Lx6/u;->a:Lx6/x;

    check-cast v0, Lx6/l;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Lcom/google/protobuf/i;

    sget-object v2, Lcom/google/protobuf/a0;->a:Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/protobuf/a0;->a:Ljava/lang/Class;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, v0, Lx6/l;->a:Lx6/o;

    invoke-interface {v0, p1}, Lx6/o;->a(Ljava/lang/Class;)Lx6/n;

    move-result-object v2

    .line 10
    invoke-interface {v2}, Lx6/n;->b()Z

    move-result v0

    const-string v3, "Protobuf runtime is not correctly loaded."

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object v0, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/d0;

    .line 13
    sget-object v1, Lx6/f;->a:Lcom/google/protobuf/f;

    sget-object v1, Lx6/f;->a:Lcom/google/protobuf/f;

    .line 14
    invoke-interface {v2}, Lx6/n;->c()Lcom/google/protobuf/u;

    move-result-object v2

    .line 15
    new-instance v3, Lcom/google/protobuf/x;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/d0;Lcom/google/protobuf/f;Lcom/google/protobuf/u;)V

    goto :goto_1

    .line 16
    :cond_2
    sget-object v0, Lcom/google/protobuf/a0;->b:Lcom/google/protobuf/d0;

    .line 17
    sget-object v1, Lx6/f;->b:Lcom/google/protobuf/f;

    if-eqz v1, :cond_3

    .line 18
    invoke-interface {v2}, Lx6/n;->c()Lcom/google/protobuf/u;

    move-result-object v2

    .line 19
    new-instance v3, Lcom/google/protobuf/x;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/protobuf/x;-><init>(Lcom/google/protobuf/d0;Lcom/google/protobuf/f;Lcom/google/protobuf/u;)V

    :goto_1
    move-object v0, v3

    goto :goto_2

    .line 20
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 22
    invoke-interface {v2}, Lx6/n;->a()I

    move-result v0

    if-ne v0, v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_6

    .line 23
    sget-object v3, Lx6/r;->b:Lx6/q;

    .line 24
    sget-object v4, Lcom/google/protobuf/o;->b:Lcom/google/protobuf/o;

    .line 25
    sget-object v5, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/d0;

    .line 26
    sget-object v0, Lx6/f;->a:Lcom/google/protobuf/f;

    sget-object v6, Lx6/f;->a:Lcom/google/protobuf/f;

    .line 27
    sget-object v7, Lx6/m;->b:Lcom/google/protobuf/s;

    .line 28
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/w;->s(Lx6/n;Lx6/q;Lcom/google/protobuf/o;Lcom/google/protobuf/d0;Lcom/google/protobuf/f;Lcom/google/protobuf/s;)Lcom/google/protobuf/w;

    move-result-object v0

    goto :goto_2

    .line 29
    :cond_6
    sget-object v3, Lx6/r;->b:Lx6/q;

    .line 30
    sget-object v4, Lcom/google/protobuf/o;->b:Lcom/google/protobuf/o;

    .line 31
    sget-object v5, Lcom/google/protobuf/a0;->d:Lcom/google/protobuf/d0;

    const/4 v6, 0x0

    .line 32
    sget-object v7, Lx6/m;->b:Lcom/google/protobuf/s;

    .line 33
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/w;->s(Lx6/n;Lx6/q;Lcom/google/protobuf/o;Lcom/google/protobuf/d0;Lcom/google/protobuf/f;Lcom/google/protobuf/s;)Lcom/google/protobuf/w;

    move-result-object v0

    goto :goto_2

    .line 34
    :cond_7
    invoke-interface {v2}, Lx6/n;->a()I

    move-result v0

    if-ne v0, v4, :cond_8

    const/4 v1, 0x1

    :cond_8
    if-eqz v1, :cond_a

    .line 35
    sget-object v0, Lx6/r;->a:Lx6/q;

    .line 36
    sget-object v4, Lcom/google/protobuf/o;->a:Lcom/google/protobuf/o;

    .line 37
    sget-object v5, Lcom/google/protobuf/a0;->b:Lcom/google/protobuf/d0;

    .line 38
    sget-object v6, Lx6/f;->b:Lcom/google/protobuf/f;

    if-eqz v6, :cond_9

    .line 39
    sget-object v7, Lx6/m;->a:Lcom/google/protobuf/s;

    move-object v3, v0

    .line 40
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/w;->s(Lx6/n;Lx6/q;Lcom/google/protobuf/o;Lcom/google/protobuf/d0;Lcom/google/protobuf/f;Lcom/google/protobuf/s;)Lcom/google/protobuf/w;

    move-result-object v0

    goto :goto_2

    .line 41
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_a
    sget-object v3, Lx6/r;->a:Lx6/q;

    .line 43
    sget-object v4, Lcom/google/protobuf/o;->a:Lcom/google/protobuf/o;

    .line 44
    sget-object v5, Lcom/google/protobuf/a0;->c:Lcom/google/protobuf/d0;

    const/4 v6, 0x0

    .line 45
    sget-object v7, Lx6/m;->a:Lcom/google/protobuf/s;

    .line 46
    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/w;->s(Lx6/n;Lx6/q;Lcom/google/protobuf/o;Lcom/google/protobuf/d0;Lcom/google/protobuf/f;Lcom/google/protobuf/s;)Lcom/google/protobuf/w;

    move-result-object v0

    .line 47
    :goto_2
    iget-object v1, p0, Lx6/u;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx6/w;

    if-eqz p1, :cond_b

    move-object v0, p1

    :cond_b
    return-object v0
.end method

.method public b(Ljava/lang/Object;)Lx6/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lx6/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lx6/u;->a(Ljava/lang/Class;)Lx6/w;

    move-result-object p1

    return-object p1
.end method
