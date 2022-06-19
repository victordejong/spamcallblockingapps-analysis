.class public abstract Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;
.super Lkotlin/reflect/jvm/internal/impl/resolve/e/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;,
        Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b;
    }
.end annotation


# static fields
.field static final synthetic c:[Lkotlin/reflect/KProperty;
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
.field private final a:Lkotlin/reflect/jvm/internal/impl/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Lkotlin/reflect/jvm/internal/impl/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;>;"
        }
    .end annotation
.end field

.field final d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

.field final e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

.field final f:Lkotlin/reflect/jvm/internal/impl/f/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lkotlin/reflect/jvm/internal/impl/f/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/h<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lkotlin/reflect/jvm/internal/impl/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Lkotlin/reflect/jvm/internal/impl/f/i;

.field private final k:Lkotlin/reflect/jvm/internal/impl/f/i;

.field private final l:Lkotlin/reflect/jvm/internal/impl/f/i;

.field private final m:Lkotlin/reflect/jvm/internal/impl/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 270
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "functionNamesLazy"

    const-string v5, "getFunctionNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 271
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "propertyNamesLazy"

    const-string v5, "getPropertyNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 272
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "classNamesLazy"

    const-string v4, "getClassNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->c:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V
    .locals 2

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/i;-><init>()V

    .line 60
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 61
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->e:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;

    .line 1127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 68
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$c;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$c;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 2071
    sget-object v1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v1, Ljava/util/List;

    .line 67
    invoke-interface {p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 2127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 76
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$g;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$g;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 3127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 4045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 92
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$f;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->b:Lkotlin/reflect/jvm/internal/impl/f/g;

    .line 4127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 5045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 111
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$e;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/h;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->h:Lkotlin/reflect/jvm/internal/impl/f/h;

    .line 5127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 6045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 122
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$i;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$i;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->i:Lkotlin/reflect/jvm/internal/impl/f/g;

    .line 6127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 7045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 270
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$h;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$h;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->j:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 7127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 8045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 271
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$k;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$k;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->k:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 8127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 9045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 272
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$d;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$d;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->l:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 9127
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 10045
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 293
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$j;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$j;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->m:Lkotlin/reflect/jvm/internal/impl/f/g;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 59
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;Lkotlin/reflect/jvm/internal/impl/load/java/d/n;)Lkotlin/reflect/jvm/internal/impl/descriptors/an;
    .locals 9

    .line 35328
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/n;->o()Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    .line 35329
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v2

    .line 35332
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v1

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/n;->q()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/z;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v4

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/n;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v6

    .line 35333
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 36112
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 37054
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    .line 35333
    move-object v7, p1

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    invoke-interface {v0, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;)Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/n;)Z

    move-result v8

    .line 35331
    invoke-static/range {v1 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/java/b/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;ZLkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Z)Lkotlin/reflect/jvm/internal/impl/load/java/b/g;

    move-result-object v0

    const-string v1, "create(\n            ownerDescriptor, annotations, Modality.FINAL, field.visibility.toDescriptorVisibility(), isVar, field.name,\n            c.components.sourceElementFactory.source(field), /* isConst = */ field.isFinalStatic\n        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    const/4 v1, 0x0

    .line 35308
    invoke-virtual {v0, v1, v1, v1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;Lkotlin/reflect/jvm/internal/impl/descriptors/ap;Lkotlin/reflect/jvm/internal/impl/descriptors/u;Lkotlin/reflect/jvm/internal/impl/descriptors/u;)V

    .line 37343
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 38124
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    .line 37343
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/n;->g()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;->COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-static {v4, v5, v1, v6, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/load/java/a/k;ZLkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/d/w;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    .line 37345
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->d(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->s(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37346
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/n;)Z

    .line 39071
    :cond_1
    sget-object v3, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v3, Ljava/util/List;

    .line 35312
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;)V

    .line 35314
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/bc;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bc;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35316
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 39127
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 40045
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 35316
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$l;

    invoke-direct {v2, p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$l;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;Lkotlin/reflect/jvm/internal/impl/load/java/d/n;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v2}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/j;

    move-result-object v1

    .line 35315
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->a(Lkotlin/reflect/jvm/internal/impl/f/j;)V

    .line 35322
    :cond_2
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 40112
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 41051
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->g:Lkotlin/reflect/jvm/internal/impl/load/java/a/g;

    .line 35322
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/an;

    invoke-interface {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/a/g;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/n;Lkotlin/reflect/jvm/internal/impl/descriptors/an;)V

    return-object v0
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/f/g;
    .locals 0

    .line 59
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->b:Lkotlin/reflect/jvm/internal/impl/f/g;

    return-object p0
.end method

.method protected static a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/w;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/z;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "c"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "function"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "jValueParameters"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v3, Ljava/util/Set;

    .line 217
    move-object v4, v2

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/a/n;->k(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v4

    .line 429
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 430
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 431
    check-cast v8, Lkotlin/a/ad;

    .line 21000
    iget v12, v8, Lkotlin/a/ad;->a:I

    .line 22000
    iget-object v8, v8, Lkotlin/a/ad;->b:Ljava/lang/Object;

    .line 217
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/java/d/z;

    .line 218
    move-object v9, v8

    check-cast v9, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    invoke-static {v0, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v13

    .line 219
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;->COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static {v9, v6, v11, v10, v11}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/load/java/a/k;ZLkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v9

    .line 221
    sget-object v10, Lkotlin/reflect/jvm/internal/impl/load/java/u;->s:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v14, "PARAMETER_NAME_FQ_NAME"

    invoke-static {v10, v14}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13, v10}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v10

    if-nez v10, :cond_0

    move-object v10, v11

    goto :goto_1

    .line 222
    :cond_0
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object v10

    :goto_1
    if-nez v10, :cond_1

    :goto_2
    move-object v10, v11

    goto :goto_3

    .line 432
    :cond_1
    instance-of v14, v10, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;

    if-nez v14, :cond_2

    move-object v10, v11

    :cond_2
    check-cast v10, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;

    if-nez v10, :cond_3

    goto :goto_2

    .line 223
    :cond_3
    invoke-virtual {v10}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/s;->a()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 226
    :goto_3
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/load/java/d/z;->a()Z

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_6

    .line 227
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/load/java/d/z;->e()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    move-result-object v14

    instance-of v6, v14, Lkotlin/reflect/jvm/internal/impl/load/java/d/f;

    if-eqz v6, :cond_4

    move-object v11, v14

    check-cast v11, Lkotlin/reflect/jvm/internal/impl/load/java/d/f;

    :cond_4
    if-eqz v11, :cond_5

    .line 22124
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    .line 229
    invoke-virtual {v6, v11, v9, v15}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->transformArrayType(Lkotlin/reflect/jvm/internal/impl/load/java/d/f;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;Z)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    .line 22129
    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 23059
    iget-object v9, v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 230
    invoke-interface {v9}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v9

    invoke-virtual {v9, v6}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v9

    invoke-static {v6, v9}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v6

    goto :goto_4

    .line 228
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Vararg parameter should be an array: "

    invoke-static {v1, v8}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 23124
    :cond_6
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    .line 232
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/load/java/d/z;->e()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    move-result-object v14

    invoke-virtual {v6, v14, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/d/w;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v6

    .line 24000
    :goto_4
    iget-object v9, v6, Lkotlin/n;->a:Ljava/lang/Object;

    .line 225
    move-object v14, v9

    check-cast v14, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 25000
    iget-object v6, v6, Lkotlin/n;->b:Ljava/lang/Object;

    .line 225
    move-object/from16 v19, v6

    check-cast v19, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 235
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v6

    const-string v9, "equals"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 236
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v15, :cond_7

    .line 25129
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 26059
    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 237
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;->getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v6

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->h()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v6

    invoke-static {v6, v14}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "other"

    .line 243
    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v6

    goto :goto_6

    :cond_7
    if-eqz v10, :cond_9

    .line 244
    move-object v6, v10

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_8

    const/4 v6, 0x1

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_9

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 245
    invoke-static {v10}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v6

    goto :goto_6

    .line 248
    :cond_9
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/load/java/d/z;->d()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v6

    if-nez v6, :cond_a

    const/4 v7, 0x1

    :cond_a
    if-nez v6, :cond_b

    .line 250
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v9, "p"

    invoke-static {v9, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v6

    const-string v9, "identifier(\"p$index\")"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    :goto_6
    const-string v9, "if (function.name.asString() == \"equals\" &&\n                jValueParameters.size == 1 &&\n                c.module.builtIns.nullableAnyType == outType\n            ) {\n                // This is a hack to prevent numerous warnings on Kotlin classes that inherit Java classes: if you override \"equals\" in such\n                // class without this hack, you\'ll be warned that in the superclass the name is \"p0\" (regardless of the fact that it\'s\n                // \"other\" in Any)\n                // TODO: fix Java parameter name loading logic somehow (don\'t always load \"p0\", \"p1\", etc.)\n                Name.identifier(\"other\")\n            } else if (parameterName != null && parameterName.isNotEmpty() && usedNames.add(parameterName)) {\n                Name.identifier(parameterName)\n            } else {\n                // TODO: parameter names may be drawn from attached sources, which is slow; it\'s better to make them lazy\n                val javaName = javaParameter.name\n                if (javaName == null) synthesizedNames = true\n                javaName ?: Name.identifier(\"p$index\")\n            }"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    new-instance v15, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;

    .line 254
    move-object v10, v1

    check-cast v10, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 26112
    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 27054
    iget-object v9, v9, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    .line 264
    check-cast v8, Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    invoke-interface {v9, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;)Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    move-result-object v8

    move-object/from16 v20, v8

    check-cast v20, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-object v9, v15

    move-object v8, v14

    move-object v14, v6

    move-object v6, v15

    move-object v15, v8

    .line 253
    invoke-direct/range {v9 .. v20}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;ILkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 433
    :cond_c
    check-cast v5, Ljava/util/List;

    .line 429
    check-cast v5, Ljava/lang/Iterable;

    .line 266
    invoke-static {v5}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 267
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b;

    invoke-direct {v1, v0, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b;-><init>(Ljava/util/List;Z)V

    return-object v1
.end method

.method protected static a(Lkotlin/reflect/jvm/internal/impl/load/java/d/q;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 4

    const-string v0, "method"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->j()Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->k()Z

    move-result v0

    .line 203
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a/k;->COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/a/k;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v0, v2, v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolverKt;->toAttributes$default(Lkotlin/reflect/jvm/internal/impl/load/java/a/k;ZLkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;

    move-result-object v0

    .line 20124
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;

    .line 204
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->l()Lkotlin/reflect/jvm/internal/impl/load/java/d/w;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->transformJavaType(Lkotlin/reflect/jvm/internal/impl/load/java/d/w;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeAttributes;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Ljava/util/Set;)V
    .locals 6

    .line 41133
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    .line 41411
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 41412
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 41413
    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    .line 41133
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v3, v5, v5, v4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;ZZI)Ljava/lang/String;

    move-result-object v3

    .line 41415
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 41414
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 41418
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41414
    :cond_0
    check-cast v4, Ljava/util/List;

    .line 41422
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 41133
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 41134
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 41135
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 41136
    check-cast v1, Ljava/util/Collection;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$m;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$m;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/i;->a(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v2

    .line 41137
    invoke-interface {p0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 41138
    invoke-interface {p0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/load/java/d/n;)Z
    .locals 1

    .line 338
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/n;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/n;->p()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;)Lkotlin/reflect/jvm/internal/impl/f/h;
    .locals 0

    .line 59
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->h:Lkotlin/reflect/jvm/internal/impl/f/h;

    return-object p0
.end method


# virtual methods
.method protected abstract a(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            ")",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract a(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract a()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;
.end method

.method protected final a(Lkotlin/reflect/jvm/internal/impl/load/java/d/q;)Lkotlin/reflect/jvm/internal/impl/load/java/b/f;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "method"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-object v3, v1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/load/java/d/d;

    invoke-static {v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v2

    .line 163
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 10112
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 11054
    iget-object v5, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->j:Lkotlin/reflect/jvm/internal/impl/load/java/c/b;

    .line 163
    move-object v6, v1

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/d/l;

    invoke-interface {v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/c/b;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/l;)Lkotlin/reflect/jvm/internal/impl/load/java/c/a;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    .line 164
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->f:Lkotlin/reflect/jvm/internal/impl/f/i;

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v7

    invoke-interface {v6, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;->c(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/load/java/d/v;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_0

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->e()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 162
    :goto_0
    invoke-static {v3, v2, v4, v5, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Z)Lkotlin/reflect/jvm/internal/impl/load/java/b/f;

    move-result-object v2

    const-string v3, "createJavaMethod(\n            ownerDescriptor, annotations, method.name, c.components.sourceElementFactory.source(method),\n            declaredMemberIndex().findRecordComponentByName(method.name) != null && method.valueParameters.isEmpty()\n        )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v3, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-object v4, v2

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-object v5, v1

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/load/java/d/y;

    .line 11204
    invoke-static {v3, v4, v5, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/a;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/load/java/d/y;I)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    move-result-object v3

    .line 169
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->i()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 425
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .line 426
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 427
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/load/java/d/x;

    .line 12113
    iget-object v7, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;

    .line 169
    invoke-interface {v7, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/k;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/x;)Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 428
    :cond_1
    check-cast v5, Ljava/util/List;

    .line 170
    move-object v4, v2

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->e()Ljava/util/List;

    move-result-object v6

    invoke-static {v3, v4, v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b;

    move-result-object v4

    .line 172
    invoke-static {v1, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/q;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v6

    .line 12207
    iget-object v7, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b;->a:Ljava/util/List;

    .line 174
    invoke-virtual {v0, v1, v5, v6, v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/load/java/d/q;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;

    move-result-object v5

    .line 13146
    iget-object v6, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;->b:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    .line 178
    :cond_2
    move-object v7, v2

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    sget-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v9

    invoke-static {v7, v6, v9}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v6

    :goto_2
    move-object v10, v6

    .line 180
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v11

    .line 13148
    iget-object v12, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;->d:Ljava/util/List;

    .line 14147
    iget-object v13, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;->c:Ljava/util/List;

    .line 15145
    iget-object v14, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 184
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/y$a;

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->n()Z

    move-result v6

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->o()Z

    move-result v7

    xor-int/2addr v7, v8

    invoke-static {v6, v7}, Lkotlin/reflect/jvm/internal/impl/descriptors/y$a;->a(ZZ)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v15

    .line 185
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/q;->q()Lkotlin/reflect/jvm/internal/impl/descriptors/bf;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/z;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bf;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v16

    .line 15146
    iget-object v1, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;->b:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v1, :cond_3

    .line 187
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    .line 15207
    iget-object v6, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b;->a:Ljava/util/List;

    .line 187
    invoke-static {v6}, Lkotlin/a/n;->e(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    invoke-static {v1}, Lkotlin/a/ai;->a(Lkotlin/n;)Ljava/util/Map;

    move-result-object v1

    goto :goto_3

    .line 189
    :cond_3
    invoke-static {}, Lkotlin/a/ai;->a()Ljava/util/Map;

    move-result-object v1

    :goto_3
    move-object/from16 v17, v1

    move-object v9, v2

    .line 176
    invoke-virtual/range {v9 .. v17}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;

    .line 16149
    iget-boolean v1, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;->e:Z

    .line 16207
    iget-boolean v4, v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$b;->b:Z

    .line 192
    invoke-virtual {v2, v1, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/b/f;->a(ZZ)V

    .line 17150
    iget-object v1, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;->f:Ljava/util/List;

    .line 194
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_4

    .line 18112
    iget-object v1, v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 19049
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->e:Lkotlin/reflect/jvm/internal/impl/load/java/a/j;

    .line 195
    move-object v3, v2

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    .line 19150
    iget-object v4, v5, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;->f:Ljava/util/List;

    .line 195
    invoke-interface {v1, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/a/j;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/util/List;)V

    :cond_4
    return-object v2
.end method

.method protected abstract a(Lkotlin/reflect/jvm/internal/impl/load/java/d/q;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/q;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i$a;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;)V"
        }
    .end annotation
.end method

.method protected a(Lkotlin/reflect/jvm/internal/impl/load/java/b/f;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract b(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
.end method

.method protected b(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/c/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ")V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final c(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/a/a/d;->WHEN_GET_ALL_DESCRIPTORS:Lkotlin/reflect/jvm/internal/impl/a/a/d;

    .line 366
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 368
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 32153
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->i()I

    move-result v2

    .line 368
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 369
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 370
    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    move-object v4, v1

    check-cast v4, Ljava/util/Collection;

    move-object v5, v0

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-virtual {p0, v3, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 377
    :cond_1
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 33149
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->f()I

    move-result v2

    .line 377
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34084
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->b:Ljava/util/List;

    .line 377
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/c$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/c$a;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 378
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->b(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 379
    invoke-interface {p2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    move-object v4, v0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-virtual {p0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 385
    :cond_3
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 34150
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->g()I

    move-result v2

    .line 385
    invoke-virtual {p1, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 35084
    iget-object v2, p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->b:Ljava/util/List;

    .line 385
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/resolve/e/c$a;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/c$a;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 386
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 387
    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 388
    move-object v3, v0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/a/a/b;

    invoke-virtual {p0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 393
    :cond_5
    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected abstract c()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;
.end method

.method protected final d()Lkotlin/reflect/jvm/internal/impl/f/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/reflect/jvm/internal/impl/f/i<",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a:Lkotlin/reflect/jvm/internal/impl/f/i;

    return-object v0
.end method

.method public getClassifierNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 30272
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->l:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->c:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->a:Lkotlin/reflect/jvm/internal/impl/f/i;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->getFunctionNames()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 31071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 283
    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 284
    :cond_0
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->i:Lkotlin/reflect/jvm/internal/impl/f/g;

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->getVariableNames()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 32071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 355
    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 356
    :cond_0
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->m:Lkotlin/reflect/jvm/internal/impl/f/g;

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public getFunctionNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 28270
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->j:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->c:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getVariableNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 29271
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->k:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->c:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 398
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    const-string v1, "Lazy scope for "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
