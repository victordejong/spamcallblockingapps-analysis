.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;


# instance fields
.field private final a:Ljava/lang/ClassLoader;

.field private final b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    const-string v0, "classLoader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;->a:Ljava/lang/ClassLoader;

    .line 30
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;

    invoke-direct {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;

    return-void
.end method

.method private final a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;
    .locals 3

    .line 33
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;->a:Ljava/lang/ClassLoader;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/e;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f$a;->a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$b;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v0, v2, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    :goto_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/io/InputStream;
    .locals 2

    const-string v0, "packageFqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j;->l:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->b(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    invoke-virtual {v1, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/c;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;
    .locals 4

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "relativeClassName.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2e

    const/16 v2, 0x24

    const/4 v3, 0x0

    .line 1063
    invoke-static {v0, v1, v2, v3}, Lkotlin/h/p;->a(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object v0

    .line 1058
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    .line 2063
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/c/b;->b:Lkotlin/reflect/jvm/internal/impl/c/c;

    .line 2101
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/c/c;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1058
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    :goto_0
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;
    .locals 1

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->e()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/m$a;

    move-result-object p1

    return-object p1
.end method
