.class public final Lcom/criteo/publisher/m0/f;
.super Lcom/criteo/publisher/m0/j;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/criteo/publisher/m0/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/f;Lcom/google/gson/a/a;)Lcom/google/gson/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/a/a<",
            "TT;>;)",
            "Lcom/google/gson/j<",
            "TT;>;"
        }
    .end annotation

    .line 28
    invoke-virtual {p2}, Lcom/google/gson/a/a;->getRawType()Ljava/lang/Class;

    move-result-object p2

    .line 29
    const-class v0, Lcom/criteo/publisher/model/o;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p1}, Lcom/criteo/publisher/model/o;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    const-class v0, Lcom/criteo/publisher/model/q;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {p1}, Lcom/criteo/publisher/model/q;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 33
    :cond_1
    const-class v0, Lcom/criteo/publisher/k/a/c;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-static {p1}, Lcom/criteo/publisher/k/a/c;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 35
    :cond_2
    const-class v0, Lcom/criteo/publisher/f/s;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    invoke-static {p1}, Lcom/criteo/publisher/f/s;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 37
    :cond_3
    const-class v0, Lcom/criteo/publisher/f/y;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    invoke-static {p1}, Lcom/criteo/publisher/f/y;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 39
    :cond_4
    const-class v0, Lcom/criteo/publisher/f/y$a;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 40
    invoke-static {p1}, Lcom/criteo/publisher/f/y$a;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 41
    :cond_5
    const-class v0, Lcom/criteo/publisher/f/y$b;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 42
    invoke-static {p1}, Lcom/criteo/publisher/f/y$b;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 43
    :cond_6
    const-class v0, Lcom/criteo/publisher/model/b0/m;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 44
    invoke-static {p1}, Lcom/criteo/publisher/model/b0/m;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 45
    :cond_7
    const-class v0, Lcom/criteo/publisher/model/b0/n;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 46
    invoke-static {p1}, Lcom/criteo/publisher/model/b0/n;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 47
    :cond_8
    const-class v0, Lcom/criteo/publisher/model/b0/o;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 48
    invoke-static {p1}, Lcom/criteo/publisher/model/b0/o;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 49
    :cond_9
    const-class v0, Lcom/criteo/publisher/model/b0/p;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 50
    invoke-static {p1}, Lcom/criteo/publisher/model/b0/p;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 51
    :cond_a
    const-class v0, Lcom/criteo/publisher/model/b0/q;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 52
    invoke-static {p1}, Lcom/criteo/publisher/model/b0/q;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 53
    :cond_b
    const-class v0, Lcom/criteo/publisher/model/b0/r;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 54
    invoke-static {p1}, Lcom/criteo/publisher/model/b0/r;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 55
    :cond_c
    const-class v0, Lcom/criteo/publisher/model/v;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 56
    invoke-static {p1}, Lcom/criteo/publisher/model/v;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 57
    :cond_d
    const-class v0, Lcom/criteo/publisher/model/w;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 58
    invoke-static {p1}, Lcom/criteo/publisher/model/w;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 59
    :cond_e
    const-class v0, Lcom/criteo/publisher/model/y;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 60
    invoke-static {p1}, Lcom/criteo/publisher/model/y;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    .line 61
    :cond_f
    const-class v0, Lcom/criteo/publisher/model/z;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 62
    invoke-static {p1}, Lcom/criteo/publisher/model/z;->a(Lcom/google/gson/f;)Lcom/google/gson/j;

    move-result-object p1

    return-object p1

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method
