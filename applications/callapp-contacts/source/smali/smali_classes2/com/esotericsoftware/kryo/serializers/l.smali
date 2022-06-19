.class public Lcom/esotericsoftware/kryo/serializers/l;
.super Lcom/esotericsoftware/kryo/serializers/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/serializers/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/esotericsoftware/kryo/serializers/i<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/reflect/Method;

.field private static final b:Ljava/lang/reflect/Method;

.field private static final c:Ljava/lang/reflect/Method;

.field private static final d:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.lang.reflect.RecordComponent"

    .line 53
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 54
    const-class v2, Ljava/lang/Class;

    const-string v3, "isRecord"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    const-class v3, Ljava/lang/Class;

    const-string v5, "getRecordComponents"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v5, "getName"

    new-array v6, v4, [Ljava/lang/Class;

    .line 56
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v6, "getType"

    new-array v4, v4, [Ljava/lang/Class;

    .line 57
    invoke-virtual {v1, v6, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-object v1, v0

    move-object v3, v1

    move-object v5, v3

    .line 66
    :goto_0
    sput-object v0, Lcom/esotericsoftware/kryo/serializers/l;->a:Ljava/lang/reflect/Method;

    .line 67
    sput-object v3, Lcom/esotericsoftware/kryo/serializers/l;->b:Ljava/lang/reflect/Method;

    .line 68
    sput-object v5, Lcom/esotericsoftware/kryo/serializers/l;->c:Ljava/lang/reflect/Method;

    .line 69
    sput-object v1, Lcom/esotericsoftware/kryo/serializers/l;->d:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/esotericsoftware/kryo/serializers/i;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;[Lcom/esotericsoftware/kryo/serializers/l$a;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/esotericsoftware/kryo/serializers/l$a;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 206
    :try_start_0
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$r2LDO30PzrxrujTVea7sazxarcs;->INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$r2LDO30PzrxrujTVea7sazxarcs;

    .line 207
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$l$pgGCSuRGApYTLX6EbOO5sUNgGCk;->INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$l$pgGCSuRGApYTLX6EbOO5sUNgGCk;

    .line 208
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    .line 209
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 210
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 212
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Could not construct type ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 214
    throw p2
.end method

.method private static a(Ljava/lang/Object;Lcom/esotericsoftware/kryo/serializers/l$a;)Ljava/lang/Object;
    .locals 3

    .line 191
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lcom/esotericsoftware/kryo/serializers/l$a;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    .line 192
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    .line 194
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Could not retrieve record components ("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-virtual {v0, p0}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 197
    throw v0
.end method

.method private static a(Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 133
    :try_start_0
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/l;->a:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 135
    :catchall_0
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not determine type ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/lang/Class;Ljava/util/Comparator;)[Lcom/esotericsoftware/kryo/serializers/l$a;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "Lcom/esotericsoftware/kryo/serializers/l$a;",
            ">;)[",
            "Lcom/esotericsoftware/kryo/serializers/l$a;"
        }
    .end annotation

    .line 170
    :try_start_0
    sget-object v0, Lcom/esotericsoftware/kryo/serializers/l;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 171
    array-length v2, v0

    new-array v2, v2, [Lcom/esotericsoftware/kryo/serializers/l$a;

    const/4 v3, 0x0

    .line 172
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 173
    aget-object v4, v0, v3

    .line 174
    new-instance v5, Lcom/esotericsoftware/kryo/serializers/l$a;

    sget-object v6, Lcom/esotericsoftware/kryo/serializers/l;->c:Ljava/lang/reflect/Method;

    new-array v7, v1, [Ljava/lang/Object;

    .line 175
    invoke-virtual {v6, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/esotericsoftware/kryo/serializers/l;->d:Ljava/lang/reflect/Method;

    new-array v8, v1, [Ljava/lang/Object;

    .line 176
    invoke-virtual {v7, v4, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-direct {v5, v6, v4, v3}, Lcom/esotericsoftware/kryo/serializers/l$a;-><init>(Ljava/lang/String;Ljava/lang/Class;I)V

    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 178
    invoke-static {v2, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-object v2

    :catchall_0
    move-exception p1

    .line 181
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v0, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Could not retrieve record components ("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 183
    throw v0
.end method

.method private static synthetic a(I)[Ljava/lang/Class;
    .locals 0

    .line 208
    new-array p0, p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public static synthetic lambda$pgGCSuRGApYTLX6EbOO5sUNgGCk(I)[Ljava/lang/Class;
    .locals 0

    invoke-static {p0}, Lcom/esotericsoftware/kryo/serializers/l;->a(I)[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/a;",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, " ("

    .line 104
    invoke-static {p3}, Lcom/esotericsoftware/kryo/serializers/l;->a(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_3

    .line 107
    sget-object v1, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$jG4Uf72rbIz8P_qfI2InKFOi5IY;->INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$jG4Uf72rbIz8P_qfI2InKFOi5IY;

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/esotericsoftware/kryo/serializers/l;->a(Ljava/lang/Class;Ljava/util/Comparator;)[Lcom/esotericsoftware/kryo/serializers/l$a;

    move-result-object v1

    .line 108
    array-length v3, v1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 109
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 110
    aget-object v5, v1, v4

    .line 111
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/l$a;->a()Ljava/lang/String;

    move-result-object v6

    .line 113
    :try_start_0
    sget-boolean v7, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v7, :cond_0

    const-string v7, "kryo"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Read property: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/l$a;->c()I

    move-result v7

    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/l$a;->b()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/l$a;->b()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {v5}, Lcom/esotericsoftware/kryo/serializers/l$a;->b()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Lcom/esotericsoftware/kryo/c;->b(Lcom/esotericsoftware/kryo/a/a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    aput-object v5, v3, v7
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 121
    new-instance p2, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 123
    throw p2

    :catch_0
    move-exception p1

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 119
    throw p1

    .line 126
    :cond_2
    sget-object p1, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$DI0mWtLjGr7WxrMT0YGs2V2bW04;->INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$DI0mWtLjGr7WxrMT0YGs2V2bW04;

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 127
    invoke-static {p3, v1, v3}, Lcom/esotericsoftware/kryo/serializers/l;->a(Ljava/lang/Class;[Lcom/esotericsoftware/kryo/serializers/l$a;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 105
    :cond_3
    new-instance p1, Lcom/esotericsoftware/kryo/KryoException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Not a record ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/c;",
            "Lcom/esotericsoftware/kryo/a/c;",
            "TT;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, ")"

    const-string v4, " ("

    .line 77
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 78
    invoke-static {v5}, Lcom/esotericsoftware/kryo/serializers/l;->a(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 81
    sget-object v6, Lcom/esotericsoftware/kryo/serializers/-$$Lambda$jG4Uf72rbIz8P_qfI2InKFOi5IY;->INSTANCE:Lcom/esotericsoftware/kryo/serializers/-$$Lambda$jG4Uf72rbIz8P_qfI2InKFOi5IY;

    invoke-static {v6}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/esotericsoftware/kryo/serializers/l;->a(Ljava/lang/Class;Ljava/util/Comparator;)[Lcom/esotericsoftware/kryo/serializers/l$a;

    move-result-object v5

    array-length v6, v5

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v6, :cond_13

    aget-object v9, v5, v8

    .line 82
    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/serializers/l$a;->b()Ljava/lang/Class;

    move-result-object v10

    .line 83
    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/serializers/l$a;->a()Ljava/lang/String;

    move-result-object v11

    .line 85
    :try_start_0
    sget-boolean v12, Lcom/esotericsoftware/b/a;->e:Z
    :try_end_0
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v13, "kryo"

    if-eqz v12, :cond_0

    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "Write property: "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {v9}, Lcom/esotericsoftware/kryo/serializers/l$a;->b()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->isPrimitive()Z

    move-result v12
    :try_end_1
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v14, "output cannot be null."

    const-string v15, "Write"

    const/4 v7, 0x1

    if-eqz v12, :cond_7

    .line 87
    :try_start_2
    invoke-static {v2, v9}, Lcom/esotericsoftware/kryo/serializers/l;->a(Ljava/lang/Object;Lcom/esotericsoftware/kryo/serializers/l$a;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v0, :cond_6

    if-eqz v9, :cond_5

    .line 1623
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/c;->b()V
    :try_end_2
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1625
    :try_start_3
    iget-boolean v12, v1, Lcom/esotericsoftware/kryo/c;->d:Z

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    invoke-virtual {v1, v0, v9, v12}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Z)Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_1

    .line 1629
    :try_start_4
    iget v9, v1, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr v9, v7

    iput v9, v1, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez v9, :cond_10

    iget-boolean v7, v1, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz v7, :cond_10

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/c;->a()V
    :try_end_4
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_6

    .line 1626
    :cond_1
    :try_start_5
    sget-boolean v12, Lcom/esotericsoftware/b/a;->e:Z

    if-nez v12, :cond_2

    sget-boolean v12, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v12, :cond_3

    iget v12, v1, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne v12, v7, :cond_3

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v12

    invoke-static {v15, v9, v12}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 1627
    :cond_3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/esotericsoftware/kryo/c;->c(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v12

    .line 2060
    iget-object v12, v12, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 1627
    invoke-virtual {v12, v1, v0, v9}, Lcom/esotericsoftware/kryo/h;->write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1629
    :try_start_6
    iget v9, v1, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr v9, v7

    iput v9, v1, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez v9, :cond_10

    iget-boolean v7, v1, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz v7, :cond_10

    goto :goto_1

    :catchall_0
    move-exception v0

    iget v2, v1, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr v2, v7

    iput v2, v1, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez v2, :cond_4

    iget-boolean v2, v1, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 1630
    :cond_4
    throw v0

    .line 1622
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1621
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_7
    invoke-static {v2, v9}, Lcom/esotericsoftware/kryo/serializers/l;->a(Ljava/lang/Object;Lcom/esotericsoftware/kryo/serializers/l$a;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v0, :cond_12

    .line 2652
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/c;->b()V
    :try_end_6
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2654
    :try_start_7
    invoke-virtual {v1, v10}, Lcom/esotericsoftware/kryo/c;->c(Ljava/lang/Class;)Lcom/esotericsoftware/kryo/g;

    move-result-object v12

    .line 3060
    iget-object v12, v12, Lcom/esotericsoftware/kryo/g;->d:Lcom/esotericsoftware/kryo/h;

    .line 2655
    iget-boolean v14, v1, Lcom/esotericsoftware/kryo/c;->d:Z

    if-eqz v14, :cond_8

    .line 2656
    invoke-virtual {v1, v0, v9, v7}, Lcom/esotericsoftware/kryo/c;->a(Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;Z)Z

    move-result v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v13, :cond_d

    .line 2669
    :try_start_8
    iget v9, v1, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr v9, v7

    iput v9, v1, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez v9, :cond_10

    iget-boolean v7, v1, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz v7, :cond_10

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/c;->a()V
    :try_end_8
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_6

    .line 2657
    :cond_8
    :try_start_9
    invoke-virtual {v12}, Lcom/esotericsoftware/kryo/h;->getAcceptsNull()Z

    move-result v14

    if-nez v14, :cond_d

    if-nez v9, :cond_b

    .line 2659
    sget-boolean v12, Lcom/esotericsoftware/b/a;->e:Z

    if-nez v12, :cond_a

    sget-boolean v12, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v12, :cond_9

    iget v12, v1, Lcom/esotericsoftware/kryo/c;->a:I

    if-ne v12, v7, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v14, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v12

    invoke-static {v15, v9, v12}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_3

    .line 2660
    :goto_5
    invoke-virtual {v0, v14}, Lcom/esotericsoftware/kryo/a/c;->a(B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2669
    :try_start_a
    iget v9, v1, Lcom/esotericsoftware/kryo/c;->a:I

    sub-int/2addr v9, v7

    iput v9, v1, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez v9, :cond_10

    iget-boolean v7, v1, Lcom/esotericsoftware/kryo/c;->b:Z
    :try_end_a
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v7, :cond_10

    goto :goto_2

    :cond_b
    const/4 v14, 0x0

    .line 2663
    :try_start_b
    sget-boolean v16, Lcom/esotericsoftware/b/a;->e:Z

    if-eqz v16, :cond_c

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v7, "Write: <not null>"

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v7

    invoke-static {v7}, Lcom/esotericsoftware/kryo/c/n;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Lcom/esotericsoftware/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    .line 2664
    :cond_c
    invoke-virtual {v0, v7}, Lcom/esotericsoftware/kryo/a/c;->a(B)V

    .line 2666
    :cond_d
    sget-boolean v7, Lcom/esotericsoftware/b/a;->e:Z

    if-nez v7, :cond_e

    sget-boolean v7, Lcom/esotericsoftware/b/a;->d:Z

    if-eqz v7, :cond_f

    iget v7, v1, Lcom/esotericsoftware/kryo/c;->a:I

    const/4 v13, 0x1

    if-ne v7, v13, :cond_f

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/esotericsoftware/kryo/a/c;->b()I

    move-result v7

    invoke-static {v15, v9, v7}, Lcom/esotericsoftware/kryo/c/n;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 2667
    :cond_f
    invoke-virtual {v12, v1, v0, v9}, Lcom/esotericsoftware/kryo/h;->write(Lcom/esotericsoftware/kryo/c;Lcom/esotericsoftware/kryo/a/c;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 2669
    :try_start_c
    iget v7, v1, Lcom/esotericsoftware/kryo/c;->a:I

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    iput v7, v1, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez v7, :cond_10

    iget-boolean v7, v1, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz v7, :cond_10

    goto :goto_2

    :cond_10
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget v2, v1, Lcom/esotericsoftware/kryo/c;->a:I

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    iput v2, v1, Lcom/esotericsoftware/kryo/c;->a:I

    if-nez v2, :cond_11

    iget-boolean v2, v1, Lcom/esotericsoftware/kryo/c;->b:Z

    if-eqz v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/esotericsoftware/kryo/c;->a()V

    .line 2670
    :cond_11
    throw v0

    .line 2651
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Lcom/esotericsoftware/kryo/KryoException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    .line 95
    new-instance v1, Lcom/esotericsoftware/kryo/KryoException;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/Throwable;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 97
    throw v1

    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;->a(Ljava/lang/String;)V

    .line 93
    throw v0

    :cond_13
    return-void

    .line 79
    :cond_14
    new-instance v0, Lcom/esotericsoftware/kryo/KryoException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a record"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/esotericsoftware/kryo/KryoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
