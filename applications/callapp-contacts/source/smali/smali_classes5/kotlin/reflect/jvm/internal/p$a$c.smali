.class final Lkotlin/reflect/jvm/internal/p$a$c;
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
        "Lkotlin/s<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/b/c/a/g;",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/b/a$k;",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/b/c/a/f;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0016\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Triple;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Package;",
        "Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;",
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

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/p$a$c;->a:Lkotlin/reflect/jvm/internal/p$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/r;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic invoke()Ljava/lang/Object;
    .locals 4

    .line 1065
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/p$a$c;->a:Lkotlin/reflect/jvm/internal/p$a;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/p$a;->a(Lkotlin/reflect/jvm/internal/p$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d/a/f;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    if-eqz v0, :cond_0

    .line 3018
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->c:[Ljava/lang/String;

    .line 3020
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->e:[Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1069
    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->b([Ljava/lang/String;[Ljava/lang/String;)Lkotlin/n;

    move-result-object v1

    .line 4000
    iget-object v2, v1, Lkotlin/n;->a:Ljava/lang/Object;

    .line 1069
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/c/a/g;

    .line 5000
    iget-object v1, v1, Lkotlin/n;->b:Ljava/lang/Object;

    .line 1069
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$k;

    .line 1070
    new-instance v3, Lkotlin/s;

    .line 5016
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 1070
    invoke-direct {v3, v2, v1, v0}, Lkotlin/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_0
    return-object v1
.end method
