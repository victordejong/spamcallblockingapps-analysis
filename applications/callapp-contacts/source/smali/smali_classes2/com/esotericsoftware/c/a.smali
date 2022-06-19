.class Lcom/esotericsoftware/c/a;
.super Ljava/lang/ClassLoader;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/esotericsoftware/c/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ClassLoader;

.field private static volatile c:Lcom/esotericsoftware/c/a;

.field private static volatile d:Ljava/lang/reflect/Method;


# instance fields
.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/esotericsoftware/c/a;->a:Ljava/util/WeakHashMap;

    .line 31
    const-class v0, Lcom/esotericsoftware/c/a;

    invoke-static {v0}, Lcom/esotericsoftware/c/a;->b(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/esotericsoftware/c/a;->b:Ljava/lang/ClassLoader;

    .line 32
    new-instance v1, Lcom/esotericsoftware/c/a;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/c/a;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/esotericsoftware/c/a;->c:Lcom/esotericsoftware/c/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 36
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/esotericsoftware/c/a;->e:Ljava/util/HashSet;

    return-void
.end method

.method static a(Ljava/lang/Class;)Lcom/esotericsoftware/c/a;
    .locals 3

    .line 121
    invoke-static {p0}, Lcom/esotericsoftware/c/a;->b(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    .line 123
    sget-object v0, Lcom/esotericsoftware/c/a;->b:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    sget-object p0, Lcom/esotericsoftware/c/a;->c:Lcom/esotericsoftware/c/a;

    if-nez p0, :cond_1

    .line 125
    sget-object p0, Lcom/esotericsoftware/c/a;->a:Ljava/util/WeakHashMap;

    monitor-enter p0

    .line 126
    :try_start_0
    sget-object v1, Lcom/esotericsoftware/c/a;->c:Lcom/esotericsoftware/c/a;

    if-nez v1, :cond_0

    .line 127
    new-instance v1, Lcom/esotericsoftware/c/a;

    invoke-direct {v1, v0}, Lcom/esotericsoftware/c/a;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/esotericsoftware/c/a;->c:Lcom/esotericsoftware/c/a;

    .line 128
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 130
    :cond_1
    :goto_0
    sget-object p0, Lcom/esotericsoftware/c/a;->c:Lcom/esotericsoftware/c/a;

    return-object p0

    .line 133
    :cond_2
    sget-object v0, Lcom/esotericsoftware/c/a;->a:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 134
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_4

    .line 136
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/esotericsoftware/c/a;

    if-eqz v1, :cond_3

    .line 138
    monitor-exit v0

    return-object v1

    .line 140
    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_4
    new-instance v1, Lcom/esotericsoftware/c/a;

    invoke-direct {v1, p0}, Lcom/esotericsoftware/c/a;-><init>(Ljava/lang/ClassLoader;)V

    .line 143
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception p0

    .line 145
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method private static a()Ljava/lang/reflect/Method;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/esotericsoftware/c/a;->d:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 106
    sget-object v0, Lcom/esotericsoftware/c/a;->a:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v1, Lcom/esotericsoftware/c/a;->d:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 108
    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "defineClass"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-class v4, [B

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/4 v4, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-class v6, Ljava/security/ProtectionDomain;

    aput-object v6, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/esotericsoftware/c/a;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :try_start_1
    sget-object v1, Lcom/esotericsoftware/c/a;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 117
    :cond_1
    :goto_0
    sget-object v0, Lcom/esotericsoftware/c/a;->d:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static a(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    .line 85
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 89
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 90
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1

    :cond_3
    if-nez p1, :cond_5

    if-ne p0, v0, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    if-ne p0, p1, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method private b(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 73
    :try_start_0
    invoke-static {}, Lcom/esotericsoftware/c/a;->a()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/esotericsoftware/c/a;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const/4 v4, 0x2

    .line 74
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x3

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v4

    aput-object v4, v2, v3

    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v4, 0x0

    .line 78
    array-length v5, p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/esotericsoftware/c/a;->defineClass(Ljava/lang/String;[BIILjava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private static b(Ljava/lang/Class;)Ljava/lang/ClassLoader;
    .locals 0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-nez p0, :cond_0

    .line 100
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/esotericsoftware/c/a;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 47
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/esotericsoftware/c/a;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 49
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Ljava/lang/String;[B)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/esotericsoftware/c/a;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/esotericsoftware/c/a;->b(Ljava/lang/String;[B)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 62
    const-class v0, Lcom/esotericsoftware/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-class p1, Lcom/esotericsoftware/c/c;

    return-object p1

    .line 63
    :cond_0
    const-class v0, Lcom/esotericsoftware/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class p1, Lcom/esotericsoftware/c/d;

    return-object p1

    .line 64
    :cond_1
    const-class v0, Lcom/esotericsoftware/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class p1, Lcom/esotericsoftware/c/b;

    return-object p1

    .line 65
    :cond_2
    const-class v0, Lcom/esotericsoftware/c/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class p1, Lcom/esotericsoftware/c/e;

    return-object p1

    .line 67
    :cond_3
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
