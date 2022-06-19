.class public abstract Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;
.super Lkotlin/reflect/jvm/internal/impl/resolve/e/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;,
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;,
        Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b;
    }
.end annotation


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
.field private final a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

.field final c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

.field private final d:Lkotlin/reflect/jvm/internal/impl/f/i;

.field private final e:Lkotlin/reflect/jvm/internal/impl/f/j;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 51
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KDeclarationContainer;

    const-string v4, "classNames"

    const-string v5, "getClassNames$deserialization()Ljava/util/Set;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 54
    new-instance v2, Lkotlin/jvm/internal/aa;

    invoke-static {v0}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "classifierNamesLazy"

    const-string v4, "getClassifierNamesLazy()Ljava/util/Set;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v2, Lkotlin/jvm/internal/z;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->b:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$h;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            ">;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$q;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "functionList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAliasList"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classNames"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/i;-><init>()V

    .line 42
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 2078
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 3040
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    .line 1223
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;->getPreserveDeclarationsOrdering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1224
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b;

    invoke-direct {v0, p0, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$b;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    goto :goto_0

    .line 1226
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;

    invoke-direct {v0, p0, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    .line 49
    :goto_0
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    .line 3096
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 4038
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 51
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$d;

    invoke-direct {p3, p5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$d;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, p3}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->d:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 4096
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 5038
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 54
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$e;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$e;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/j;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->e:Lkotlin/reflect/jvm/internal/impl/f/j;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;
    .locals 0

    .line 41
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;
    .locals 0

    .line 41
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    return-object p0
.end method

.method private final c(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    .line 144
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 9078
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 144
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected final a(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/e/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/b;",
            ")",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;"
        }
    .end annotation

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 6146
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->c()I

    move-result v1

    .line 111
    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {p0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 115
    :cond_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;->a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V

    .line 117
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 6153
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->i()I

    move-result p3

    .line 117
    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 118
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->d()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 119
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    :cond_2
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 7147
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->d()I

    move-result p3

    .line 125
    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 126
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;->c()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 127
    invoke-interface {p2, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    invoke-interface {v1, p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    move-result-object p3

    invoke-static {v2, p3}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_1

    .line 133
    :cond_4
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/utils/a;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method protected abstract a()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/a;
.end method

.method protected abstract a(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method protected a(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/as;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "functions"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lkotlin/reflect/jvm/internal/impl/descriptors/as;)Z
    .locals 1

    const-string v0, "function"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract b()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end method

.method protected b(Lkotlin/reflect/jvm/internal/impl/c/e;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/an;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "descriptors"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Lkotlin/reflect/jvm/internal/impl/c/e;)Z
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected abstract c()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation
.end method

.method public final d()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->d:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->b:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

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

    .line 6054
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->e:Lkotlin/reflect/jvm/internal/impl/f/j;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->b:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/j;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->b(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->c(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    return-object p1

    .line 139
    :cond_0
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;->c()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8095
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    invoke-interface {p2, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    move-result-object p1

    .line 139
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    return-object p1

    :cond_1
    const/4 p1, 0x0

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

    .line 82
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object p1

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

    .line 99
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;->b(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getFunctionNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getVariableNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/h$a;->b()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
