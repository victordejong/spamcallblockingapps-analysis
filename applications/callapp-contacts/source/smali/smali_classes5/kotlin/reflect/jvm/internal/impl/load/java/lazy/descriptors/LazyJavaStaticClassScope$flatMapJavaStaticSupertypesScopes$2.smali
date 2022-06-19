.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2;
.super Lkotlin/reflect/jvm/internal/impl/utils/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/j;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/utils/b$a<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $onJavaStaticScope:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
            "Ljava/util/Collection<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field final synthetic $result:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation
.end field

.field final synthetic $root:Lkotlin/reflect/jvm/internal/impl/descriptors/d;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/Set;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Ljava/util/Set<",
            "TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/h;",
            "+",
            "Ljava/util/Collection<",
            "+TR;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2;->$root:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2;->$result:Ljava/util/Set;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2;->$onJavaStaticScope:Lkotlin/jvm/functions/Function1;

    .line 128
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/utils/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic beforeChildren(Ljava/lang/Object;)Z
    .locals 0

    .line 128
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2;->beforeChildren(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result p1

    return p1
.end method

.method public final beforeChildren(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .locals 2

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2;->$root:Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 131
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getStaticScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object p1

    const-string v0, "current.staticScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/k;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2;->$result:Ljava/util/Set;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2;->$onJavaStaticScope:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    return p1

    :cond_1
    return v1
.end method

.method public final bridge synthetic result()Ljava/lang/Object;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaStaticClassScope$flatMapJavaStaticSupertypesScopes$2;->result()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final result()V
    .locals 0

    return-void
.end method
