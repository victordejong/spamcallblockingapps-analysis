.class final Lkotlin/c/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/c/b/a/g$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c2\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0002J\u0010\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\u0008R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;",
        "",
        "()V",
        "cache",
        "Lkotlin/coroutines/jvm/internal/ModuleNameRetriever$Cache;",
        "notOnJava9",
        "buildCache",
        "continuation",
        "Lkotlin/coroutines/jvm/internal/BaseContinuationImpl;",
        "getModuleName",
        "",
        "Cache",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static a:Lkotlin/c/b/a/g$a;

.field public static final b:Lkotlin/c/b/a/g;

.field private static final c:Lkotlin/c/b/a/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lkotlin/c/b/a/g;

    invoke-direct {v0}, Lkotlin/c/b/a/g;-><init>()V

    sput-object v0, Lkotlin/c/b/a/g;->b:Lkotlin/c/b/a/g;

    .line 61
    new-instance v0, Lkotlin/c/b/a/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lkotlin/c/b/a/g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v0, Lkotlin/c/b/a/g;->c:Lkotlin/c/b/a/g$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/c/b/a/a;)Ljava/lang/String;
    .locals 5

    const-string v0, "continuation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lkotlin/c/b/a/g;->a:Lkotlin/c/b/a/g$a;

    if-nez v0, :cond_0

    invoke-static {p0}, Lkotlin/c/b/a/g;->b(Lkotlin/c/b/a/a;)Lkotlin/c/b/a/g$a;

    move-result-object v0

    .line 68
    :cond_0
    sget-object v1, Lkotlin/c/b/a/g;->c:Lkotlin/c/b/a/g$a;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    return-object v2

    .line 71
    :cond_1
    iget-object v1, v0, Lkotlin/c/b/a/g$a;->a:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    .line 72
    :cond_2
    iget-object v1, v0, Lkotlin/c/b/a/g$a;->b:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_6

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_2

    .line 73
    :cond_3
    iget-object v0, v0, Lkotlin/c/b/a/g$a;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_4

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_4
    move-object p0, v2

    :goto_0
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, p0

    :goto_1
    check-cast v2, Ljava/lang/String;

    :cond_6
    :goto_2
    return-object v2
.end method

.method private static b(Lkotlin/c/b/a/a;)Lkotlin/c/b/a/g$a;
    .locals 5

    .line 78
    :try_start_0
    const-class v0, Ljava/lang/Class;

    const-string v1, "getModule"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v3, "java.lang.Module"

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getDescriptor"

    new-array v4, v2, [Ljava/lang/Class;

    .line 80
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v3, "java.lang.module.ModuleDescriptor"

    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v3, "name"

    new-array v2, v2, [Ljava/lang/Class;

    .line 82
    invoke-virtual {p0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 83
    new-instance v2, Lkotlin/c/b/a/g$a;

    invoke-direct {v2, v0, v1, p0}, Lkotlin/c/b/a/g$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v2, Lkotlin/c/b/a/g;->a:Lkotlin/c/b/a/g$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 85
    :catch_0
    sget-object p0, Lkotlin/c/b/a/g;->c:Lkotlin/c/b/a/g$a;

    sput-object p0, Lkotlin/c/b/a/g;->a:Lkotlin/c/b/a/g$a;

    return-object p0
.end method
