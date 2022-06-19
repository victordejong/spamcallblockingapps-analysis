.class public final Lcom/e/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/e/b/a;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "target object must not be null"

    .line 118
    invoke-static {v2, v4, v3}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 120
    invoke-static {v2, p1}, Lcom/e/b/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object v2, v5, v0

    const-string p1, "Cannot locate field %s on %s"

    .line 121
    invoke-static {v4, p1, v5}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 123
    invoke-static {v3, p0, v1}, Lcom/e/b/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 2169
    invoke-static {p0, p1}, Lcom/e/b/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "Cannot locate field \'%s\' on %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    aput-object p0, v6, v2

    .line 2170
    invoke-static {v4, v5, v6}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    const-string p1, "The field must not be null"

    new-array v4, v3, [Ljava/lang/Object;

    .line 3154
    invoke-static {p0, p1, v4}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3155
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    const-string p1, "The field \'%s\' is not static"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p0, p1, v4}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3156
    invoke-static {v1, v0, v2}, Lcom/e/b/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 163
    invoke-static {p0}, Lcom/e/b/c;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 101
    invoke-static {p0, p1, v0}, Lcom/e/b/a;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "The field must not be null"

    .line 78
    invoke-static {v2, v3, v1}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 79
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result p2

    if-nez p2, :cond_1

    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_1

    .line 82
    :cond_1
    invoke-static {p0}, Lcom/e/b/b;->a(Ljava/lang/reflect/AccessibleObject;)Z

    .line 84
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "The class must not be null"

    new-array v4, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {v2, v3, v4}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {p1}, Lcom/e/b/c;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v1

    const-string v3, "The field name must not be blank/empty"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1015
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1016
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    sget-object v3, Lcom/e/b/a;->a:Ljava/util/Map;

    monitor-enter v3

    .line 27
    :try_start_0
    sget-object v4, Lcom/e/b/a;->a:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 28
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_2

    .line 30
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result p0

    if-nez p0, :cond_1

    .line 31
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    return-object v4

    :cond_2
    move-object v3, p0

    :goto_1
    if-eqz v3, :cond_4

    .line 39
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 42
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    :cond_3
    sget-object v5, Lcom/e/b/a;->a:Ljava/util/Map;

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    :try_start_2
    sget-object v6, Lcom/e/b/a;->a:Ljava/util/Map;

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    monitor-exit v5

    return-object v4

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_0

    .line 37
    :catch_0
    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 61
    invoke-static {p0}, Lcom/e/b/c;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 63
    :try_start_4
    invoke-virtual {v5, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-nez v3, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    const-string v7, "Reference to field %s is ambiguous relative to %s; a matching field exists on two or more implemented interfaces."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v0

    aput-object p0, v8, v1

    .line 64
    invoke-static {v6, v7, v8}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v3, v5

    goto :goto_2

    :catch_1
    nop

    goto :goto_2

    .line 71
    :cond_6
    sget-object p0, Lcom/e/b/a;->a:Ljava/util/Map;

    monitor-enter p0

    .line 72
    :try_start_5
    sget-object p1, Lcom/e/b/a;->a:Ljava/util/Map;

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    monitor-exit p0

    return-object v3

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1

    :catchall_2
    move-exception p0

    .line 28
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "The class must not be null"

    .line 207
    invoke-static {v1, v3, v2}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-static {p1}, Lcom/e/b/c;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, p2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "The field name must not be blank/empty"

    invoke-static {v1, v2, v0}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 212
    invoke-static {p0}, Lcom/e/b/b;->a(Ljava/lang/reflect/Member;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 214
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "target object must not be null"

    .line 1141
    invoke-static {v2, v4, v3}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1142
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1143
    invoke-static {v2, p1}, Lcom/e/b/a;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 1144
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    aput-object p1, v5, v0

    const-string p1, "Cannot locate declared field %s.%s"

    invoke-static {v4, p1, v5}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "The field must not be null"

    .line 2090
    invoke-static {p1, v2, v1}, Lcom/e/b/d;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2091
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2092
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    goto :goto_3

    .line 2094
    :cond_3
    invoke-static {v3}, Lcom/e/b/b;->a(Ljava/lang/reflect/AccessibleObject;)Z

    .line 2096
    :goto_3
    invoke-virtual {v3, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1

    .line 199
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/e/b/a;->a(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 201
    invoke-static {p0}, Lcom/e/b/c;->a(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
