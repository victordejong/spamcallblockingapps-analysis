.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

.field public final c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

.field private final d:Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

.field private final e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;Lkotlin/reflect/jvm/internal/impl/b/a$k;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;ZLkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$k;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a/f;",
            ">;Z",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;",
            ")V"
        }
    .end annotation

    const-string v0, "kotlinClass"

    move-object v9, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageProto"

    move-object v4, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    move-object v5, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abiStability"

    move-object/from16 v8, p6

    invoke-static {v8, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->c()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    move-result-object v2

    const-string v0, "byClassId(kotlinClass.classId)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    move-object v3, v1

    goto :goto_2

    .line 42
    :cond_1
    move-object v3, v0

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    move-result-object v1

    goto :goto_0

    :goto_2
    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object v9, p1

    .line 39
    invoke-direct/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;-><init>(Lkotlin/reflect/jvm/internal/impl/resolve/c/c;Lkotlin/reflect/jvm/internal/impl/resolve/c/c;Lkotlin/reflect/jvm/internal/impl/b/a$k;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;ZLkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/resolve/c/c;Lkotlin/reflect/jvm/internal/impl/resolve/c/c;Lkotlin/reflect/jvm/internal/impl/b/a$k;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;ZLkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/c/c;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/c/c;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$k;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q<",
            "Lkotlin/reflect/jvm/internal/impl/b/c/a/f;",
            ">;Z",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;",
            ")V"
        }
    .end annotation

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageProto"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abiStability"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->d:Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    .line 24
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->b:Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    .line 27
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/q;

    .line 28
    iput-boolean p6, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->f:Z

    .line 29
    iput-object p7, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/e;

    .line 30
    iput-object p8, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    .line 53
    check-cast p3, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/b/c/a;->m:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string p2, "packageModuleName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const-string p2, "main"

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p4, p1}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/descriptors/au;
    .locals 2

    .line 65
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/au;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/au;

    const-string v1, "NO_SOURCE_FILE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->d()Lkotlin/reflect/jvm/internal/impl/c/a;

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

.method public final c()Lkotlin/reflect/jvm/internal/impl/c/e;
    .locals 2

    .line 59
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->d:Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "className.internalName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x2f

    invoke-static {v0, v1}, Lkotlin/h/p;->b(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "identifier(className.internalName.substringAfterLast(\'/\'))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/impl/c/a;
    .locals 3

    .line 61
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/c/a;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->d:Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/c/a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->d:Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
