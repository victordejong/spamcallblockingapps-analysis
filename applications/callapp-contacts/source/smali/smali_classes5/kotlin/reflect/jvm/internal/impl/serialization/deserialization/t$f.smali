.class final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;
.super Lkotlin/jvm/internal/r;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Ljava/util/List;
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
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

.field final synthetic b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;

.field final synthetic c:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

.field final synthetic d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

.field final synthetic e:I

.field final synthetic f:Lkotlin/reflect/jvm/internal/impl/b/a$t;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;ILkotlin/reflect/jvm/internal/impl/b/a$t;)V
    .locals 0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;->d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    iput p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;->e:I

    iput-object p6, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;->f:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 7

    .line 1413
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object v0

    .line 2078
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 3042
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;

    .line 1414
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;->b:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;->d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    iget v5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;->e:I

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t$f;->f:Lkotlin/reflect/jvm/internal/impl/b/a$t;

    invoke-interface/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;ILkotlin/reflect/jvm/internal/impl/b/a$t;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1415
    invoke-static {v0}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
