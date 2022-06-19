.class final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$b;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Z)Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/r;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/b/a$p;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Lkotlin/reflect/jvm/internal/impl/b/a$p;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$b;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$b;->b:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 3

    .line 1082
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$b;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 2023
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 2078
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 3042
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;

    .line 1082
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$b;->b:Lkotlin/reflect/jvm/internal/impl/b/a$p;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa$b;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 4023
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 4079
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 1082
    invoke-interface {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;->a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
