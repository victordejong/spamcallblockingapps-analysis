.class public abstract Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$b;,
        Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c<",
        "TA;TC;>;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

.field private final b:Lkotlin/reflect/jvm/internal/impl/f/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/f/g<",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$b<",
            "TA;TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    .line 44
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$f;

    invoke-direct {p2, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$f;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;)V

    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/f/n;->a(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/impl/f/g;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->b:Lkotlin/reflect/jvm/internal/impl/f/g;

    return-void
.end method

.method private static synthetic a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;ZLjava/lang/Boolean;ZI)Ljava/util/List;
    .locals 9

    and-int/lit8 v0, p6, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v7, p4

    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_2

    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move v8, p5

    :goto_1
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 146
    invoke-direct/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    .line 114
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/b/b/b;->z:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    .line 23549
    iget v4, p2, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b:I

    .line 114
    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "IS_CONST.get(proto.flags)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 115
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Z

    move-result v10

    .line 116
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;

    if-ne p3, v4, :cond_1

    .line 24028
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 24029
    iget-object v5, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->b:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x28

    move-object v3, p2

    .line 118
    invoke-static/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;ZZZI)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object v3

    if-nez v3, :cond_0

    .line 24071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v4, 0x1

    .line 120
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/16 v6, 0x8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v10

    .line 119
    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 25028
    :cond_1
    iget-object v4, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 25029
    iget-object v5, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->b:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x30

    move-object v3, p2

    .line 126
    invoke-static/range {v3 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;ZZZI)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object v3

    if-nez v3, :cond_2

    .line 25071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 26015
    :cond_2
    iget-object v4, v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->b:Ljava/lang/String;

    .line 129
    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "$delegate"

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    .line 26138
    invoke-static {v4, v5, v6}, Lkotlin/h/p;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v4

    .line 130
    sget-object v5, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->DELEGATE_FIELD:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;

    if-ne p3, v5, :cond_3

    const/4 v6, 0x1

    :cond_3
    if-eq v4, v6, :cond_4

    .line 27071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_4
    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 133
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move v6, v10

    .line 132
    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;ZZLjava/lang/Boolean;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;ZZLjava/lang/Boolean;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;",
            "ZZ",
            "Ljava/lang/Boolean;",
            "Z)",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    .line 157
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;ZZLjava/lang/Boolean;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object p3

    .line 155
    invoke-static {p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object p1

    if-nez p1, :cond_0

    .line 29071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 167
    :cond_0
    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->b:Lkotlin/reflect/jvm/internal/impl/f/g;

    invoke-interface {p3, p1}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$b;

    .line 29409
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$b;->a:Ljava/util/Map;

    .line 167
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_1

    .line 30071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    :cond_1
    return-object p1
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;
    .locals 1

    .line 49065
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/a;->a:Lkotlin/reflect/jvm/internal/impl/a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49067
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    .line 249
    :cond_0
    instance-of p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    if-eqz p1, :cond_1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;ZZLjava/lang/Boolean;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-eqz p4, :cond_3

    .line 265
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    .line 37041
    iget-object v1, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 265
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    if-ne v1, v2, :cond_0

    .line 266
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    .line 38039
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->f:Lkotlin/reflect/jvm/internal/impl/c/a;

    const-string p3, "DefaultImpls"

    .line 267
    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/c/e;->a(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/e;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p2

    const-string p3, "container.classId.createNestedClassId(Name.identifier(JvmAbi.DEFAULT_IMPLS_CLASS_NAME))"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/n;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object p1

    return-object p1

    .line 270
    :cond_0
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$b;

    if-eqz p2, :cond_4

    .line 39030
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    .line 272
    instance-of p4, p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;

    if-eqz p4, :cond_1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_2

    move-object p2, v0

    goto :goto_1

    .line 40024
    :cond_2
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->b:Lkotlin/reflect/jvm/internal/impl/resolve/c/c;

    :goto_1
    if-eqz p2, :cond_4

    .line 275
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/c/b;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/c/c;->c()Ljava/lang/String;

    move-result-object p2

    const-string p4, "facadeClassName.internalName"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p4, 0x2f

    const/16 p5, 0x2e

    const/4 v0, 0x0

    .line 40063
    invoke-static {p2, p4, p5, v0}, Lkotlin/h/p;->a(Ljava/lang/String;CCZ)Ljava/lang/String;

    move-result-object p2

    .line 275
    invoke-direct {p3, p2}, Lkotlin/reflect/jvm/internal/impl/c/b;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/c/a;->a(Lkotlin/reflect/jvm/internal/impl/c/b;)Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p2

    const-string p3, "topLevel(FqName(facadeClassName.internalName.replace(\'/\', \'.\')))"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/n;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object p1

    return-object p1

    .line 264
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "isConst should not be null for property (container="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    :cond_4
    if-eqz p3, :cond_6

    .line 279
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    if-eqz p2, :cond_6

    move-object p2, p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    .line 41041
    iget-object p3, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 279
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->COMPANION_OBJECT:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    if-ne p3, p4, :cond_6

    .line 42037
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    if-eqz p2, :cond_6

    .line 42041
    iget-object p3, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 282
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    if-eq p3, p4, :cond_5

    .line 43041
    iget-object p3, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 282
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    if-eq p3, p4, :cond_5

    if-eqz p5, :cond_6

    .line 44041
    iget-object p3, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 284
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    if-eq p3, p4, :cond_5

    .line 45041
    iget-object p3, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 285
    sget-object p4, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->ANNOTATION_CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    if-ne p3, p4, :cond_6

    .line 288
    :cond_5
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object p1

    return-object p1

    .line 291
    :cond_6
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$b;

    if-eqz p2, :cond_8

    .line 46030
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    .line 291
    instance-of p2, p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;

    if-eqz p2, :cond_8

    .line 47030
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const-string p2, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource"

    .line 292
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;

    .line 48030
    iget-object p2, p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->c:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    if-nez p2, :cond_7

    .line 295
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->d()Lkotlin/reflect/jvm/internal/impl/c/a;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/n;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/m;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object p1

    return-object p1

    :cond_7
    return-object p2

    :cond_8
    return-object v0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;ZZZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;
    .locals 3

    .line 363
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/b/c/a;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v2, "propertySignature"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p3, :cond_2

    .line 367
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    invoke-static {p0, p1, p2, p5}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Z)Lkotlin/reflect/jvm/internal/impl/b/c/a/e$a;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 368
    :cond_1
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/c/a/e;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a/e;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p4, :cond_3

    .line 369
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 370
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;

    .line 48243
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->c:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    const-string p2, "signature.syntheticMethod"

    .line 370
    invoke-static {p0, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1
.end method

.method private static synthetic a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;ZZZI)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;
    .locals 8

    and-int/lit8 v0, p6, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 p3, p6, 0x20

    if-eqz p3, :cond_2

    const/4 p5, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move v7, p5

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .line 355
    invoke-static/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;ZZZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;
    .locals 0

    const/4 p0, 0x0

    .line 376
    invoke-static {p1, p2, p3, p4, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;
    .locals 8

    .line 384
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 385
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;

    .line 386
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$c;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/c/a/e;

    .line 385
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a/e;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p0

    return-object p0

    .line 389
    :cond_1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    if-eqz v0, :cond_3

    .line 390
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;)Lkotlin/reflect/jvm/internal/impl/b/c/a/e$b;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    check-cast p0, Lkotlin/reflect/jvm/internal/impl/b/c/a/e;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;->a(Lkotlin/reflect/jvm/internal/impl/b/c/a/e;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p0

    return-object p0

    .line 392
    :cond_3
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    if-eqz v0, :cond_9

    .line 393
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/b/c/a;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    const-string v3, "propertySignature"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lkotlin/reflect/jvm/internal/impl/b/b/e;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/h$c;Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;

    if-nez v0, :cond_4

    return-object v1

    .line 394
    :cond_4
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$c;->a:[I

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->ordinal()I

    move-result p3

    aget p3, v2, p3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_8

    const/4 v2, 0x2

    if-eq p3, v2, :cond_6

    const/4 v0, 0x3

    if-eq p3, v0, :cond_5

    return-object v1

    .line 400
    :cond_5
    move-object v2, p0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, p1

    move-object v4, p2

    move v7, p4

    invoke-static/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;ZZZ)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p0

    return-object p0

    .line 398
    :cond_6
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->k()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;

    .line 48273
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->e:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    const-string p2, "signature.setter"

    .line 398
    invoke-static {p0, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v1

    .line 396
    :cond_8
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->g()Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;

    .line 48258
    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/b/c/a$c;->d:Lkotlin/reflect/jvm/internal/impl/b/c/a$b;

    const-string p2, "signature.getter"

    .line 396
    invoke-static {p0, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;->a(Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/c/a$b;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v1
.end method

.method private static b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;
    .locals 2

    .line 21030
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    .line 71
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    .line 22026
    :cond_1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/q;->b:Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    return-object p0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation
.end method

.method protected abstract a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/b/a$a;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            ")TA;"
        }
    .end annotation
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            ")TC;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expectedType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->z:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    .line 33549
    iget v1, p2, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b:I

    .line 227
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v6

    .line 228
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/h;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/b/c/a/h;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Z

    move-result v7

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    .line 223
    invoke-direct/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;ZZLjava/lang/Boolean;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object v0

    .line 230
    invoke-static {p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 232
    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a()Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;

    move-result-object v2

    .line 34016
    iget-object v2, v2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a/a;->b:Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    .line 233
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/e$a;

    .line 34140
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/e;->b()Lkotlin/reflect/jvm/internal/impl/b/c/a/f;

    move-result-object v3

    .line 233
    check-cast v3, Lkotlin/reflect/jvm/internal/impl/b/b/a;

    const-string v4, "version"

    .line 232
    invoke-static {v3, v4}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35039
    iget v4, v3, Lkotlin/reflect/jvm/internal/impl/b/b/a;->e:I

    iget v5, v3, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    iget v3, v3, Lkotlin/reflect/jvm/internal/impl/b/b/a;->g:I

    invoke-virtual {v2, v4, v5, v3}, Lkotlin/reflect/jvm/internal/impl/b/b/a;->a(III)Z

    move-result v2

    .line 237
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    .line 36028
    iget-object v3, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 36029
    iget-object p1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->b:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 237
    sget-object v4, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    .line 236
    invoke-static {p2, v3, p1, v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 240
    :cond_1
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->b:Lkotlin/reflect/jvm/internal/impl/f/g;

    invoke-interface {p2, v0}, Lkotlin/reflect/jvm/internal/impl/f/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$b;

    .line 36410
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$b;->b:Ljava/util/Map;

    .line 240
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    .line 241
    :cond_2
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/builtins/n;->a:Lkotlin/reflect/jvm/internal/impl/builtins/n;

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/builtins/n;->a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$p;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/b/a$p;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a;->f:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$p;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "proto.getExtension(JvmProtoBuf.typeAnnotation)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 415
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 416
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    const-string v2, "it"

    .line 215
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/b/a$r;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "proto"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a;->h:Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/b/a$r;->c(Lkotlin/reflect/jvm/internal/impl/protobuf/h$e;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "proto.getExtension(JvmProtoBuf.typeParameterAnnotation)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 419
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 420
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/b/a$a;

    const-string v2, "it"

    .line 219
    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/b/a$a;Lkotlin/reflect/jvm/internal/impl/b/b/c;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_0
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$e;

    invoke-direct {v1, p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$e;-><init>(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Ljava/util/ArrayList;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;

    const-string v2, "kotlinClass"

    .line 87
    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-interface {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/o;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$c;)V

    .line 89
    check-cast p1, Ljava/util/List;

    return-object p1

    .line 76
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->a()Lkotlin/reflect/jvm/internal/impl/c/b;

    move-result-object p1

    const-string v0, "Class for loading annotations is not found: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$f;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$f;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;

    .line 28028
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 28580
    iget p2, p2, Lkotlin/reflect/jvm/internal/impl/b/a$f;->b:I

    .line 140
    invoke-interface {v0, p2}, Lkotlin/reflect/jvm/internal/impl/b/b/c;->a(I)Ljava/lang/String;

    move-result-object p2

    .line 141
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/c/a/b;->a:Lkotlin/reflect/jvm/internal/impl/b/c/a/b;

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    .line 29039
    iget-object v0, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->f:Lkotlin/reflect/jvm/internal/impl/c/a;

    .line 141
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/c/a;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "container as ProtoContainer.Class).classId.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/b/c/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;->b(Ljava/lang/String;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3c

    move-object v1, p0

    move-object v2, p1

    .line 143
    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$m;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->BACKING_FIELD:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;

    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;

    if-ne p3, v0, :cond_0

    .line 94
    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->PROPERTY:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;

    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 23028
    :cond_0
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 23029
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->b:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 97
    invoke-static {p0, p2, v0, v1, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object v4

    if-nez v4, :cond_1

    .line 23071
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3c

    move-object v2, p0

    move-object v3, p1

    .line 98
    invoke-static/range {v2 .. v8}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;ILkotlin/reflect/jvm/internal/impl/b/a$t;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;",
            "I",
            "Lkotlin/reflect/jvm/internal/impl/b/a$t;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callableProto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31028
    iget-object p5, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 31029
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->b:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 177
    invoke-static {p0, p2, p5, v0, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 31189
    instance-of p5, p2, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$h;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$h;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 31190
    :cond_1
    instance-of p5, p2, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    if-eqz p5, :cond_2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/b/a$m;

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/b/b/f;->a(Lkotlin/reflect/jvm/internal/impl/b/a$m;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 31191
    :cond_2
    instance-of p5, p2, Lkotlin/reflect/jvm/internal/impl/b/a$c;

    if-eqz p5, :cond_4

    .line 31192
    move-object p2, p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;

    .line 32041
    iget-object p5, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->g:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    .line 31192
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/b/a$b$b;->ENUM_CLASS:Lkotlin/reflect/jvm/internal/impl/b/a$b$b;

    if-ne p5, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    .line 32042
    :cond_3
    iget-boolean p2, p2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w$a;->h:Z

    if-eqz p2, :cond_0

    :goto_0
    add-int/2addr p4, v0

    .line 180
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;

    invoke-static {p3, p4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;I)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move-object v0, p0

    move-object v1, p1

    .line 181
    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 31196
    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "Unsupported message: "

    invoke-static {p3, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32071
    :cond_5
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method protected abstract a(Lkotlin/reflect/jvm/internal/impl/c/a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/c/a;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/at;",
            "Ljava/util/List<",
            "TA;>;)",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/o$a;"
        }
    .end annotation
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$m;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/b/a$m;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;->DELEGATE_FIELD:Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;

    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/load/kotlin/a$a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/p;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;",
            ")",
            "Ljava/util/List<",
            "TA;>;"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33028
    iget-object v0, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->a:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 33029
    iget-object v1, p1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;->b:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 205
    invoke-static {p0, p2, v0, v1, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/protobuf/p;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/b;)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 207
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/r$a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;I)Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move-object v0, p0

    move-object v1, p1

    .line 208
    invoke-static/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/w;Lkotlin/reflect/jvm/internal/impl/load/kotlin/r;ZLjava/lang/Boolean;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 33071
    :cond_0
    sget-object p1, Lkotlin/a/z;->a:Lkotlin/a/z;

    check-cast p1, Ljava/util/List;

    return-object p1
.end method
