.class final Lkotlin/reflect/jvm/internal/impl/load/java/d$a;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/as;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/d$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 82
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1083
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/y;->b:Lkotlin/reflect/jvm/internal/impl/load/java/y$a;

    .line 1125
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/y;->f()Ljava/util/Map;

    move-result-object p1

    .line 1083
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/d$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
