.class final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$e;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Lkotlin/reflect/jvm/internal/impl/descriptors/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/b/a$m;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$e;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$e;->b:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$e;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 5

    .line 1141
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$e;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v1

    .line 2080
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 1141
    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 1142
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$e;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v1

    .line 3078
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 4042
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;

    .line 1142
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$e;->b:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$e;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v3

    const-string v4, "property.returnType"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object v0
.end method
