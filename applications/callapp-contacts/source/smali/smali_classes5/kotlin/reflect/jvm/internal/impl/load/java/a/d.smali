.class public final Lkotlin/reflect/jvm/internal/impl/load/java/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/load/java/a/d;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/d;

    const/16 v0, 0xa

    new-array v0, v0, [Lkotlin/n;

    .line 150
    const-class v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "PACKAGE"

    invoke-static {v2, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 151
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    check-cast v1, Ljava/lang/Enum;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->FILE:Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    check-cast v3, Ljava/lang/Enum;

    invoke-static {v1, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v3, "TYPE"

    invoke-static {v3, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 152
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v4, "ANNOTATION_TYPE"

    invoke-static {v4, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 153
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->TYPE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v5, "TYPE_PARAMETER"

    invoke-static {v5, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 154
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->FIELD:Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "FIELD"

    invoke-static {v6, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 155
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->LOCAL_VARIABLE:Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "LOCAL_VARIABLE"

    invoke-static {v6, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v6, 0x5

    aput-object v1, v0, v6

    .line 156
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->VALUE_PARAMETER:Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "PARAMETER"

    invoke-static {v6, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v6, 0x6

    aput-object v1, v0, v6

    .line 157
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->CONSTRUCTOR:Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "CONSTRUCTOR"

    invoke-static {v6, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v6, 0x7

    aput-object v1, v0, v6

    .line 158
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->FUNCTION:Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    check-cast v1, Ljava/lang/Enum;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    check-cast v6, Ljava/lang/Enum;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    check-cast v7, Ljava/lang/Enum;

    invoke-static {v1, v6, v7}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "METHOD"

    invoke-static {v6, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v6, 0x8

    aput-object v1, v0, v6

    .line 159
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->TYPE:Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v6, "TYPE_USE"

    invoke-static {v6, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/16 v6, 0x9

    aput-object v1, v0, v6

    .line 149
    invoke-static {v0}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;->b:Ljava/util/Map;

    new-array v0, v5, [Lkotlin/n;

    .line 181
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/m;->RUNTIME:Lkotlin/reflect/jvm/internal/impl/descriptors/a/m;

    const-string v5, "RUNTIME"

    invoke-static {v5, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    aput-object v1, v0, v2

    .line 182
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/m;->BINARY:Lkotlin/reflect/jvm/internal/impl/descriptors/a/m;

    const-string v2, "CLASS"

    invoke-static {v2, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    aput-object v1, v0, v3

    .line 183
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/m;->SOURCE:Lkotlin/reflect/jvm/internal/impl/descriptors/a/m;

    const-string v2, "SOURCE"

    invoke-static {v2, v1}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    aput-object v1, v0, v4

    .line 180
    invoke-static {v0}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;->c:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/b;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;"
        }
    .end annotation

    const-string v0, "arguments"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    check-cast p0, Ljava/lang/Iterable;

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 205
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/m;

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 196
    check-cast v0, Ljava/lang/Iterable;

    .line 207
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/Collection;

    .line 208
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 209
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/d/m;

    .line 167
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/d/m;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v1

    .line 1162
    :goto_2
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumSet;

    if-nez v1, :cond_3

    .line 2036
    sget-object v1, Lkotlin/a/ab;->a:Lkotlin/a/ab;

    check-cast v1, Ljava/util/Set;

    goto :goto_3

    .line 1162
    :cond_3
    check-cast v1, Ljava/util/Set;

    .line 167
    :goto_3
    check-cast v1, Ljava/lang/Iterable;

    .line 210
    invoke-static {p0, v1}, Lkotlin/a/n;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 212
    :cond_4
    check-cast p0, Ljava/util/List;

    .line 207
    check-cast p0, Ljava/lang/Iterable;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 214
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 215
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;

    .line 169
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->G:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v3

    const-string v4, "topLevel(StandardNames.FqNames.annotationTarget)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/n;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    const-string v4, "identifier(kotlinTarget.name)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 216
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 171
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/a/d$a;->a:Lkotlin/reflect/jvm/internal/impl/load/java/a/d$a;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object p0
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/load/java/d/b;)Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/d/b;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;"
        }
    .end annotation

    .line 188
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/d/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/d/m;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    goto :goto_2

    .line 189
    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/a/d;->c:Ljava/util/Map;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/d/m;->c()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    if-nez p0, :cond_2

    move-object p0, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/m;

    if-nez p0, :cond_3

    goto :goto_2

    .line 190
    :cond_3
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->H:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object v0

    const-string v2, "topLevel(StandardNames.FqNames.annotationRetention)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/m;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p0

    const-string v2, "identifier(retention.name)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/j;-><init>(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/c/e;)V

    .line 188
    :goto_2
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    return-object v1
.end method
