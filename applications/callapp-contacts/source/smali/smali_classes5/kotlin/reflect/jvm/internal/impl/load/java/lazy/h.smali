.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field final b:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

.field final c:I

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/x;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lkotlin/reflect/jvm/internal/impl/f/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/h<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/x;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;I)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterOwner"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 36
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 38
    iput p4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->c:I

    .line 40
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/d/y;->i()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->d:Ljava/util/Map;

    .line 1127
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2045
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 42
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/h;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->e:Lkotlin/reflect/jvm/internal/impl/f/h;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/load/java/d/x;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;
    .locals 1

    const-string v0, "javaTypeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->e:Lkotlin/reflect/jvm/internal/impl/f/h;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/f/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 2113
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;

    .line 52
    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/x;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object p1

    return-object p1

    :cond_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    return-object v0
.end method
