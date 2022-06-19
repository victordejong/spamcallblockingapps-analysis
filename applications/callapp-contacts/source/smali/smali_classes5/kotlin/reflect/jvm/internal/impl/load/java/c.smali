.class public final Lkotlin/reflect/jvm/internal/impl/load/java/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/c$a;
    }
.end annotation


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/utils/e;

.field private final b:Lkotlin/reflect/jvm/internal/impl/f/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/h<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/utils/e;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaTypeEnhancementState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 57
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/c$c;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/c$c;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/c;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->b(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/h;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->b:Lkotlin/reflect/jvm/internal/impl/f/h;

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;Lkotlin/jvm/functions/Function2;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/load/java/a;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/load/java/a;",
            ">;"
        }
    .end annotation

    .line 170
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    if-eqz v0, :cond_1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 216
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 217
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    .line 170
    invoke-direct {p0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a(Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 218
    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 220
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0

    .line 171
    :cond_1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    if-eqz v0, :cond_4

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/a;->values()[Lkotlin/reflect/jvm/internal/impl/load/java/a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-interface {p2, p1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lkotlin/a/n;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8071
    :cond_4
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/c;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
    .locals 2

    .line 9060
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v0

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/b;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9062
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 9185
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 9186
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    .line 9062
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/utils/g;
    .locals 3

    .line 151
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/b;->d()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p1

    :goto_0
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    if-eqz v1, :cond_1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_2

    return-object v0

    .line 154
    :cond_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 7035
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/utils/e;->c:Lkotlin/reflect/jvm/internal/impl/utils/g;

    if-eqz v1, :cond_3

    return-object v1

    .line 7120
    :cond_3
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;->a:Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 156
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7f610e2e

    if-eq v1, v2, :cond_8

    const v2, -0x6d97ad37

    if-eq v1, v2, :cond_6

    const v2, 0x288a86

    if-eq v1, v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "WARN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 158
    :cond_5
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/utils/g;->WARN:Lkotlin/reflect/jvm/internal/impl/utils/g;

    return-object p1

    :cond_6
    const-string v1, "STRICT"

    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    .line 157
    :cond_7
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/utils/g;->STRICT:Lkotlin/reflect/jvm/internal/impl/utils/g;

    return-object p1

    :cond_8
    const-string v1, "IGNORE"

    .line 156
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    :goto_2
    return-object v0

    .line 159
    :cond_9
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/utils/g;->IGNORE:Lkotlin/reflect/jvm/internal/impl/utils/g;

    return-object p1
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;
    .locals 4

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 1053
    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/utils/e;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 76
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 2183
    :cond_1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/b;->g()Ljava/util/Set;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v2

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/b;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_4

    return-object p1

    .line 3066
    :cond_4
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-eq p1, v2, :cond_5

    return-object v1

    .line 3068
    :cond_5
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->b:Lkotlin/reflect/jvm/internal/impl/f/h;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/f/h;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    return-object p1
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/load/java/c$a;
    .locals 6

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 4053
    iget-boolean v0, v0, Lkotlin/reflect/jvm/internal/impl/utils/e;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 109
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v2

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/b;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v3

    invoke-interface {v2, v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->b(Lkotlin/reflect/jvm/internal/impl/c/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    .line 113
    :cond_2
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 114
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/b;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    .line 115
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;->c()Ljava/util/Map;

    move-result-object p1

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 192
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    .line 117
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/java/u;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4176
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/java/c$b;->a:Lkotlin/reflect/jvm/internal/impl/load/java/c$b;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-direct {p0, v3, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a(Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    .line 5071
    :cond_3
    sget-object v3, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v3, Ljava/util/List;

    .line 117
    :goto_2
    check-cast v3, Ljava/lang/Iterable;

    .line 194
    invoke-static {v2, v3}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 196
    :cond_4
    check-cast v2, Ljava/util/List;

    .line 191
    check-cast v2, Ljava/lang/Iterable;

    .line 198
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/load/java/a;

    .line 122
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/load/java/a;->ordinal()I

    move-result v4

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    goto :goto_3

    .line 124
    :cond_5
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 200
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    .line 124
    invoke-virtual {p0, v4}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_6

    goto :goto_5

    :cond_8
    move-object v0, v1

    :goto_5
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    if-nez v0, :cond_9

    return-object v1

    .line 127
    :cond_9
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/c$a;

    invoke-direct {p1, v0, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/c$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;I)V

    return-object p1
.end method

.method public final c(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/utils/g;
    .locals 1

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/utils/g;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 142
    :cond_0
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 6034
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/utils/e;->b:Lkotlin/reflect/jvm/internal/impl/utils/g;

    return-object p1
.end method

.method public final d(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/utils/g;
    .locals 3

    const-string v0, "annotationDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a:Lkotlin/reflect/jvm/internal/impl/utils/e;

    .line 6036
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/utils/e;->d:Ljava/util/Map;

    .line 146
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/utils/g;

    if-eqz v0, :cond_1

    return-object v0

    .line 147
    :cond_1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/utils/g;

    move-result-object p1

    return-object p1
.end method
