.class public final Lkotlin/reflect/jvm/internal/impl/builtins/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;,
        Lkotlin/reflect/jvm/internal/impl/builtins/a/g$b;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

.field private final c:Lkotlin/reflect/jvm/internal/impl/builtins/a/d;

.field private final d:Lkotlin/reflect/jvm/internal/impl/f/i;

.field private final e:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field private final f:Lkotlin/reflect/jvm/internal/impl/f/i;

.field private final g:Lkotlin/reflect/jvm/internal/impl/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/a<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lkotlin/reflect/jvm/internal/impl/f/i;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 57
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "settings"

    const-string v5, "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 60
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "cloneableType"

    const-string v5, "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 70
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "notConsideredDeprecation"

    const-string v4, "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ab;",
            "Lkotlin/reflect/jvm/internal/impl/f/n;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "moduleDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsComputation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 55
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/d;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->c:Lkotlin/reflect/jvm/internal/impl/builtins/a/d;

    .line 57
    invoke-interface {p2, p3}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p3

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->d:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 15078
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v0, "java.io"

    invoke-direct {p3, v0}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$d;

    invoke-direct {v0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$d;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    .line 15083
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$e;

    invoke-direct {p3, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$e;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 15085
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;

    .line 15086
    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    const-string v0, "Serializable"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-object v6, p1

    check-cast v6, Ljava/util/Collection;

    .line 15087
    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const/4 v8, 0x0

    move-object v1, p3

    move-object v9, p2

    .line 15085
    invoke-direct/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/e;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/at;ZLkotlin/reflect/jvm/internal/impl/f/n;)V

    .line 15090
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/h$c;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 16036
    sget-object v0, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v0, Ljava/util/Set;

    const/4 v1, 0x0

    .line 15090
    invoke-virtual {p3, p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;->initialize(Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Ljava/util/Set;Lkotlin/reflect/jvm/internal/impl/descriptors/c;)V

    .line 15091
    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/f;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    const-string p3, "mockSerializableClass.defaultType"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 59
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->e:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 60
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$c;

    invoke-direct {p1, p0, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$c;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;Lkotlin/reflect/jvm/internal/impl/f/n;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 67
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->b()Lkotlin/reflect/jvm/internal/impl/f/a;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->g:Lkotlin/reflect/jvm/internal/impl/f/a;

    .line 70
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$l;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$l;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->h:Lkotlin/reflect/jvm/internal/impl/f/i;

    return-void
.end method

.method private final a()Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;
    .locals 3

    .line 57
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->d:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;

    return-object v0
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/ab;
    .locals 0

    .line 50
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    return-object p0
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;)Lkotlin/reflect/jvm/internal/impl/builtins/a/d;
    .locals 0

    .line 50
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->c:Lkotlin/reflect/jvm/internal/impl/builtins/a/d;

    return-object p0
.end method

.method private final b()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;
    .locals 3

    .line 60
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    return-object v0
.end method

.method public static final synthetic c(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;)Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;
    .locals 0

    .line 50
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a()Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;

    move-result-object p0

    return-object p0
.end method

.method private final c()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 3

    .line 70
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->h:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0
.end method

.method private final d(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;
    .locals 3

    .line 262
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 265
    :cond_0
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 267
    :cond_1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/c;->b()Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 269
    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/c;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a(Lkotlin/reflect/jvm/internal/impl/c/c;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    if-nez p1, :cond_3

    move-object p1, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_4

    return-object v1

    .line 271
    :cond_4
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a()Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;

    move-result-object v0

    .line 27058
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 271
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_BUILTINS:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-static {v0, p1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/q;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    if-eqz v0, :cond_5

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    return-object p1

    :cond_5
    return-object v1
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/util/Collection;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "name"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "classDescriptor"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/a/a;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/a$a;

    .line 17031
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/a;->b()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    .line 104
    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz v3, :cond_4

    .line 105
    invoke-static/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    .line 17038
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->a:Lkotlin/reflect/jvm/internal/impl/b/a$b;

    .line 17132
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/b/a$b;->j:Ljava/util/List;

    const-string v6, "classDescriptor.classProto.functionList"

    .line 108
    invoke-static {v3, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 346
    instance-of v6, v3, Ljava/util/Collection;

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 347
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    .line 18052
    iget-object v7, v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 18079
    iget-object v7, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 18608
    iget v6, v6, Lkotlin/reflect/jvm/internal/impl/b/a$h;->d:I

    .line 109
    invoke-static {v7, v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/u;->b(Lkotlin/reflect/jvm/internal/impl/b/b/c;I)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/builtins/a/a;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/a$a;

    .line 19031
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/a;->b()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v7

    .line 109
    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 19071
    sget-object v1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v1, Ljava/util/List;

    .line 111
    check-cast v1, Ljava/util/Collection;

    return-object v1

    .line 115
    :cond_3
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->b()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_BUILTINS:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-interface {v3, v1, v4}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/a/n;->d(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 19203
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v1

    .line 19204
    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setOwner(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 19205
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->e:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setVisibility(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 19206
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-interface {v1, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 19207
    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setDispatchReceiverParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 19208
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 113
    invoke-static {v1}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    return-object v1

    .line 120
    :cond_4
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a()Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;

    move-result-object v3

    .line 20059
    iget-boolean v3, v3, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;->b:Z

    if-nez v3, :cond_5

    .line 20071
    sget-object v1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v1, Ljava/util/List;

    .line 120
    check-cast v1, Ljava/util/Collection;

    return-object v1

    .line 122
    :cond_5
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$g;

    invoke-direct {v3, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$g;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 20169
    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    move-result-object v1

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-nez v1, :cond_6

    .line 21071
    sget-object v1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v1, Ljava/util/List;

    .line 20169
    check-cast v1, Ljava/util/Collection;

    goto/16 :goto_9

    .line 20171
    :cond_6
    move-object v9, v1

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v10

    sget-object v11, Lkotlin/reflect/jvm/internal/impl/builtins/a/b;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/b$a;

    .line 21339
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/b;->a()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v11

    const-string v12, "fqName"

    .line 20171
    invoke-static {v10, v12}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "builtIns"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22030
    invoke-static {v10, v11}, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/builtins/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v10

    if-nez v10, :cond_7

    .line 22036
    sget-object v10, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v10, Ljava/util/Set;

    .line 22030
    check-cast v10, Ljava/util/Collection;

    goto :goto_1

    .line 22032
    :cond_7
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/c;

    move-object v12, v10

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v12

    invoke-static {v12}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->c(Lkotlin/reflect/jvm/internal/impl/c/c;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v12

    if-nez v12, :cond_8

    invoke-static {v10}, Lkotlin/a/ap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    goto :goto_1

    :cond_8
    new-array v13, v6, [Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    aput-object v10, v13, v5

    .line 22034
    invoke-virtual {v11, v12}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v10

    const-string v11, "builtIns.getBuiltInClassByFqName(kotlinMutableAnalogFqName)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v13, v4

    invoke-static {v13}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    .line 20172
    :goto_1
    check-cast v10, Ljava/lang/Iterable;

    const-string v11, "$this$lastOrNull"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22458
    instance-of v11, v10, Ljava/util/List;

    if-eqz v11, :cond_a

    move-object v11, v10

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v4

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    goto :goto_3

    .line 22460
    :cond_a
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 22461
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_b

    :goto_2
    move-object v11, v8

    goto :goto_3

    .line 22463
    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 22464
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_b

    move-object v11, v12

    .line 20172
    :goto_3
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v11, :cond_c

    .line 23071
    sget-object v1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v1, Ljava/util/List;

    .line 20172
    check-cast v1, Ljava/util/Collection;

    goto/16 :goto_9

    .line 20173
    :cond_c
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/utils/i;->a:Lkotlin/reflect/jvm/internal/impl/utils/i$b;

    .line 20362
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v10, v13}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .line 20363
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 20364
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 20173
    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 20365
    :cond_d
    check-cast v12, Ljava/util/List;

    .line 20362
    check-cast v12, Ljava/util/Collection;

    const-string v10, "set"

    .line 20173
    invoke-static {v12, v10}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24036
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/utils/i;

    invoke-direct {v10, v8}, Lkotlin/reflect/jvm/internal/impl/utils/i;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v10, v12}, Lkotlin/reflect/jvm/internal/impl/utils/i;->addAll(Ljava/util/Collection;)Z

    .line 20175
    invoke-static/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v12

    .line 20177
    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->g:Lkotlin/reflect/jvm/internal/impl/f/a;

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v9

    new-instance v14, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$f;

    invoke-direct {v14, v1, v11}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$f;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v9, v14}, Lkotlin/reflect/jvm/internal/impl/f/a;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 20184
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getUnsubstitutedMemberScope()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    move-result-object v1

    const-string v9, "fakeJavaClassDescriptor.unsubstitutedMemberScope"

    invoke-static {v1, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20186
    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 20366
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 20367
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 20188
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v13

    sget-object v14, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    if-ne v13, v14, :cond_11

    .line 20189
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v13

    .line 25028
    invoke-virtual {v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object v13

    .line 26010
    iget-boolean v13, v13, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;->b:Z

    if-eqz v13, :cond_11

    .line 20190
    move-object v13, v11

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v13}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v13

    if-nez v13, :cond_11

    .line 20192
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v13

    const-string v14, "analogueMember.overriddenDescriptors"

    invoke-static {v13, v14}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Iterable;

    .line 20368
    move-object v14, v13

    check-cast v14, Ljava/util/Collection;

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_f

    .line 20369
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    .line 20193
    invoke-interface {v14}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v14

    const-string v15, "it.containingDeclaration"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v14

    invoke-virtual {v10, v14}, Lkotlin/reflect/jvm/internal/impl/utils/i;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const/4 v13, 0x1

    goto :goto_6

    :cond_f
    const/4 v13, 0x0

    :goto_6
    if-nez v13, :cond_11

    .line 26211
    invoke-interface {v11}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v13

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 26212
    move-object v14, v11

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-static {v14, v5, v5, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object v14

    .line 26214
    sget-object v15, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/i;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->d()Ljava/util/Set;

    move-result-object v15

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    invoke-static {v8, v13, v14}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v15, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v12

    if-eqz v8, :cond_10

    const/4 v8, 0x1

    goto :goto_7

    .line 26217
    :cond_10
    invoke-static {v11}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    .line 26218
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$j;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/g$j;

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/utils/b$c;

    .line 26219
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$k;

    invoke-direct {v13, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$k;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;)V

    check-cast v13, Lkotlin/jvm/functions/Function1;

    .line 26216
    invoke-static {v8, v11, v13}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/b$c;Lkotlin/jvm/functions/Function1;)Ljava/lang/Boolean;

    move-result-object v8

    const-string v11, "private fun SimpleFunctionDescriptor.isMutabilityViolation(isMutable: Boolean): Boolean {\n        val owner = containingDeclaration as ClassDescriptor\n        val jvmDescriptor = computeJvmDescriptor()\n\n        if ((SignatureBuildingComponents.signature(owner, jvmDescriptor) in MUTABLE_METHOD_SIGNATURES) xor isMutable) return true\n\n        return DFS.ifAny<CallableMemberDescriptor>(\n            listOf(this),\n            { it.original.overriddenDescriptors }\n        ) { overridden ->\n            overridden.kind == CallableMemberDescriptor.Kind.DECLARATION &&\n                    j2kClassMapper.isMutable(overridden.containingDeclaration as ClassDescriptor)\n        }\n    }"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :goto_7
    if-nez v8, :cond_11

    const/4 v8, 0x1

    goto :goto_8

    :cond_11
    const/4 v8, 0x0

    :goto_8
    if-eqz v8, :cond_12

    .line 20196
    invoke-interface {v3, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 20371
    :cond_13
    check-cast v3, Ljava/util/List;

    .line 20366
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    .line 122
    :goto_9
    check-cast v1, Ljava/lang/Iterable;

    .line 349
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 358
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 357
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 128
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 127
    invoke-static {v9, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/j;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution;

    move-result-object v9

    .line 129
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution;->buildSubstitutor()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v9

    .line 126
    invoke-interface {v8, v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v9

    const-string v10, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.SimpleFunctionDescriptor"

    .line 128
    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 132
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v9

    .line 133
    move-object v10, v2

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-interface {v9, v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setOwner(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 134
    invoke-interface/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getThisAsReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v10

    invoke-interface {v9, v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setDispatchReceiverParameter(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 135
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setPreserveSourceElement()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 137
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    .line 26226
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v10

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 26227
    invoke-static {v8, v5, v5, v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object v8

    .line 26228
    new-instance v11, Lkotlin/jvm/internal/ab$e;

    invoke-direct {v11}, Lkotlin/jvm/internal/ab$e;-><init>()V

    .line 26230
    invoke-static {v10}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    .line 26231
    new-instance v12, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$h;

    invoke-direct {v12, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$h;-><init>(Lkotlin/reflect/jvm/internal/impl/builtins/a/g;)V

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/utils/b$c;

    .line 26239
    new-instance v13, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$i;

    invoke-direct {v13, v8, v11}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$i;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/ab$e;)V

    check-cast v13, Lkotlin/reflect/jvm/internal/impl/utils/b$d;

    .line 26229
    invoke-static {v10, v12, v13}, Lkotlin/reflect/jvm/internal/impl/utils/b;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/utils/b$c;Lkotlin/reflect/jvm/internal/impl/utils/b$d;)Ljava/lang/Object;

    move-result-object v8

    const-string v10, "private fun FunctionDescriptor.getJdkMethodStatus(): JDKMemberStatus {\n        val owner = containingDeclaration as ClassDescriptor\n        val jvmDescriptor = computeJvmDescriptor()\n        var result: JDKMemberStatus? = null\n        return DFS.dfs<ClassDescriptor, JDKMemberStatus>(\n            listOf(owner),\n            {\n                // Search through mapped supertypes to determine that Set.toArray should be invisible, while we have only\n                // Collection.toArray there explicitly\n                // Note, that we can\'t find j.u.Collection.toArray within overriddenDescriptors of j.u.Set.toArray\n                it.typeConstructor.supertypes.mapNotNull {\n                    (it.constructor.declarationDescriptor?.original as? ClassDescriptor)?.getJavaAnalogue()\n                }\n            },\n            object : DFS.AbstractNodeHandler<ClassDescriptor, JDKMemberStatus>() {\n                override fun beforeChildren(javaClassDescriptor: ClassDescriptor): Boolean {\n                    val signature = SignatureBuildingComponents.signature(javaClassDescriptor, jvmDescriptor)\n                    when (signature) {\n                        in HIDDEN_METHOD_SIGNATURES -> result = JDKMemberStatus.HIDDEN\n                        in VISIBLE_METHOD_SIGNATURES -> result = JDKMemberStatus.VISIBLE\n                        in DROP_LIST_METHOD_SIGNATURES -> result = JDKMemberStatus.DROP\n                    }\n\n                    return result == null\n                }\n\n                override fun result() = result ?: JDKMemberStatus.NOT_CONSIDERED\n            })\n    }"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;

    .line 138
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$b;->a:[I

    invoke-virtual {v8}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g$a;->ordinal()I

    move-result v8

    aget v8, v10, v8

    if-eq v8, v4, :cond_17

    if-eq v8, v6, :cond_16

    if-eq v8, v7, :cond_15

    goto :goto_c

    :cond_15
    :goto_b
    const/4 v8, 0x0

    goto :goto_d

    .line 146
    :cond_16
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v8

    invoke-interface {v9, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setAdditionalAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    goto :goto_c

    .line 141
    :cond_17
    invoke-static/range {p2 .. p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v8

    if-eqz v8, :cond_18

    goto :goto_b

    .line 142
    :cond_18
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setHiddenForResolutionEverywhereBesideSupercalls()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 154
    :goto_c
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    invoke-static {v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    :goto_d
    if-eqz v8, :cond_14

    .line 357
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 361
    :cond_19
    check-cast v3, Ljava/util/List;

    .line 349
    check-cast v3, Ljava/util/Collection;

    return-object v3
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ">;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object p1

    .line 97
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/i;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->b(Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    const/4 v0, 0x0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->b()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    const-string v2, "cloneableType"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->e:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    aput-object v1, p1, v0

    invoke-static {p1}, Lkotlin/a/n;->b([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 98
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/i;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->a(Lkotlin/reflect/jvm/internal/impl/c/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->e:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {p1}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 16071
    :cond_1
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 99
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z
    .locals 5

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionDescriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 317
    :cond_0
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/b/d;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 318
    :cond_1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a()Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;

    move-result-object v1

    .line 32059
    iget-boolean v1, v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 320
    :cond_2
    move-object v1, p2

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    const/4 v3, 0x3

    invoke-static {v1, v2, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    move-result-object p1

    .line 323
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/as;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p2

    const-string v4, "functionDescriptor.name"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/a/a/d;->FROM_BUILTINS:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-virtual {p1, p2, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 382
    instance-of p2, p1, Ljava/util/Collection;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 383
    :cond_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 324
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-static {p2, v2, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return v0

    :cond_5
    return v2
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/util/Collection;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/c;",
            ">;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-ne v0, v1, :cond_d

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a()Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;

    move-result-object v0

    .line 27059
    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;->b:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 277
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 28071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 277
    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 280
    :cond_1
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/a/b;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/b$a;

    .line 28339
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/b;->a()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v2

    .line 280
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/builtins/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    if-nez v1, :cond_2

    .line 29071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 280
    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 282
    :cond_2
    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/a/j;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructorSubstitution;->buildSubstitutor()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v3

    .line 288
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 372
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .line 373
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    .line 289
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v9

    .line 30028
    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object v9

    .line 31010
    iget-boolean v9, v9, Lkotlin/reflect/jvm/internal/impl/descriptors/bf;->b:Z

    const/4 v10, 0x1

    if-eqz v9, :cond_9

    .line 290
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getConstructors()Ljava/util/Collection;

    move-result-object v9

    const-string v11, "defaultKotlinVersion.constructors"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/Iterable;

    .line 374
    move-object v11, v9

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 375
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    const-string v12, "it"

    .line 290
    invoke-static {v11, v12}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    move-object v12, v8

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    .line 31285
    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-interface {v12, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->b(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    move-result-object v12

    check-cast v12, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-static {v11, v12}, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    move-result-object v11

    .line 31286
    sget-object v12, Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;->OVERRIDABLE:Lkotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$a$a;

    if-ne v11, v12, :cond_5

    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x0

    :goto_1
    if-eqz v11, :cond_4

    const/4 v9, 0x0

    goto :goto_2

    :cond_6
    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_9

    .line 291
    move-object v9, v8

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    .line 31328
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->getValueParameters()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v10, :cond_8

    .line 31329
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->getValueParameters()Ljava/util/List;

    move-result-object v9

    const-string v11, "valueParameters"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/a/n;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v9

    invoke-virtual {v9}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v9

    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v9

    if-nez v9, :cond_7

    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v9

    :goto_3
    move-object v11, p1

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v11}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_9

    .line 292
    move-object v9, v8

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v9}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 296
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/i;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->e()Ljava/util/Set;

    move-result-object v9

    .line 293
    sget-object v11, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    .line 295
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-static {v8, v7, v7, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object v6

    .line 293
    invoke-static {v11, v2, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const/4 v7, 0x1

    :cond_9
    if-eqz v7, :cond_3

    .line 289
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 377
    :cond_a
    check-cast v4, Ljava/util/List;

    .line 372
    check-cast v4, Ljava/lang/Iterable;

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v4, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 379
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 380
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    .line 298
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->newCopyBuilder()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    move-result-object v5

    .line 299
    move-object v8, p1

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-interface {v5, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setOwner(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 300
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v8

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-interface {v5, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setReturnType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 301
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setPreserveSourceElement()Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 302
    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->getSubstitution()Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;

    move-result-object v8

    invoke-interface {v5, v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setSubstitution(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitution;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 305
    sget-object v8, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/i;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/a/i;->f()Ljava/util/Set;

    move-result-object v8

    .line 303
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    .line 304
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-static {v4, v7, v7, v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-static {v9, v2, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/s;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 307
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v4

    invoke-interface {v5, v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->setAdditionalAnnotations(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;

    .line 310
    :cond_b
    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/w$a;->build()Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor"

    .line 298
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 381
    :cond_c
    check-cast v0, Ljava/util/List;

    .line 378
    check-cast v0, Ljava/util/Collection;

    return-object v0

    .line 27071
    :cond_d
    :goto_6
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 275
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final synthetic c(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/util/Collection;
    .locals 1

    const-string v0, "classDescriptor"

    .line 50
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32159
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->a()Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;

    move-result-object v0

    .line 33059
    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/f$b;->b:Z

    if-nez v0, :cond_0

    .line 34036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    goto :goto_2

    .line 32162
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/g;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/LazyJavaClassDescriptor;->a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/f;->getFunctionNames()Ljava/util/Set;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_3

    .line 35036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    .line 50
    :cond_3
    :goto_2
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method
