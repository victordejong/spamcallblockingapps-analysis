.class public Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/af;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ba;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae$a;,
        Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae$b;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae$a;


# instance fields
.field private final b:I

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

.field private final i:Lkotlin/reflect/jvm/internal/impl/descriptors/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae$a;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;ILkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V
    .locals 7

    move-object v6, p0

    move-object v0, p1

    const-string v1, "containingDeclaration"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "annotations"

    move-object v2, p4

    invoke-static {p4, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "name"

    move-object v3, p5

    invoke-static {p5, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "outType"

    move-object v4, p6

    invoke-static {p6, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    move-object/from16 v5, p11

    invoke-static {v5, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/af;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    move v0, p3

    .line 29
    iput v0, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->b:I

    move v0, p7

    .line 33
    iput-boolean v0, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->e:Z

    move v0, p8

    .line 34
    iput-boolean v0, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->f:Z

    move/from16 v0, p9

    .line 35
    iput-boolean v0, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->g:Z

    move-object/from16 v0, p10

    .line 36
    iput-object v0, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->h:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    if-nez p2, :cond_0

    .line 94
    move-object v0, v6

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, v6, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    return-void
.end method

.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;ILkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            "I",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;",
            "Lkotlin/reflect/jvm/internal/impl/c/e;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "ZZZ",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/at;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/bc;",
            ">;>;)",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;"
        }
    .end annotation

    const-string v0, "containingDeclaration"

    move-object v2, p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object/from16 v5, p3

    invoke-static {v5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outType"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object/from16 v12, p10

    invoke-static {v12, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p11, :cond_0

    .line 4058
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;ILkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    return-object v0

    .line 4061
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae$b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae$b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;ILkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/at;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;

    return-object v0
.end method


# virtual methods
.method public final a()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .locals 1

    .line 96
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/af;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    return-object v0
.end method

.method public a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/c/e;I)Lkotlin/reflect/jvm/internal/impl/descriptors/ba;
    .locals 14

    move-object v0, p0

    const-string v1, "newOwner"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v7, p2

    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;

    .line 118
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v6

    const-string v2, "annotations"

    invoke-static {v6, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->g()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    move-result-object v8

    const-string v2, "type"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->c()Z

    move-result v9

    .line 2034
    iget-boolean v10, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->f:Z

    .line 2035
    iget-boolean v11, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->g:Z

    .line 2036
    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->h:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    .line 119
    sget-object v13, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const-string v2, "NO_SOURCE"

    invoke-static {v13, v2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v2, v1

    move/from16 v5, p3

    .line 117
    invoke-direct/range {v2 .. v13}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/descriptors/ba;ILkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;ZZZLkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    return-object v1
.end method

.method public accept(Lkotlin/reflect/jvm/internal/impl/descriptors/m;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 110
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    invoke-interface {p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/m;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/ba;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final at_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .line 29
    iget v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->b:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->e:Z

    if-eqz v0, :cond_0

    .line 1096
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/af;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 99
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->isReal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Lkotlin/reflect/jvm/internal/impl/types/KotlinType;
    .locals 1

    .line 36
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->h:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    return-object v0
.end method

.method public final e()Lkotlin/reflect/jvm/internal/impl/descriptors/ba;
    .locals 1

    .line 102
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->i:Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    if-ne v0, p0, :cond_0

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->f:Z

    return v0
.end method

.method public bridge synthetic getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 4096
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/af;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 26
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v0
.end method

.method public synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/a;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    return-object v0
.end method

.method public synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/k;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    return-object v0
.end method

.method public synthetic getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/n;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/n;

    return-object v0
.end method

.method public getOverriddenDescriptors()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;"
        }
    .end annotation

    .line 2096
    invoke-super {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/af;->getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 126
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getOverriddenDescriptors()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "containingDeclaration.overriddenDescriptors"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/a/n;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 133
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 134
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/a;

    .line 127
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getValueParameters()Ljava/util/List;

    move-result-object v2

    .line 3029
    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->b:I

    .line 127
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 132
    check-cast v1, Ljava/util/Collection;

    return-object v1
.end method

.method public getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 2

    .line 123
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    const-string v1, "LOCAL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->g:Z

    return v0
.end method

.method public final bridge synthetic j()Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final l()Z
    .locals 2

    .line 26
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    const-string v1, "this"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic n()Lkotlin/reflect/jvm/internal/impl/descriptors/bc;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ae;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/bc;

    return-object v0
.end method

.method public synthetic substitute(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;)Lkotlin/reflect/jvm/internal/impl/descriptors/l;
    .locals 1

    const-string v0, "substitutor"

    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/ba;

    .line 26
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/l;

    return-object p1

    .line 4106
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
