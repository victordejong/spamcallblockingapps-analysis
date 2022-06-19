.class final Lkotlin/reflect/jvm/internal/impl/load/java/a/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/a/a$1;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/b;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/load/java/a/a$1;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/a/a$1;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/a$1$1;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 76
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    if-eqz p1, :cond_0

    .line 1079
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/a/a$1$1;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/a$1;

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/a$1;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)V

    .line 1080
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "descriptor"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils$1$1"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "invoke"

    aput-object v1, p1, v0

    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 1000
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
