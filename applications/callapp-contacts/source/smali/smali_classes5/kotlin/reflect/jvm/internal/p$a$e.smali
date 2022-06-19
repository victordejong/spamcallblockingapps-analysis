.class final Lkotlin/reflect/jvm/internal/p$a$e;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/p$a;-><init>(Lkotlin/reflect/jvm/internal/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/p$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/p$a;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/p$a$e;->a:Lkotlin/reflect/jvm/internal/p$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 11

    .line 1048
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/p$a$e;->a:Lkotlin/reflect/jvm/internal/p$a;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/p$a;->a(Lkotlin/reflect/jvm/internal/p$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 1051
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/p$a$e;->a:Lkotlin/reflect/jvm/internal/p$a;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/p$a;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;

    move-result-object v1

    .line 2050
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/j;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;

    const-string v2, "fileClass"

    .line 1051
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3021
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    check-cast v2, Ljava/util/concurrent/ConcurrentMap;

    .line 4064
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->b:Ljava/lang/Class;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    .line 3042
    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    .line 5064
    iget-object v4, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->b:Ljava/lang/Class;

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/d/b/b;->e(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v4

    .line 3022
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/c/a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    const-string v5, "fileClass.classId.packageFqName"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6049
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    .line 7015
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 3025
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->MULTIFILE_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    if-ne v5, v6, :cond_6

    .line 7049
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    .line 7051
    iget-object v6, v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->c:[Ljava/lang/String;

    .line 8015
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 7051
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->MULTIFILE_CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    if-ne v5, v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x0

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v7

    :goto_1
    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v6}, Lkotlin/a/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :goto_2
    if-nez v7, :cond_3

    .line 8071
    sget-object v5, Lkotlin/a/z;->a:Lkotlin/a/z;

    move-object v7, v5

    check-cast v7, Ljava/util/List;

    .line 3026
    :cond_3
    check-cast v7, Ljava/lang/Iterable;

    .line 3044
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 3053
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 3052
    check-cast v7, Ljava/lang/String;

    .line 3027
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v7

    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v7

    const-string v8, "topLevel(JvmClassName.byInternalName(partName).fqNameForTopLevelClassMaybeWithDollars)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3028
    iget-object v8, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/g;

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    invoke-static {v8, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/n;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 3052
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3056
    :cond_5
    check-cast v5, Ljava/util/List;

    goto :goto_4

    .line 3030
    :cond_6
    invoke-static {v0}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 3032
    :goto_4
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/k;

    iget-object v7, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-result-object v7

    .line 9039
    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 3032
    invoke-direct {v6, v7, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/k;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    .line 3034
    check-cast v5, Ljava/lang/Iterable;

    .line 3057
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/Collection;

    .line 3066
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 3065
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    .line 3035
    iget-object v9, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;

    move-object v10, v6

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    invoke-virtual {v9, v10, v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 3065
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3069
    :cond_8
    check-cast v7, Ljava/util/List;

    .line 3057
    check-cast v7, Ljava/lang/Iterable;

    .line 3036
    invoke-static {v7}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 3038
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "package "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;->a(Ljava/lang/String;Ljava/lang/Iterable;)Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v4

    .line 3043
    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    move-object v4, v0

    :cond_a
    :goto_6
    const-string v0, "cache.getOrPut(fileClass.classId) {\n        val fqName = fileClass.classId.packageFqName\n\n        val parts =\n            if (fileClass.classHeader.kind == KotlinClassHeader.Kind.MULTIFILE_CLASS)\n                fileClass.classHeader.multifilePartNames.mapNotNull { partName ->\n                    val classId = ClassId.topLevel(JvmClassName.byInternalName(partName).fqNameForTopLevelClassMaybeWithDollars)\n                    kotlinClassFinder.findKotlinClass(classId)\n                }\n            else listOf(fileClass)\n\n        val packageFragment = EmptyPackageFragmentDescriptor(resolver.components.moduleDescriptor, fqName)\n\n        val scopes = parts.mapNotNull { part ->\n            resolver.createKotlinPackagePartScope(packageFragment, part)\n        }.toList()\n\n        ChainedMemberScope.create(\"package $fqName ($fileClass)\", scopes)\n    }"

    .line 3021
    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v4

    .line 1052
    :cond_b
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0
.end method
