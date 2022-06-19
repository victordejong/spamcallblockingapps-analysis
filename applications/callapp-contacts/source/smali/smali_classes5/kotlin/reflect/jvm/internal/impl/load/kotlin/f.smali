.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

.field private final b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;)V
    .locals 1

    const-string v0, "kotlinClassFinder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    .line 25
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;
    .locals 3

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/n;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 29
    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->c()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    sget-boolean v2, Lkotlin/x;->a:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class with incorrect id found: expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", actual "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->c()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 32
    :cond_2
    :goto_0
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;

    move-result-object p1

    return-object p1
.end method
