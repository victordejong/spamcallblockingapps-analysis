.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;
.source "SourceFile"


# static fields
.field static final synthetic b:[Lkotlin/reflect/KProperty;
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
.field public final c:Lkotlin/reflect/jvm/internal/impl/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lkotlin/reflect/jvm/internal/impl/load/java/d/t;

.field private final e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field private final f:Lkotlin/reflect/jvm/internal/impl/f/i;

.field private final g:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;

.field private final h:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

.field private final i:Lkotlin/reflect/jvm/internal/impl/f/i;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 42
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "binaryClasses"

    const-string v5, "getBinaryClasses$descriptors_jvm()Ljava/util/Map;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 66
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "partToFacade"

    const-string v4, "getPartToFacade()Ljava/util/HashMap;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->b:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/t;)V
    .locals 3

    const-string v0, "outerContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jPackage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2059
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 39
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/d/t;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/c/b;)V

    .line 38
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/d/t;

    .line 40
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {p1, v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/f;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 2127
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3045
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 42
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$a;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$a;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 49
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;

    invoke-direct {v0, p1, p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/t;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->g:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;

    .line 3127
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 4045
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 52
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$c;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$c;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 4071
    sget-object v2, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v2, Ljava/util/List;

    .line 51
    invoke-interface {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->c:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 4112
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 5066
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->v:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 6058
    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/utils/e;->h:Z

    if-eqz v0, :cond_0

    .line 59
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p2

    goto :goto_0

    .line 60
    :cond_0
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p2

    .line 59
    :goto_0
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    .line 6127
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 7045
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 66
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$b;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g$b;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->i:Lkotlin/reflect/jvm/internal/impl/f/i;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;
    .locals 0

    .line 36
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)Lkotlin/reflect/jvm/internal/impl/load/java/d/t;
    .locals 0

    .line 36
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/d/t;

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 2

    const-string v0, "jClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->g:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;

    .line 8042
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;

    const-string v1, "javaClass"

    .line 64
    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8145
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    .line 9087
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->g:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/d;

    .line 36
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0
.end method

.method public final d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->b:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public final getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 1

    .line 57
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;->h:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0
.end method

.method public final getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;
    .locals 1

    .line 91
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/p;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/p;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 9028
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/v;->a:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v1, "Lazy Java package fragment: "

    .line 89
    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
