.class public final Lkotlin/reflect/jvm/internal/impl/e/d;
.super Lkotlin/reflect/jvm/internal/impl/e/c;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/e/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/e/d$a;,
        Lkotlin/reflect/jvm/internal/impl/e/d$b;
    }
.end annotation


# instance fields
.field final l:Lkotlin/reflect/jvm/internal/impl/e/g;

.field private final m:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/e/g;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/c;-><init>()V

    .line 31
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 4032
    iget-boolean p1, p1, Lkotlin/reflect/jvm/internal/impl/e/g;->b:Z

    .line 34
    sget-boolean v0, Lkotlin/x;->a:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Assertion failed"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 37
    :cond_1
    :goto_0
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/e/d$d;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/e/d$d;-><init>(Lkotlin/reflect/jvm/internal/impl/e/d;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/h;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->m:Lkotlin/Lazy;

    return-void
.end method

.method private A()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 27088
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->r:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private B()Lkotlin/reflect/jvm/internal/impl/e/c$l;
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 28096
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->z:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/c$l;

    return-object v0
.end method

.method private C()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 29078
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->j:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private D()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 30090
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->t:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final E()Lkotlin/reflect/jvm/internal/impl/e/d;
    .locals 1

    .line 37
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->m:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/d;

    return-object v0
.end method

.method private final F()Ljava/lang/String;
    .locals 2

    .line 60
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->z()Lkotlin/reflect/jvm/internal/impl/e/m;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/d$b;->a:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/m;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "&rarr;"

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    const-string v0, "->"

    .line 61
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 45
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->z()Lkotlin/reflect/jvm/internal/impl/e/m;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/d$b;->a:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/m;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 47
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<b>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</b>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 50719
    invoke-static {p0, p1, v0}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50720
    invoke-static {p2, p3, v0}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1161
    invoke-static {p4, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1163
    invoke-static {p0, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object p1

    .line 1165
    :cond_0
    invoke-static {p0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "!"

    .line 1166
    invoke-static {p1, p0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "typeArguments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    .line 34057
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string p1, ">"

    .line 34058
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Ljava/lang/String;
    .locals 2

    const-string v0, "klass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->isError(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/g;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 108
    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->k()Lkotlin/reflect/jvm/internal/impl/e/b;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/e/c;

    invoke-interface {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/e/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/e/c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 469
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;->a()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    const-string p1, ", "

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    const-string p1, "{"

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string p1, "}"

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/e/d$e;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/e/d$e;-><init>(Lkotlin/reflect/jvm/internal/impl/e/d;)V

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x18

    invoke-static/range {v0 .. v7}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 470
    :cond_0
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/c;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/a;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    const/4 v1, 0x0

    .line 49041
    invoke-virtual {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/e/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "@"

    .line 470
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 471
    :cond_1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;

    if-eqz v0, :cond_5

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b;

    .line 472
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$a;

    const-string v1, "::class"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$a;

    .line 49171
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$a;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 473
    :cond_2
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$b;

    if-eqz v0, :cond_4

    .line 474
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$b;

    .line 50167
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;

    .line 50168
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;->a:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 474
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->f()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "classValue.classId.asSingleFqName().asString()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50169
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/o$b$b;->a:Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;

    .line 50170
    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/f;->b:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "kotlin.Array<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 476
    :cond_3
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 479
    :cond_5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Ljava/lang/String;
    .locals 3

    const-string v0, "typeConstructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    .line 288
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    :goto_1
    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    .line 289
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 290
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "Unexpected classifier: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;->c()Ljava/util/Map;

    move-result-object v0

    .line 43000
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 43102
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/e/g;->F:Lkotlin/properties/ReadWriteProperty;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v4, 0x20

    aget-object v3, v3, v4

    invoke-interface {v2, v1, v3}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 454
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    move-object p1, v2

    goto :goto_2

    .line 455
    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getValueParameters()Ljava/util/List;

    move-result-object p1

    :goto_2
    const/16 v1, 0xa

    if-nez p1, :cond_3

    goto :goto_5

    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    .line 1181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1182
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 456
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1183
    :cond_5
    check-cast v2, Ljava/util/List;

    .line 456
    check-cast v2, Ljava/lang/Iterable;

    .line 1184
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 1185
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1186
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 457
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1187
    :cond_6
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :goto_5
    if-nez v2, :cond_7

    .line 44071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 459
    :cond_7
    move-object p1, v2

    check-cast p1, Ljava/lang/Iterable;

    .line 1188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .line 1189
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/c/e;

    const-string v7, "it"

    .line 459
    invoke-static {v6, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_8

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1190
    :cond_9
    check-cast v3, Ljava/util/List;

    .line 1188
    check-cast v3, Ljava/lang/Iterable;

    .line 1191
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v3, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 1192
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1193
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/c/e;

    .line 459
    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v4

    const-string v6, " = ..."

    invoke-static {v4, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1194
    :cond_a
    check-cast p1, Ljava/util/List;

    .line 460
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 1195
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 1196
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1197
    check-cast v1, Ljava/util/Map$Entry;

    .line 461
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/c/e;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_b
    const-string v1, "..."

    :goto_9
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1198
    :cond_c
    check-cast v3, Ljava/util/List;

    .line 464
    check-cast p1, Ljava/util/Collection;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {p1, v3}, Lkotlin/a/n;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const-string v0, "$this$sorted"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44998
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-gt v1, v5, :cond_d

    invoke-static {p1}, Lkotlin/a/n;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_d
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Comparable;

    .line 47551
    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Comparable;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>"

    .line 45000
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    const-string v0, "$this$sort"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48400
    array-length v0, p1

    if-le v0, v5, :cond_e

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_e
    invoke-static {p1}, Lkotlin/a/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/x;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;
    .locals 3

    .line 501
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v0, :cond_1

    .line 502
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-ne p0, v0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0

    .line 504
    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/x;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v1, :cond_2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0

    .line 505
    :cond_3
    instance-of v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    if-nez v1, :cond_4

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0

    .line 506
    :cond_4
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "this.overriddenDescriptors"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 507
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v1

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-eq v1, v2, :cond_5

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0

    .line 509
    :cond_5
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-ne v0, v1, :cond_7

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 510
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p0

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-ne p0, v0, :cond_6

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0

    :cond_6
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0

    .line 512
    :cond_7
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    return-object p0
.end method

.method private static a(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1145
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 1146
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1147
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;",
            ">;)V"
        }
    .end annotation

    .line 298
    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    move-object v1, p1

    check-cast v1, Ljava/lang/Appendable;

    const-string p1, ", "

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/e/d$c;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/e/d$c;-><init>(Lkotlin/reflect/jvm/internal/impl/e/d;)V

    move-object v7, p1

    check-cast v7, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x3c

    invoke-static/range {v0 .. v8}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Appendable;

    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V
    .locals 6

    .line 406
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/e;->ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 408
    :cond_0
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-eqz v0, :cond_1

    .line 39000
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/g;->d()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 40000
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 40106
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->H:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 41000
    :goto_0
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 41110
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/e/g;->I:Lkotlin/properties/ReadWriteProperty;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v4, 0x24

    aget-object v3, v3, v4

    invoke-interface {v2, v1, v3}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 411
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;

    .line 412
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 41427
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;->b()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v3

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->D:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    .line 414
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 416
    :cond_3
    invoke-virtual {p0, v2, p3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42000
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 42104
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/e/g;->G:Lkotlin/properties/ReadWriteProperty;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v5, 0x21

    aget-object v4, v4, v5

    invoke-interface {v3, v2, v4}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0xa

    .line 418
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "append(\'\\n\')"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, " "

    .line 420
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/al;)V
    .locals 2

    .line 36067
    iget-object v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/al;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/al;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 279
    :cond_0
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/al;)V

    const/16 v0, 0x2e

    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37065
    iget-object v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/al;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    .line 281
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v0

    const-string v1, "possiblyInnerType.classifierDescriptor.name"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    .line 38065
    iget-object v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/al;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    .line 282
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    const-string v1, "possiblyInnerType.classifierDescriptor.typeConstructor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38066
    :cond_1
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/al;->b:Ljava/util/List;

    .line 284
    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->z()Lkotlin/reflect/jvm/internal/impl/e/m;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/m;->HTML:Lkotlin/reflect/jvm/internal/impl/e/m;

    if-ne v0, v1, :cond_0

    const-string v0, "<font color=\"808080\"><i>"

    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, " /* = "

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;->getExpandedType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    const-string p2, " */"

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->z()Lkotlin/reflect/jvm/internal/impl/e/m;

    move-result-object p2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/e/m;->HTML:Lkotlin/reflect/jvm/internal/impl/e/m;

    if-ne p2, v0, :cond_1

    const-string p2, "</i></font>"

    .line 141
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 2

    .line 116
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 118
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->u()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 119
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;->getExpandedType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-void

    .line 122
    :cond_1
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;->getAbbreviation()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 123
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->v()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 124
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/AbbreviatedType;)V

    :cond_2
    return-void

    .line 130
    :cond_3
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)V
    .locals 2

    const-string v0, "<this>"

    .line 267
    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35076
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object v0

    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ay;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/h;I)Lkotlin/reflect/jvm/internal/impl/descriptors/al;

    move-result-object v0

    if-nez v0, :cond_1

    .line 269
    invoke-direct {p0, p3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 274
    :cond_1
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/al;)V

    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V
    .locals 3

    .line 157
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->CANT_INFER_FUNCTION_PARAM_TYPE:Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "???"

    if-nez v0, :cond_5

    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isDontCarePlaceholder(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;->isUninferredParameter(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$UninferredParameterTypeConstructor;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$UninferredParameterTypeConstructor;->getTypeParameterDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/c/e;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "type.constructor as UninferredParameterTypeConstructor).typeParameterDescriptor.name.toString()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 165
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 170
    :cond_2
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 171
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-void

    .line 174
    :cond_3
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 175
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->d(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-void

    .line 177
    :cond_4
    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    return-void

    .line 158
    :cond_5
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 547
    invoke-direct {p0, p3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    .line 548
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private final a(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;Z",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 50619
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 50716
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->B:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/k;

    .line 50614
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/d$b;->b:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/k;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p2, 0x3

    if-ne v0, p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 50617
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    if-nez p2, :cond_0

    .line 797
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    .line 798
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->B()Lkotlin/reflect/jvm/internal/impl/e/c$l;

    move-result-object v0

    invoke-interface {v0, p3}, Lkotlin/reflect/jvm/internal/impl/e/c$l;->a(Ljava/lang/StringBuilder;)V

    .line 799
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 800
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->B()Lkotlin/reflect/jvm/internal/impl/e/c$l;

    move-result-object v5

    invoke-interface {v5, v4, p3}, Lkotlin/reflect/jvm/internal/impl/e/c$l;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ba;Ljava/lang/StringBuilder;)V

    .line 801
    invoke-direct {p0, v4, v2, p3, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ba;ZLjava/lang/StringBuilder;Z)V

    .line 802
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->B()Lkotlin/reflect/jvm/internal/impl/e/c$l;

    move-result-object v5

    invoke-interface {v5, v4, v0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/e/c$l;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ba;IILjava/lang/StringBuilder;)V

    move v0, v3

    goto :goto_1

    .line 804
    :cond_4
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->B()Lkotlin/reflect/jvm/internal/impl/e/c$l;

    move-result-object p1

    invoke-interface {p1, p3}, Lkotlin/reflect/jvm/internal/impl/e/c$l;->b(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private final a(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 771
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 773
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 775
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    .line 776
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object v3

    const-string v4, "typeParameter.upperBounds"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 777
    invoke-static {v3}, Lkotlin/a/n;->f(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1209
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1210
    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 778
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v7

    const-string v8, "typeParameter.name"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v7, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "it"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 781
    :cond_2
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_3

    const-string p1, " "

    .line 782
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "where"

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    move-object v3, p2

    check-cast v3, Ljava/lang/Appendable;

    const-string p1, ", "

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x7c

    invoke-static/range {v2 .. v10}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Appendable;

    :cond_3
    return-void
.end method

.method private final a(Ljava/util/List;Ljava/lang/StringBuilder;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Z)V"
        }
    .end annotation

    .line 633
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 635
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string v0, "<"

    .line 50513
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-direct {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string p1, ">"

    .line 50514
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 638
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    const-string p1, " "

    .line 640
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 1054
    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/b;->b()Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object p1

    const-string p2, "fqName.toUnsafe()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/c/c;)Ljava/lang/String;

    move-result-object p1

    .line 1056
    move-object p2, p1

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const-string p2, " "

    .line 1057
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Ljava/lang/StringBuilder;Z)V
    .locals 6

    if-eqz p3, :cond_0

    const-string v0, "<"

    .line 50510
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    .line 593
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->isReified()Z

    move-result v0

    const-string v1, "reified"

    invoke-direct {p0, p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 597
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/Variance;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 598
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p2, v1, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 600
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    const/4 v1, 0x0

    .line 50511
    invoke-direct {p0, p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 602
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-direct {p0, v0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;Z)V

    .line 603
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "upperBound"

    const-string v4, " : "

    if-le v0, v3, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    if-ne v0, v3, :cond_5

    .line 605
    :cond_4
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 606
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->q(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 607
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_8

    .line 611
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;->getUpperBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 612
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->q(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v3, :cond_7

    .line 616
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const-string v3, " & "

    .line 618
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :goto_2
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    :goto_3
    if-eqz p3, :cond_9

    const-string p1, ">"

    .line 50512
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 628
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 50515
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 50613
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->C:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 711
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, " on "

    .line 713
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/aq;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    const-string v0, "receiver.type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 516
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-eq v0, v1, :cond_2

    .line 517
    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->q()Lkotlin/reflect/jvm/internal/impl/e/j;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/j;->RENDER_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/e/j;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->OPEN:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-ne v0, v1, :cond_1

    .line 518
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 522
    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v0

    const-string v1, "callable.modality"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/x;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/y;Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V

    :cond_2
    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/ba;ZLjava/lang/StringBuilder;Z)V
    .locals 10

    if-eqz p4, :cond_0

    const-string v0, "value-parameter"

    .line 821
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    .line 825
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->b()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*/ "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_1
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    const/4 v1, 0x0

    .line 50717
    invoke-direct {p0, p3, v0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 829
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->f()Z

    move-result v0

    const-string v2, "crossinline"

    invoke-direct {p0, p3, v0, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 830
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->h()Z

    move-result v0

    const-string v2, "noinline"

    invoke-direct {p0, p3, v0, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 832
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->t()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 833
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    move-result-object v0

    instance-of v4, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    if-eqz v4, :cond_2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v9, :cond_5

    .line 835
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->h()Z

    move-result v0

    const-string v1, "actual"

    invoke-direct {p0, p3, v0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 838
    :cond_5
    move-object v5, p1

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/bc;

    move-object v4, p0

    move v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bc;ZLjava/lang/StringBuilder;ZZ)V

    .line 841
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->l()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 50718
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/e/g;->b()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 842
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->c()Z

    move-result p2

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/b/a;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ba;)Z

    move-result p2

    :goto_3
    if-eqz p2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_8

    .line 844
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->l()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, " = "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/bc;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 936
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/bc;->j()Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, " = "

    .line 938
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/bc;Ljava/lang/StringBuilder;Z)V
    .locals 0

    if-nez p3, :cond_0

    .line 849
    instance-of p3, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    if-nez p3, :cond_2

    .line 850
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/bc;->at_()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "var"

    goto :goto_0

    :cond_1
    const-string p1, "val"

    :goto_0
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/bc;ZLjava/lang/StringBuilder;ZZ)V
    .locals 5

    .line 861
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/bc;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    const-string v1, "variable.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->d()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    if-eqz v2, :cond_3

    const/4 v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    const-string v4, "vararg"

    .line 865
    invoke-direct {p0, p3, v3, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez p5, :cond_4

    if-eqz p4, :cond_5

    .line 867
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->y()Z

    move-result v3

    if-nez v3, :cond_5

    .line 868
    :cond_4
    invoke-direct {p0, p1, p3, p5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bc;Ljava/lang/StringBuilder;Z)V

    :cond_5
    if-eqz p2, :cond_6

    .line 872
    move-object p2, p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-direct {p0, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;Z)V

    const-string p2, ": "

    .line 873
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_6
    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    invoke-direct {p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bc;Ljava/lang/StringBuilder;)V

    .line 880
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->C()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    const-string p1, " /*"

    .line 881
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/h;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 957
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "classifier.declaredTypeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 958
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getParameters()Ljava/util/List;

    move-result-object v1

    const-string v2, "classifier.typeConstructor.parameters"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->C()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/h;->isInner()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le p1, v2, :cond_0

    const-string p1, " /*captured type parameters: "

    .line 961
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string p1, "*/"

    .line 963
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;Z)V
    .locals 1

    .line 80
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p1

    const-string v0, "descriptor.name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 572
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isSuspend()Z

    move-result p1

    const-string v0, "suspend"

    invoke-direct {p0, p2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/x;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 553
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/x;->isExternal()Z

    move-result v0

    const-string v1, "external"

    invoke-direct {p0, p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 554
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/e;->EXPECT:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/x;->isExpect()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "expect"

    invoke-direct {p0, p2, v0, v3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/e/e;->ACTUAL:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/x;->isActual()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string p1, "actual"

    invoke-direct {p0, p2, v1, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/y;Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V
    .locals 4

    .line 50254
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 50337
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->n:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0xe

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    if-ne p1, p3, :cond_0

    return-void

    .line 497
    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object p3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/e/e;->MODALITY:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 405
    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    return-void
.end method

.method private static synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 1

    .line 265
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    .line 263
    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 52574
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->c()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    const-string v1, "package-fragment"

    invoke-direct {p0, v0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 52580
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " in "

    .line 52576
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52577
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;Z)V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/aj;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 52581
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object v0

    const-string v1, "package"

    invoke-direct {p0, v0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/c/b;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 52587
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " in context of "

    .line 52583
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52584
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;Z)V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/am;Ljava/lang/StringBuilder;)V
    .locals 0

    .line 51037
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/x;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Ljava/lang/StringBuilder;)V
    .locals 6

    .line 50723
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->y()Z

    move-result v0

    const-string v1, "property.typeParameters"

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 50724
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->x()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_6

    .line 50748
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/e/e;->ANNOTATIONS:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50750
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    const/4 v4, 0x0

    .line 51035
    invoke-direct {p0, p2, v0, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 50752
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;->FIELD:Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;

    invoke-direct {p0, p2, v0, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 50753
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->f()Lkotlin/reflect/jvm/internal/impl/descriptors/u;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;->PROPERTY_DELEGATE_FIELD:Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;

    invoke-direct {p0, p2, v0, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 50755
    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->e()Lkotlin/reflect/jvm/internal/impl/e/l;

    move-result-object v0

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/e/l;->NONE:Lkotlin/reflect/jvm/internal/impl/e/l;

    if-ne v0, v4, :cond_3

    .line 50756
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/ao;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 50757
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;->PROPERTY_GETTER:Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;

    invoke-direct {p0, p2, v0, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 50759
    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/ap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 50761
    move-object v4, v0

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;->PROPERTY_SETTER:Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;

    invoke-direct {p0, p2, v4, v5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 50763
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ap;->getValueParameters()Ljava/util/List;

    move-result-object v0

    const-string v4, "setter.valueParameters"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/a/n;->i(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    const-string v4, "it"

    .line 50764
    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;->SETTER_PARAMETER:Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;

    invoke-direct {p0, p2, v0, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 50726
    :cond_3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    const-string v4, "property.visibility"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/lang/StringBuilder;)Z

    .line 50727
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/e/e;->CONST:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->ar_()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    const-string v4, "const"

    invoke-direct {p0, p2, v0, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 50728
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/x;Ljava/lang/StringBuilder;)V

    .line 50729
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/lang/StringBuilder;)V

    .line 50730
    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/lang/StringBuilder;)V

    .line 50731
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/e/e;->LATEINIT:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->l()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    const-string v5, "lateinit"

    invoke-direct {p0, p2, v4, v5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 50732
    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/lang/StringBuilder;)V

    .line 50734
    :cond_6
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/bc;

    .line 51036
    invoke-direct {p0, v0, p2, v3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bc;Ljava/lang/StringBuilder;Z)V

    .line 50735
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 50736
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/lang/StringBuilder;)V

    .line 50739
    :cond_7
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-direct {p0, v0, p2, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;Z)V

    const-string v0, ": "

    .line 50740
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    const-string v2, "property.type"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50742
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/lang/StringBuilder;)V

    .line 50744
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/bc;

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/bc;Ljava/lang/StringBuilder;)V

    .line 50746
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/an;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/ax;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 52951
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    const/4 v1, 0x0

    .line 52962
    invoke-direct {p0, p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 52952
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    const-string v1, "typeAlias.visibility"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/lang/StringBuilder;)Z

    .line 52953
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/x;Ljava/lang/StringBuilder;)V

    const-string v0, "typealias"

    .line 52954
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52955
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;Z)V

    .line 52957
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "typeAlias.declaredTypeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 52958
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/h;Ljava/lang/StringBuilder;)V

    const-string v0, " = "

    .line 52960
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;->a()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1, v0, p2, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ba;ZLjava/lang/StringBuilder;Z)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/lang/StringBuilder;)V
    .locals 11

    .line 52588
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52590
    :goto_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->y()Z

    move-result v1

    const-string v4, "companion object"

    if-nez v1, :cond_d

    .line 52591
    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    const/4 v5, 0x0

    .line 52636
    invoke-direct {p0, p2, v1, v5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    if-nez v0, :cond_1

    .line 52593
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v1

    const-string v5, "klass.visibility"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/lang/StringBuilder;)Z

    .line 52595
    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v1

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    if-ne v1, v5, :cond_2

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v1

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-eq v1, v5, :cond_4

    .line 52596
    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isSingleton()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v1

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->FINAL:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-eq v1, v5, :cond_4

    .line 52598
    :cond_3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v1

    const-string v5, "klass.modality"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    invoke-static {v5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/x;)Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v5

    invoke-direct {p0, v1, p2, v5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/y;Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/y;)V

    .line 52600
    :cond_4
    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    invoke-direct {p0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/x;Ljava/lang/StringBuilder;)V

    .line 52601
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v1

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/e/e;->INNER:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isInner()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    const-string v5, "inner"

    invoke-direct {p0, p2, v1, v5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 52602
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v1

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/e/e;->DATA:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isData()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    const-string v5, "data"

    invoke-direct {p0, p2, v1, v5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 52603
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v1

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/e/e;->INLINE:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isInline()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    const-string v5, "inline"

    invoke-direct {p0, p2, v1, v5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 52604
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v1

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/e/e;->VALUE:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    const-string v5, "value"

    invoke-direct {p0, p2, v1, v5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 52605
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v1

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/e/e;->FUN:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isFun()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    const-string v5, "fun"

    invoke-direct {p0, p2, v1, v5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 52637
    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    const-string v5, "classifier"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52640
    instance-of v5, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ax;

    if-eqz v5, :cond_a

    const-string v1, "typealias"

    goto :goto_6

    .line 52642
    :cond_a
    instance-of v5, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v5, :cond_c

    .line 52643
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->isCompanionObject()Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v1, v4

    goto :goto_6

    .line 52645
    :cond_b
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v1

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/e/c$a$a;->a:[I

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->ordinal()I

    move-result v1

    aget v1, v5, v1

    packed-switch v1, :pswitch_data_0

    .line 52651
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    const-string v1, "enum entry"

    goto :goto_6

    :pswitch_1
    const-string v1, "annotation class"

    goto :goto_6

    :pswitch_2
    const-string v1, "object"

    goto :goto_6

    :pswitch_3
    const-string v1, "enum class"

    goto :goto_6

    :pswitch_4
    const-string v1, "interface"

    goto :goto_6

    :pswitch_5
    const-string v1, "class"

    .line 52637
    :goto_6
    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 52654
    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Unexpected classifier: "

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 52609
    :cond_d
    :goto_7
    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->g(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 52610
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->y()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;)V

    .line 52611
    :cond_e
    invoke-direct {p0, v1, p2, v3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;Z)V

    goto :goto_8

    .line 52672
    :cond_f
    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 52771
    iget-object v6, v5, Lkotlin/reflect/jvm/internal/impl/e/g;->D:Lkotlin/properties/ReadWriteProperty;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v8, 0x1e

    aget-object v7, v7, v8

    invoke-interface {v6, v5, v7}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 52657
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->y()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 52658
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52660
    :cond_10
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;)V

    .line 52661
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v4

    if-eqz v4, :cond_11

    const-string v5, "of "

    .line 52663
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52664
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    const-string v5, "containingDeclaration.name"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52667
    :cond_11
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->C()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v4

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/c/g;->c:Lkotlin/reflect/jvm/internal/impl/c/e;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 52668
    :cond_12
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->y()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;)V

    .line 52669
    :cond_13
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    const-string v4, "descriptor.name"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    :goto_8
    if-nez v0, :cond_18

    .line 52618
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDeclaredTypeParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "klass.declaredTypeParameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52619
    invoke-direct {p0, v0, p2, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 52620
    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    invoke-direct {p0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/h;Ljava/lang/StringBuilder;)V

    .line 52622
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/e;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/e;->isSingleton()Z

    move-result v1

    if-nez v1, :cond_15

    .line 52772
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 52848
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/e/g;->i:Lkotlin/properties/ReadWriteProperty;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-interface {v2, v1, v4}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 52623
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v1

    if-eqz v1, :cond_15

    const-string v2, " "

    .line 52625
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52626
    move-object v2, v1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    invoke-static {p0, p2, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;)V

    .line 52627
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v2

    const-string v4, "primaryConstructor.visibility"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/lang/StringBuilder;)Z

    const-string v2, "constructor"

    .line 52628
    invoke-direct {p0, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52629
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getValueParameters()Ljava/util/List;

    move-result-object v2

    const-string v4, "primaryConstructor.valueParameters"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->hasSynthesizedParameterNames()Z

    move-result v1

    invoke-direct {p0, v2, v1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    .line 52860
    :cond_15
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 52950
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/e/g;->u:Lkotlin/properties/ReadWriteProperty;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v5, 0x15

    aget-object v4, v4, v5

    invoke-interface {v2, v1, v4}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_17

    .line 52851
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getDefaultType()Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->n(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 52853
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getTypeConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getSupertypes()Ljava/util/Collection;

    move-result-object p1

    const-string v1, "klass.typeConstructor.supertypes"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52854
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v1, v3, :cond_16

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->o(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_9

    .line 52856
    :cond_16
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;)V

    const-string v1, ": "

    .line 52857
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52858
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    move-object v3, p2

    check-cast v3, Ljava/lang/Appendable;

    const-string p1, ", "

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance p1, Lkotlin/reflect/jvm/internal/impl/e/d$g;

    invoke-direct {p1, p0}, Lkotlin/reflect/jvm/internal/impl/e/d$g;-><init>(Lkotlin/reflect/jvm/internal/impl/e/d;)V

    move-object v9, p1

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/16 v10, 0x3c

    invoke-static/range {v2 .. v10}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Appendable;

    .line 52634
    :cond_17
    :goto_9
    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/List;Ljava/lang/StringBuilder;)V

    :cond_18
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/j;Ljava/lang/StringBuilder;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 51895
    move-object/from16 v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    const/4 v3, 0x0

    .line 52372
    invoke-direct {v0, v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 51896
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/e/g;->f()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v2

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/descriptors/y;->SEALED:Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    if-eq v2, v5, :cond_1

    .line 51897
    :cond_0
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v2

    const-string v5, "constructor.visibility"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 51898
    :goto_0
    move-object/from16 v5, p1

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-direct {v0, v5, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/lang/StringBuilder;)V

    .line 52373
    iget-object v5, v0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 52488
    iget-object v6, v5, Lkotlin/reflect/jvm/internal/impl/e/g;->K:Lkotlin/properties/ReadWriteProperty;

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v8, 0x27

    aget-object v7, v7, v8

    invoke-interface {v6, v5, v7}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    .line 51900
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_4

    const-string v5, "constructor"

    .line 51902
    invoke-direct {v0, v5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51904
    :cond_4
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/h;

    move-result-object v5

    const-string v6, "constructor.containingDeclaration"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51905
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->w()Z

    move-result v6

    const-string v7, "constructor.typeParameters"

    if-eqz v6, :cond_6

    if-eqz v2, :cond_5

    const-string v2, " "

    .line 51907
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51909
    :cond_5
    move-object v2, v5

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-direct {v0, v2, v1, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;Z)V

    .line 51910
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1, v3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 51913
    :cond_6
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->getValueParameters()Ljava/util/List;

    move-result-object v2

    const-string v6, "constructor.valueParameters"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->hasSynthesizedParameterNames()Z

    move-result v6

    invoke-direct {v0, v2, v6, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    .line 52489
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 52573
    iget-object v6, v2, Lkotlin/reflect/jvm/internal/impl/e/g;->o:Lkotlin/properties/ReadWriteProperty;

    sget-object v8, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v9, 0xf

    aget-object v8, v8, v9

    invoke-interface {v6, v2, v8}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 51915
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->d()Z

    move-result v2

    if-nez v2, :cond_a

    instance-of v2, v5, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v2, :cond_a

    .line 51916
    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->getUnsubstitutedPrimaryConstructor()Lkotlin/reflect/jvm/internal/impl/descriptors/c;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 51918
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/c;->getValueParameters()Ljava/util/List;

    move-result-object v2

    const-string v5, "primaryConstructor.valueParameters"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 52369
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 52370
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 51919
    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->c()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-interface {v8}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->d()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v8

    if-nez v8, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    if-eqz v8, :cond_7

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 52371
    :cond_9
    check-cast v5, Ljava/util/List;

    .line 51921
    move-object v2, v5

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-eqz v2, :cond_a

    const-string v2, " : "

    .line 51922
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "this"

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51923
    move-object v8, v5

    check-cast v8, Ljava/lang/Iterable;

    const-string v2, ", "

    move-object v9, v2

    check-cast v9, Ljava/lang/CharSequence;

    const-string v2, "("

    move-object v10, v2

    check-cast v10, Ljava/lang/CharSequence;

    const-string v2, ")"

    move-object v11, v2

    check-cast v11, Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/d$f;->a:Lkotlin/reflect/jvm/internal/impl/e/d$f;

    move-object v14, v2

    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/16 v15, 0x18

    invoke-static/range {v8 .. v15}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51928
    :cond_a
    invoke-direct/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->w()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 51929
    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/j;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v7}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/List;Ljava/lang/StringBuilder;)V

    :cond_b
    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;)V
    .locals 1

    const/4 v0, 0x1

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/e/d;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/lang/StringBuilder;)V
    .locals 7

    .line 51039
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->y()Z

    move-result v0

    const-string v1, "function.typeParameters"

    const/4 v2, 0x1

    if-nez v0, :cond_c

    .line 51040
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->x()Z

    move-result v0

    if-nez v0, :cond_b

    .line 51041
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    const/4 v3, 0x0

    .line 51088
    invoke-direct {p0, p2, v0, v3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 51042
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v0

    const-string v3, "function.visibility"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/lang/StringBuilder;)Z

    .line 51043
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/lang/StringBuilder;)V

    .line 51045
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51046
    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/x;

    invoke-direct {p0, v3, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/x;Ljava/lang/StringBuilder;)V

    .line 51049
    :cond_0
    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/lang/StringBuilder;)V

    .line 51051
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->m()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 51090
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isOperator()Z

    move-result v3

    const-string v4, "functionDescriptor.overriddenDescriptors"

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/Iterable;

    .line 51730
    move-object v6, v3

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 51731
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    .line 51090
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isOperator()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_3

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->i()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 51092
    :goto_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isInfix()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    .line 51733
    move-object v4, v6

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 51734
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/jvm/internal/impl/descriptors/w;

    .line 51092
    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isInfix()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_7

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->i()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const/4 v5, 0x1

    .line 51094
    :cond_8
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isTailrec()Z

    move-result v4

    const-string v6, "tailrec"

    invoke-direct {p0, p2, v4, v6}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 51095
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/lang/StringBuilder;)V

    .line 51096
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isInline()Z

    move-result v4

    const-string v6, "inline"

    invoke-direct {p0, p2, v4, v6}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v4, "infix"

    .line 51097
    invoke-direct {p0, p2, v5, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v4, "operator"

    .line 51098
    invoke-direct {p0, p2, v3, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_3

    .line 51054
    :cond_9
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/w;Ljava/lang/StringBuilder;)V

    .line 51057
    :goto_3
    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/lang/StringBuilder;)V

    .line 51059
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->C()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51060
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isHiddenToOvercomeSignatureClash()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "/*isHiddenToOvercomeSignatureClash*/ "

    .line 51061
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51064
    :cond_a
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->isHiddenForResolutionEverywhereBesideSupercalls()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "/*isHiddenForResolutionEverywhereBesideSupercalls*/ "

    .line 51065
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "fun"

    .line 51070
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51071
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/List;Ljava/lang/StringBuilder;Z)V

    .line 51072
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/lang/StringBuilder;)V

    .line 51075
    :cond_c
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    invoke-direct {p0, v0, p2, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/StringBuilder;Z)V

    .line 51077
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getValueParameters()Ljava/util/List;

    move-result-object v0

    const-string v2, "function.valueParameters"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->hasSynthesizedParameterNames()Z

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/Collection;ZLjava/lang/StringBuilder;)V

    .line 51079
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/lang/StringBuilder;)V

    .line 51081
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v0

    .line 51736
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 51815
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/e/g;->l:Lkotlin/properties/ReadWriteProperty;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v5, 0xa

    aget-object v4, v4, v5

    invoke-interface {v3, v2, v4}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    .line 51816
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 51894
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/e/g;->k:Lkotlin/properties/ReadWriteProperty;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v5, 0x9

    aget-object v4, v4, v5

    invoke-interface {v3, v2, v4}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_d

    if-eqz v0, :cond_d

    .line 51082
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->r(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    const-string v2, ": "

    .line 51083
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_e

    const-string v0, "[NULL]"

    goto :goto_4

    :cond_e
    invoke-virtual {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51086
    :cond_f
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/w;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "?"

    const-string v1, ""

    const/4 v2, 0x0

    .line 50721
    invoke-static {p1, v0, v1, v2}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1173
    invoke-static {p0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 50722
    invoke-static {p1, v0, v2}, Lkotlin/h/p;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1173
    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")?"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Z
    .locals 0

    .line 1175
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/lang/StringBuilder;)Z
    .locals 5

    .line 486
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/e;->VISIBILITY:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 50171
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 50252
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->m:Lkotlin/properties/ReadWriteProperty;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v4, 0xc

    aget-object v3, v3, v4

    invoke-interface {v2, v0, v3}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object p1

    .line 50253
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/g;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 490
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->k:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 491
    :cond_2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 50
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->z()Lkotlin/reflect/jvm/internal/impl/e/m;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/d$b;->a:[I

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/m;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<font color=red><b>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</b></font>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_1
    return-object p1
.end method

.method private final b(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 646
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 647
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;

    const/4 v1, 0x0

    .line 649
    invoke-direct {p0, v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;Ljava/lang/StringBuilder;Z)V

    .line 650
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ", "

    .line 651
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final b(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 2

    .line 146
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/WrappedType;

    if-eqz v0, :cond_0

    .line 32000
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/WrappedType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/WrappedType;->isComputed()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "<Not computed yet>"

    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 150
    :cond_0
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->unwrap()Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p2

    .line 151
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    if-eqz v0, :cond_1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/c;

    move-object v1, p0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/e/f;

    invoke-virtual {p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/FlexibleType;->render(Lkotlin/reflect/jvm/internal/impl/e/c;Lkotlin/reflect/jvm/internal/impl/e/f;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 152
    :cond_1
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    if-eqz v0, :cond_2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)V

    :cond_2
    return-void
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 718
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getExtensionReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 720
    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;->RECEIVER:Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;

    invoke-direct {p0, p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 722
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/aq;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p1

    const-string v0, "receiver.type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 723
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeUtils;->isNullableType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 725
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 527
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/e;->OVERRIDE:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->q()Lkotlin/reflect/jvm/internal/impl/e/j;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/j;->RENDER_OPEN:Lkotlin/reflect/jvm/internal/impl/e/j;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    const-string v1, "override"

    .line 530
    invoke-direct {p0, p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 531
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/*"

    .line 532
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "*/ "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 3

    .line 182
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 1178
    instance-of v0, p0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1179
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    .line 182
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->isStarProjection()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 55
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->z()Lkotlin/reflect/jvm/internal/impl/e/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/m;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final c(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 2

    .line 237
    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    const/4 v1, 0x0

    .line 34405
    invoke-direct {p0, p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 239
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/UnresolvedType;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/UnresolvedType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/UnresolvedType;->getPresentableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 243
    :cond_0
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/types/ErrorType;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    move-object v0, p2

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/types/ErrorType;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/ErrorType;->getPresentableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 246
    :cond_1
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :goto_0
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 251
    :cond_2
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/e/d;Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 254
    :goto_1
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "?"

    .line 255
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_3
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/SpecialTypesKt;->isDefinitelyNotNullType(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "!!"

    .line 259
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    return-void
.end method

.method private final c(Lkotlin/reflect/jvm/internal/impl/descriptors/b;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 539
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->p()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/e;->MEMBER_KIND:Lkotlin/reflect/jvm/internal/impl/e/e;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 540
    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    if-eq v0, v1, :cond_1

    const-string v0, "/*"

    .line 541
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toLowerCase()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "*/ "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private static c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z
    .locals 1

    .line 376
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private final d(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V
    .locals 11

    .line 309
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 311
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->E()Lkotlin/reflect/jvm/internal/impl/e/d;

    move-result-object v1

    .line 312
    move-object v2, p2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;

    const/4 v3, 0x0

    .line 38405
    invoke-direct {v1, p1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/descriptors/a/a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)V

    .line 314
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 316
    :goto_0
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v5

    .line 317
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v6

    .line 318
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->d(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v7

    if-nez v6, :cond_2

    if-eqz v1, :cond_1

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v8, 0x1

    :goto_2
    const-string v9, "("

    if-eqz v8, :cond_8

    if-eqz v5, :cond_3

    const/16 v1, 0x28

    .line 323
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_3
    if-eqz v1, :cond_7

    .line 326
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/h/p;->g(Ljava/lang/CharSequence;)C

    move-result v1

    const/16 v10, 0x20

    if-ne v1, v10, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    sget-boolean v10, Lkotlin/x;->a:Z

    if-eqz v10, :cond_6

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Assertion failed"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 327
    :cond_6
    :goto_4
    invoke-static {v0}, Lkotlin/h/p;->d(Ljava/lang/CharSequence;)I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v10, 0x29

    if-eq v1, v10, :cond_7

    .line 329
    invoke-static {v0}, Lkotlin/h/p;->d(Ljava/lang/CharSequence;)I

    move-result v0

    const-string v1, "()"

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_7
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_5
    const-string v0, "suspend"

    .line 337
    invoke-direct {p0, p1, v5, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v0, ")"

    if-eqz v7, :cond_e

    .line 340
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/e/d;->b(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->isMarkedNullable()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 341
    :cond_9
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :cond_b
    :goto_6
    if-eqz v2, :cond_c

    .line 343
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_c
    invoke-direct {p0, p1, v7}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    if-eqz v2, :cond_d

    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "."

    .line 349
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_e
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->f(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/util/List;

    move-result-object v1

    .line 355
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;

    if-lez v2, :cond_f

    const-string v2, ", "

    .line 356
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_f
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->r()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v7}, Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;->getType()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v2

    const-string v9, "typeProjection.type"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->g(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    goto :goto_8

    :cond_10
    move-object v2, v3

    :goto_8
    if-eqz v2, :cond_11

    .line 360
    invoke-virtual {p0, v2, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/c/e;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 361
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_11
    invoke-virtual {p0, v7}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v5

    goto :goto_7

    :cond_12
    const-string v1, ") "

    .line 367
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->e(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    if-eqz v8, :cond_13

    .line 370
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    if-eqz v6, :cond_14

    const-string p2, "?"

    .line 372
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    return-void
.end method

.method private f()Z
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    const-string v1, "this"

    .line 5031
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5230
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->a()Lkotlin/reflect/jvm/internal/impl/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/a;->getIncludeAnnotationArguments()Z

    move-result v0

    return v0
.end method

.method private g()Z
    .locals 2

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    const-string v1, "this"

    .line 6031
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6231
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/e/f;->a()Lkotlin/reflect/jvm/internal/impl/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/a;->getIncludeEmptyAnnotationArguments()Z

    move-result v0

    return v0
.end method

.method private h()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 7087
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->q:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private i()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 8114
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->J:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private j()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 9130
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->Q:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x2e

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private k()Lkotlin/reflect/jvm/internal/impl/e/b;
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 10070
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->c:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/b;

    return-object v0
.end method

.method private l()Lkotlin/jvm/functions/Function1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 11093
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->w:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x17

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method private m()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 12122
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->N:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x2a

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private n()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 13089
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->s:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private o()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 14132
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->R:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x2f

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private p()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/e/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 15073
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->f:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private q()Lkotlin/reflect/jvm/internal/impl/e/j;
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 16095
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->y:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/j;

    return-object v0
.end method

.method private r()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 17124
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->O:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x2b

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private s()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 18128
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->P:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x2d

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private t()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 20086
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->p:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x10

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private u()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 21120
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->M:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x29

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private v()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 22118
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->L:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x28

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private w()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 23094
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->x:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x18

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private x()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 24075
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->h:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private y()Z
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 25074
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->g:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private z()Lkotlin/reflect/jvm/internal/impl/e/m;
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 26097
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->A:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/m;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/reflect/jvm/internal/impl/builtins/g;)Ljava/lang/String;
    .locals 7

    const-string v0, "lowerRendered"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperRendered"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builtIns"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "("

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    .line 32405
    invoke-static {p2, v1, p3}, Lkotlin/h/p;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 189
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "!"

    .line 191
    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 194
    :cond_1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->k()Lkotlin/reflect/jvm/internal/impl/e/b;

    move-result-object v0

    .line 32409
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/builtins/j$a;->P:Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {p3, v2}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v2

    if-nez v2, :cond_2

    const/16 v3, 0x21

    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->b(I)V

    :cond_2
    const-string v3, "builtIns.collection"

    .line 194
    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-object v3, p0

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/e/c;

    invoke-interface {v0, v2, v3}, Lkotlin/reflect/jvm/internal/impl/e/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/e/c;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Collection"

    invoke-static {v0, v2}, Lkotlin/h/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Mutable"

    .line 199
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-static {p1, v4, p2, v0, v5}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    const-string v4, "MutableMap.MutableEntry"

    .line 208
    invoke-static {v0, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Map.Entry"

    .line 210
    invoke-static {v0, v5}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "(Mutable)Map.(Mutable)Entry"

    .line 211
    invoke-static {v0, v6}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {p1, v4, p2, v5, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    .line 215
    :cond_4
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->k()Lkotlin/reflect/jvm/internal/impl/e/b;

    move-result-object v0

    const-string v4, "Array"

    .line 33273
    invoke-virtual {p3, v4}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p3

    const-string v5, "builtIns.array"

    .line 215
    invoke-static {p3, v5}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    invoke-interface {v0, p3, v3}, Lkotlin/reflect/jvm/internal/impl/e/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/g;Lkotlin/reflect/jvm/internal/impl/e/c;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v4}, Lkotlin/h/p;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Array<"

    .line 219
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Array<out "

    .line 221
    invoke-direct {p0, v3}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Array<(out) "

    .line 222
    invoke-direct {p0, v4}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p3, v4}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 217
    invoke-static {p1, v0, p2, v3, p3}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_5

    return-object p3

    .line 226
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/c/c;->g()Ljava/util/List;

    move-result-object p1

    const-string v0, "fqName.pathSegments()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30103
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/e/n;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/c/e;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/e/n;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->z()Lkotlin/reflect/jvm/internal/impl/e/m;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/e/m;->HTML:Lkotlin/reflect/jvm/internal/impl/e/m;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "<b>"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</b>"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;)Ljava/lang/String;
    .locals 11

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    .line 432
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 434
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/e;->getRenderName()Ljava/lang/String;

    move-result-object p2

    const-string v1, ":"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;->a()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object p2

    .line 437
    invoke-virtual {p0, p2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;)Ljava/util/List;

    move-result-object p1

    .line 441
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->g()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 442
    :cond_1
    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    move-object v3, v0

    check-cast v3, Ljava/lang/Appendable;

    const-string p1, ", "

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const-string p1, "("

    move-object v5, p1

    check-cast v5, Ljava/lang/CharSequence;

    const-string p1, ")"

    move-object v6, p1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x70

    invoke-static/range {v2 .. v10}, Lkotlin/a/n;->a(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/Appendable;

    .line 446
    :cond_2
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->C()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeKt;->isError(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;->getConstructor()Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeConstructor;->getDeclarationDescriptor()Lkotlin/reflect/jvm/internal/impl/descriptors/g;

    move-result-object p1

    instance-of p1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ad$b;

    if-eqz p1, :cond_4

    :cond_3
    const-string p1, " /* annotation class not found */"

    .line 447
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Ljava/lang/String;
    .locals 7

    const-string v0, "declarationDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 577
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/e/d$a;

    invoke-direct {v1, p0}, Lkotlin/reflect/jvm/internal/impl/e/d$a;-><init>(Lkotlin/reflect/jvm/internal/impl/e/d;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/m;

    invoke-interface {p1, v1, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->accept(Lkotlin/reflect/jvm/internal/impl/descriptors/m;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50338
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 50408
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/e/g;->d:Lkotlin/properties/ReadWriteProperty;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-interface {v2, v1, v3}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50409
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-nez v1, :cond_5

    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/aj;

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 50412
    :cond_0
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    if-eqz v1, :cond_1

    const-string p1, " is a module"

    .line 50413
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 50417
    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 50418
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    if-nez v2, :cond_5

    const-string v2, " "

    .line 50419
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "defined in"

    const-string v5, "message"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50433
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/e/d;->z()Lkotlin/reflect/jvm/internal/impl/e/m;

    move-result-object v5

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/e/d$b;->a:[I

    invoke-virtual {v5}, Lkotlin/reflect/jvm/internal/impl/e/m;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x2

    if-eq v5, v4, :cond_3

    if-ne v5, v6, :cond_2

    const-string v3, "<i>defined in</i>"

    goto :goto_0

    .line 50435
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 50419
    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50420
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/c/c;

    move-result-object v2

    const-string v3, "getFqName(containingDeclaration)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50437
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/c/c;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "root package"

    goto :goto_1

    .line 50421
    :cond_4
    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Lkotlin/reflect/jvm/internal/impl/c/c;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50438
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 50509
    iget-object v3, v2, Lkotlin/reflect/jvm/internal/impl/e/g;->e:Lkotlin/properties/ReadWriteProperty;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    aget-object v4, v4, v6

    invoke-interface {v3, v2, v4}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 50424
    instance-of v1, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ae;

    if-eqz v1, :cond_5

    .line 50425
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    if-eqz v1, :cond_5

    .line 50427
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/n;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/au;

    .line 576
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/String;
    .locals 5

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31000
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 31092
    iget-object v2, v1, Lkotlin/reflect/jvm/internal/impl/e/g;->v:Lkotlin/properties/ReadWriteProperty;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-interface {v2, v1, v3}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 112
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/types/TypeProjection;)Ljava/lang/String;
    .locals 1

    const-string v0, "typeProjection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    invoke-static {p1}, Lkotlin/a/n;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/d;->a(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a()Lkotlin/reflect/jvm/internal/impl/e/a;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/g;->a()Lkotlin/reflect/jvm/internal/impl/e/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->a(Ljava/util/Set;)V

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/e/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->a(Lkotlin/reflect/jvm/internal/impl/e/a;)V

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/e/b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->a(Lkotlin/reflect/jvm/internal/impl/e/b;)V

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/e/k;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->a(Lkotlin/reflect/jvm/internal/impl/e/k;)V

    return-void
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/e/m;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->a(Lkotlin/reflect/jvm/internal/impl/e/m;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->a(Z)V

    return-void
.end method

.method public final b(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/e/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->b(Ljava/util/Set;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->b(Z)V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/g;->b()Z

    move-result v0

    return v0
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->c(Z)V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/g;->c()Z

    move-result v0

    return v0
.end method

.method public final d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lkotlin/reflect/jvm/internal/impl/c/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/e/g;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->d(Z)V

    return-void
.end method

.method public final e()Lkotlin/reflect/jvm/internal/impl/e/l;
    .locals 4

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    .line 19101
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/e/g;->E:Lkotlin/properties/ReadWriteProperty;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/e/g;->a:[Lkotlin/reflect/KProperty;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-interface {v1, v0, v2}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/e/l;

    return-object v0
.end method

.method public final e(Z)V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->e(Z)V

    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->f(Z)V

    return-void
.end method

.method public final g(Z)V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->g(Z)V

    return-void
.end method

.method public final h(Z)V
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/e/d;->l:Lkotlin/reflect/jvm/internal/impl/e/g;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/e/g;->h(Z)V

    return-void
.end method
