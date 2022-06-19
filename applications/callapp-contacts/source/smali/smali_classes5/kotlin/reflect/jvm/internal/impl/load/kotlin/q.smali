.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

.field private final c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;ZLkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a/f;",
            ">;Z",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;",
            ")V"
        }
    .end annotation

    const-string v0, "binaryClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abiStability"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    .line 27
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;

    .line 28
    iput-boolean p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;->d:Z

    .line 29
    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/descriptors/au;
    .locals 2

    .line 34
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/au;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/au;

    const-string v1, "NO_SOURCE_FILE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->c()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
