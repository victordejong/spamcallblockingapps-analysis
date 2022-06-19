.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/h;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/aj;


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
.field final b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

.field final c:Lkotlin/reflect/jvm/internal/impl/c/b;

.field private final d:Lkotlin/reflect/jvm/internal/impl/f/i;

.field private final e:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 37
    new-instance v1, Lkotlin/jvm/internal/aa;

    const-class v2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KDeclarationContainer;

    const-string v3, "fragments"

    const-string v4, "getFragments()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/aa;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v1, Lkotlin/jvm/internal/z;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->a(Lkotlin/jvm/internal/z;)Lkotlin/reflect/m;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;Lkotlin/reflect/jvm/internal/impl/c/b;Lkotlin/reflect/jvm/internal/impl/f/n;)V
    .locals 2

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/c/b;->f()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/h;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    .line 32
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 33
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 37
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$a;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-interface {p3, p1}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->d:Lkotlin/reflect/jvm/internal/impl/f/i;

    .line 41
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/g;

    new-instance p2, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$b;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o$b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, p3, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/g;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/jvm/functions/Function0;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->e:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/c/b;
    .locals 1

    .line 33
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    return-object v0
.end method

.method public final accept(Lkotlin/reflect/jvm/internal/impl/descriptors/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/m<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    invoke-interface {p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/m;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/aj;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 1

    .line 41
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->e:Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object v0
.end method

.method public final bridge synthetic c()Lkotlin/reflect/jvm/internal/impl/descriptors/ab;
    .locals 1

    .line 5032
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 31
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ae;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->d:Lkotlin/reflect/jvm/internal/impl/f/i;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/m;->a(Lkotlin/reflect/jvm/internal/impl/f/i;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    const-string v0, "this"

    .line 31
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4033
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 56
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1033
    :cond_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 57
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2032
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 57
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final synthetic getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 3

    .line 6033
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 6063
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/c/b;->b:Lkotlin/reflect/jvm/internal/impl/c/c;

    .line 6101
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/c/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 7032
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 7033
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 5052
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->d()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const-string v2, "fqName.parent()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->getPackage(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    move-result-object v0

    .line 31
    :goto_0
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 3032
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;

    .line 61
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/t;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 3033
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/o;->c:Lkotlin/reflect/jvm/internal/impl/c/b;

    .line 62
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
