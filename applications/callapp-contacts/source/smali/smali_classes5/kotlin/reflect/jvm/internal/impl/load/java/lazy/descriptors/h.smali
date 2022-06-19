.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;
.super Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b;,
        Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;
    }
.end annotation


# instance fields
.field final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

.field private final b:Lkotlin/reflect/jvm/internal/impl/load/java/d/t;

.field private final h:Lkotlin/reflect/jvm/internal/impl/f/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/j<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lkotlin/reflect/jvm/internal/impl/f/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/h<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/d/t;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jPackage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ownerDescriptor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/k;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V

    .line 44
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/t;

    .line 45
    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    .line 1127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 2045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 49
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$d;

    invoke-direct {p3, p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$d;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;)V

    check-cast p3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, p3}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/f/j;

    move-result-object p2

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->h:Lkotlin/reflect/jvm/internal/impl/f/j;

    .line 2127
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 3045
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 54
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;

    invoke-direct {p3, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$c;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p3}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/h;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->i:Lkotlin/reflect/jvm/internal/impl/f/h;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b;
    .locals 2

    if-nez p1, :cond_0

    .line 9113
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$b;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b;

    return-object p0

    .line 9115
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v0

    .line 10015
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    .line 9115
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;->CLASS:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a$a;

    if-ne v0, v1, :cond_3

    .line 10060
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/i;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;

    .line 10112
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/g;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    .line 11048
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->d:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;

    const-string v0, "kotlinClass"

    .line 9116
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12046
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 12047
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    move-result-object p0

    .line 12058
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->s:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;

    .line 12047
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->c()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/f;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 9117
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$a;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b;

    return-object p1

    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$b;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b;

    return-object p0

    .line 9121
    :cond_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$c;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b$c;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$b;

    return-object p0
.end method


# virtual methods
.method protected final a(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;)Ljava/util/Set;
    .locals 1
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

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method protected final a(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .locals 2
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

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 3145
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->b()I

    move-result v0

    .line 153
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    return-object p1

    .line 155
    :cond_0
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->h:Lkotlin/reflect/jvm/internal/impl/f/j;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/f/j;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-eqz p1, :cond_2

    .line 156
    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 186
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 187
    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_1
    check-cast p2, Ljava/util/Set;

    return-object p2

    .line 158
    :cond_2
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->b:Lkotlin/reflect/jvm/internal/impl/load/java/d/t;

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/d;->a()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    :cond_3
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/d/t;->a(Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast p2, Ljava/util/Collection;

    .line 190
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 189
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;

    .line 159
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/ab;->SOURCE:Lkotlin/reflect/jvm/internal/impl/load/java/d/ab;

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/g;->h()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 189
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :cond_6
    check-cast p2, Ljava/util/Set;

    return-object p2
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 132
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1
.end method

.method final a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 3

    .line 135
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/c/g;->b(Lkotlin/reflect/jvm/internal/impl/c/e;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 137
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->h:Lkotlin/reflect/jvm/internal/impl/f/j;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/f/j;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 142
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->i:Lkotlin/reflect/jvm/internal/impl/f/h;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;

    invoke-direct {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h$a;-><init>(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/load/java/d/g;)V

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/f/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    return-object p1
.end method

.method protected final a(Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/c/e;)V
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

.method protected final b(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Set;
    .locals 0
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

    const-string p2, "kindFilter"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5036
    sget-object p1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method protected final bridge synthetic b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 9045
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/g;

    .line 42
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v0
.end method

.method protected final c()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;
    .locals 1

    .line 149
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b$a;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/b;

    return-object v0
.end method

.method public final synthetic getContributedClassifier(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/g;
    .locals 0

    .line 42
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    return-object p1
.end method

.method public final getContributedDescriptors(Lkotlin/reflect/jvm/internal/impl/resolve/e/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .locals 4
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

    .line 177
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 6153
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->i()I

    move-result v0

    .line 177
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a:Lkotlin/reflect/jvm/internal/impl/resolve/e/d$a;

    .line 7145
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->b()I

    move-result v1

    or-int/2addr v0, v1

    .line 177
    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/e/d;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 178
    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 181
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/descriptors/h;->d()Lkotlin/reflect/jvm/internal/impl/f/i;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/f/i;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 195
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 181
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v3, :cond_2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    const-string v3, "it.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_3
    check-cast v0, Ljava/util/List;

    .line 194
    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final getContributedVariables(Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/a/a/b;)Ljava/util/Collection;
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

    const-string p1, "location"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    .line 147
    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method
