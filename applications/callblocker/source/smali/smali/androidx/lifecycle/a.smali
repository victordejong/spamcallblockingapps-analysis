.class Landroidx/lifecycle/a;
.super Ljava/lang/Object;
.source "ClassesInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/a$b;,
        Landroidx/lifecycle/a$a;
    }
.end annotation


# static fields
.field static a:Landroidx/lifecycle/a;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Landroidx/lifecycle/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroidx/lifecycle/a;

    invoke-direct {v0}, Landroidx/lifecycle/a;-><init>()V

    sput-object v0, Landroidx/lifecycle/a;->a:Landroidx/lifecycle/a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/a;->b:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/a;->c:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/a$a;
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 106
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 107
    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->b(Ljava/lang/Class;)Landroidx/lifecycle/a$a;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 110
    iget-object v0, v0, Landroidx/lifecycle/a$a;->b:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v7

    .line 115
    array-length v8, v7

    move v5, v3

    :goto_0
    if-ge v5, v8, :cond_2

    aget-object v0, v7, v5

    .line 116
    invoke-virtual {p0, v0}, Landroidx/lifecycle/a;->b(Ljava/lang/Class;)Landroidx/lifecycle/a$a;

    move-result-object v0

    iget-object v0, v0, Landroidx/lifecycle/a$a;->b:Ljava/util/Map;

    .line 117
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/a$b;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/e$a;

    invoke-direct {p0, v6, v1, v0, p1}, Landroidx/lifecycle/a;->a(Ljava/util/Map;Landroidx/lifecycle/a$b;Landroidx/lifecycle/e$a;Ljava/lang/Class;)V

    goto :goto_1

    .line 115
    :cond_1
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 122
    :cond_2
    if-eqz p2, :cond_3

    .line 124
    :goto_2
    array-length v7, p2

    move v5, v3

    move v1, v3

    :goto_3
    if-ge v5, v7, :cond_a

    aget-object v8, p2, v5

    .line 125
    const-class v0, Landroidx/lifecycle/p;

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/p;

    .line 126
    if-nez v0, :cond_4

    move v0, v1

    .line 124
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_3

    .line 122
    :cond_3
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;->c(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object p2

    goto :goto_2

    .line 130
    :cond_4
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    .line 132
    array-length v1, v9

    if-lez v1, :cond_b

    .line 134
    aget-object v1, v9, v3

    const-class v10, Landroidx/lifecycle/h;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid parameter type. Must be one and instanceof LifecycleOwner"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v1, v2

    .line 139
    :goto_5
    invoke-interface {v0}, Landroidx/lifecycle/p;->a()Landroidx/lifecycle/e$a;

    move-result-object v0

    .line 141
    array-length v10, v9

    if-le v10, v2, :cond_8

    .line 143
    aget-object v1, v9, v2

    const-class v10, Landroidx/lifecycle/e$a;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid parameter type. second arg must be an event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_6
    sget-object v1, Landroidx/lifecycle/e$a;->ON_ANY:Landroidx/lifecycle/e$a;

    if-eq v0, v1, :cond_7

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Second arg is supported only for ON_ANY value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v1, v4

    .line 152
    :cond_8
    array-length v9, v9

    if-le v9, v4, :cond_9

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cannot have more than 2 params"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_9
    new-instance v9, Landroidx/lifecycle/a$b;

    invoke-direct {v9, v1, v8}, Landroidx/lifecycle/a$b;-><init>(ILjava/lang/reflect/Method;)V

    .line 156
    invoke-direct {p0, v6, v9, v0, p1}, Landroidx/lifecycle/a;->a(Ljava/util/Map;Landroidx/lifecycle/a$b;Landroidx/lifecycle/e$a;Ljava/lang/Class;)V

    move v0, v2

    goto :goto_4

    .line 158
    :cond_a
    new-instance v0, Landroidx/lifecycle/a$a;

    invoke-direct {v0, v6}, Landroidx/lifecycle/a$a;-><init>(Ljava/util/Map;)V

    .line 159
    iget-object v2, p0, Landroidx/lifecycle/a;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v2, p0, Landroidx/lifecycle/a;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-object v0

    :cond_b
    move v1, v3

    goto :goto_5
.end method

.method private a(Ljava/util/Map;Landroidx/lifecycle/a$b;Landroidx/lifecycle/e$a;Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroidx/lifecycle/a$b;",
            "Landroidx/lifecycle/e$a;",
            ">;",
            "Landroidx/lifecycle/a$b;",
            "Landroidx/lifecycle/e$a;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/e$a;

    .line 92
    if-eqz v0, :cond_0

    if-eq p3, v0, :cond_0

    .line 93
    iget-object v1, p2, Landroidx/lifecycle/a$b;->b:Ljava/lang/reflect/Method;

    .line 94
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " already declared with different @OnLifecycleEvent value: previous value "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", new value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 99
    :cond_0
    if-nez v0, :cond_1

    .line 100
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_1
    return-void
.end method

.method private c(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 3

    .prologue
    .line 70
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method a(Ljava/lang/Class;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p0, Landroidx/lifecycle/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 46
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 65
    :goto_0
    return v0

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;->c(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 51
    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 52
    const-class v5, Landroidx/lifecycle/p;

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/p;

    .line 53
    if-eqz v0, :cond_1

    .line 60
    invoke-direct {p0, p1, v3}, Landroidx/lifecycle/a;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/a$a;

    .line 61
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 64
    :cond_2
    iget-object v0, p0, Landroidx/lifecycle/a;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 65
    goto :goto_0
.end method

.method b(Ljava/lang/Class;)Landroidx/lifecycle/a$a;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroidx/lifecycle/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/a$a;

    .line 82
    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-object v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/lifecycle/a;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Landroidx/lifecycle/a$a;

    move-result-object v0

    goto :goto_0
.end method
