.class public Lorg/objenesis/b/d;
.super Lorg/objenesis/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/objenesis/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lorg/objenesis/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lorg/objenesis/a/a<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Java HotSpot"

    .line 58
    invoke-static {v0}, Lorg/objenesis/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "OpenJDK"

    invoke-static {v0}, Lorg/objenesis/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Dalvik"

    .line 70
    invoke-static {v0}, Lorg/objenesis/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    invoke-static {}, Lorg/objenesis/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lorg/objenesis/a/e/c;

    invoke-direct {v0, p1}, Lorg/objenesis/a/e/c;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 75
    :cond_1
    sget v0, Lorg/objenesis/b/c;->g:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_2

    .line 77
    new-instance v0, Lorg/objenesis/a/a/a;

    invoke-direct {v0, p1}, Lorg/objenesis/a/a/a;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 79
    :cond_2
    sget v0, Lorg/objenesis/b/c;->g:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_3

    .line 81
    new-instance v0, Lorg/objenesis/a/a/b;

    invoke-direct {v0, p1}, Lorg/objenesis/a/a/b;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 84
    :cond_3
    new-instance v0, Lorg/objenesis/a/a/c;

    invoke-direct {v0, p1}, Lorg/objenesis/a/a/c;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_4
    const-string v0, "GNU libgcj"

    .line 86
    invoke-static {v0}, Lorg/objenesis/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    new-instance v0, Lorg/objenesis/a/c/a;

    invoke-direct {v0, p1}, Lorg/objenesis/a/c/a;-><init>(Ljava/lang/Class;)V

    return-object v0

    :cond_5
    const-string v0, "PERC"

    .line 89
    invoke-static {v0}, Lorg/objenesis/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    new-instance v0, Lorg/objenesis/a/d/a;

    invoke-direct {v0, p1}, Lorg/objenesis/a/d/a;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 94
    :cond_6
    new-instance v0, Lorg/objenesis/a/e/c;

    invoke-direct {v0, p1}, Lorg/objenesis/a/e/c;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 60
    :cond_7
    :goto_0
    invoke-static {}, Lorg/objenesis/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lorg/objenesis/b/c;->a:Ljava/lang/String;

    const-string v1, "1.7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 61
    const-class v0, Ljava/io/Serializable;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 62
    new-instance v0, Lorg/objenesis/a/b/c;

    invoke-direct {v0, p1}, Lorg/objenesis/a/b/c;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 64
    :cond_8
    new-instance v0, Lorg/objenesis/a/b/a;

    invoke-direct {v0, p1}, Lorg/objenesis/a/b/a;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 68
    :cond_9
    new-instance v0, Lorg/objenesis/a/e/b;

    invoke-direct {v0, p1}, Lorg/objenesis/a/e/b;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method
