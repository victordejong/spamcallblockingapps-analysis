.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;
.super Lkotlin/reflect/jvm/internal/impl/serialization/a;
.source "SourceFile"


# static fields
.field public static final m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 14
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/f;->a()Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/b/a/b;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/f;)V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    const-string v0, "newInstance().apply(BuiltInsProtoBuf::registerAllExtensions)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/b/a/b;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "packageFqName"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/b/a/b;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "constructorAnnotation"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/a/b;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "classAnnotation"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/b/a/b;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "functionAnnotation"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/b/a/b;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "propertyAnnotation"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/b/a/b;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "propertyGetterAnnotation"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/b/a/b;->g:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "propertySetterAnnotation"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/b/a/b;->i:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "enumEntryAnnotation"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/b/a/b;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "compileTimeValue"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/b/a/b;->j:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "parameterAnnotation"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/b/a/b;->k:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "typeAnnotation"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/b/a/b;->l:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v0, "typeParameterAnnotation"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v13}, Lkotlin/reflect/jvm/internal/impl/serialization/a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)V

    return-void
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/lang/String;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->c(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".kotlin_builtins"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/lang/String;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "default-package"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/b;->e()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fqName.shortName().asString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/lang/String;
    .locals 5

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fqName.asString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    const/4 v4, 0x0

    .line 1063
    invoke-static {v1, v2, v3, v4}, Lkotlin/h/p;->a(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/builtins/a;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
