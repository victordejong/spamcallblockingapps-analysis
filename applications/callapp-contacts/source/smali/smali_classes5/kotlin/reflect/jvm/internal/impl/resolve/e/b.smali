.class public final Lkotlin/reflect/jvm/internal/impl/resolve/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/resolve/e/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->b:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->c:[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;-><init>(Ljava/lang/String;[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/resolve/e/b;)[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;
    .locals 0

    .line 29
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->c:[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    return-object p0
.end method


# virtual methods
.method public final getClassifierNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->c:[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    invoke-static {v0}, Lkotlin/a/i;->n([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/j;->a(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->c:[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 93
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    .line 35
    invoke-interface {v4, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 96
    instance-of v5, v4, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->isExpect()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_1
    return-object v4

    :cond_2
    return-object v2
.end method

.method public final getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 5
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

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->c:[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 128
    array-length v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    .line 133
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 44
    invoke-interface {v4, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/g/b/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 4036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    .line 136
    check-cast p1, Ljava/util/Collection;

    return-object p1

    :cond_1
    return-object v1

    .line 130
    :cond_2
    aget-object v0, v0, v2

    .line 44
    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 3071
    :cond_3
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 129
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 5
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

    .line 41
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->c:[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 117
    array-length v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    .line 122
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 41
    invoke-interface {v4, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/g/b/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 3036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    .line 125
    check-cast p1, Ljava/util/Collection;

    return-object p1

    :cond_1
    return-object v1

    .line 119
    :cond_2
    aget-object v0, v0, v2

    .line 41
    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedFunctions(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 2071
    :cond_3
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 118
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
    .locals 5
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

    .line 38
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->c:[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 106
    array-length v1, v0

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    .line 111
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    .line 38
    invoke-interface {v4, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/reflect/jvm/internal/impl/g/b/a;->a(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 2036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    .line 114
    check-cast p1, Ljava/util/Collection;

    return-object p1

    :cond_1
    return-object v1

    .line 108
    :cond_2
    aget-object v0, v0, v2

    .line 38
    invoke-interface {v0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 1071
    :cond_3
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 107
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method public final getFunctionNames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->c:[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    .line 139
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 46
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getFunctionNames()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 141
    invoke-static {v1, v4}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :cond_0
    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method public final getVariableNames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->c:[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    .line 144
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 47
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->getVariableNames()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 146
    invoke-static {v1, v4}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_0
    check-cast v1, Ljava/util/Set;

    return-object v1
.end method

.method public final recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->c:[Lkotlin/reflect/jvm/internal/impl/resolve/e/h;

    .line 149
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 51
    invoke-interface {v3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/resolve/e/h;->recordLookup(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/e/b;->b:Ljava/lang/String;

    return-object v0
.end method
