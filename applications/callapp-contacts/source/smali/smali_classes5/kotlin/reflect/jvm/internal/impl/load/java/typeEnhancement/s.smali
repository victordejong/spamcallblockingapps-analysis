.class public final Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s$a;
    }
.end annotation


# static fields
.field private static final a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

.field private static final b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 220
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->q:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "ENHANCED_NULLABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    .line 221
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/u;->r:Lkotlin/reflect/jvm/internal/impl/c/b;

    const-string v2, "ENHANCED_MUTABILITY_ANNOTATION"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;-><init>(Lkotlin/reflect/jvm/internal/impl/c/b;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    return-void
.end method

.method public static final synthetic a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;
    .locals 2

    .line 3173
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 3176
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/k;-><init>(Ljava/util/List;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object v0

    .line 3175
    :cond_0
    invoke-static {p0}, Lkotlin/a/n;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    return-object p0

    .line 3174
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "At least one Annotations object expected"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
.end method

.method private static final a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c<",
            "TT;>;"
        }
    .end annotation

    .line 181
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;-><init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)V

    return-object v0
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
    .locals 2

    .line 1189
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/p;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1190
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_4

    .line 1192
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/d;

    .line 2021
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->c:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 1194
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s$a;->a:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/f;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 1201
    :cond_1
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->FLEXIBLE_UPPER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;

    if-ne p2, p1, :cond_4

    move-object p1, p0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1202
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->c(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0

    .line 1196
    :cond_2
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;->FLEXIBLE_LOWER:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;

    if-ne p2, p1, :cond_4

    move-object p1, p0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/a/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p0, "mutable"

    .line 1197
    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2081
    move-object p2, p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v0

    .line 2060
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->a:Lkotlin/reflect/jvm/internal/impl/builtins/a/c;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/a/c;->b(Lkotlin/reflect/jvm/internal/impl/c/c;)Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2083
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p0

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p0

    const-string p1, "descriptor.builtIns.getBuiltInClassByFqName(oppositeClassFqName)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1197
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->c(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0

    .line 2082
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Given class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " collection"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1207
    :cond_4
    :goto_1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
    .locals 0

    .line 2211
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/p;->a(Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/o;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3020
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/e;->b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 2213
    :cond_0
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s$a;->b:[I

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/g;->ordinal()I

    move-result p1

    aget p1, p2, p1

    :goto_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 2215
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->b(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0

    .line 2214
    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->b(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0

    .line 2216
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->a(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/checker/SimpleClassicTypeSystemContext;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;

    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/q;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSystemCommonBackendContext;Lkotlin/reflect/jvm/internal/impl/types/model/KotlinTypeMarker;)Z

    move-result p0

    return p0
.end method

.method private static final b(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c<",
            "TT;>;"
        }
    .end annotation

    .line 182
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->a:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;-><init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)V

    return-object v0
.end method

.method private static final c(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c<",
            "TT;>;"
        }
    .end annotation

    .line 183
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/s;->b:Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/b;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/typeEnhancement/c;-><init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)V

    return-object v0
.end method
