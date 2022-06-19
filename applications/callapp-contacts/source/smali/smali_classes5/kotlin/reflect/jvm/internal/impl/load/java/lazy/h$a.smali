.class final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/load/java/d/x;",
        "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 42
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/d/x;

    const-string v0, "typeParameter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;

    .line 2034
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->d:Ljava/util/Map;

    .line 1043
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 1044
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;

    .line 3034
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 1045
    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;

    const-string v5, "<this>"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "typeParameterResolver"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3134
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 4112
    iget-object v6, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 4114
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->c:Lkotlin/Lazy;

    .line 3134
    invoke-direct {v5, v6, v4, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;Lkotlin/Lazy;)V

    .line 5034
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 1045
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v3

    invoke-static {v5, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object v3

    .line 6034
    iget v4, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->c:I

    add-int/2addr v4, v0

    .line 7034
    iget-object v0, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 1044
    invoke-direct {v2, v3, p1, v4, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaTypeParameterDescriptor;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/x;ILkotlin/reflect/jvm/internal/impl/descriptors/k;)V

    return-object v2
.end method
