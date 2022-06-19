.class public Lkotlin/reflect/jvm/internal/impl/load/java/b/c;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/b/b;


# static fields
.field static final synthetic c:Z = true


# instance fields
.field private d:Ljava/lang/Boolean;

.field private e:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/java/b/c;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    :cond_1
    if-nez p5, :cond_2

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    :cond_2
    if-nez p6, :cond_3

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    .line 43
    :cond_3
    invoke-direct/range {p0 .. p6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/j;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->d:Ljava/lang/Boolean;

    .line 33
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/java/b/c;
    .locals 8

    if-nez p0, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x5

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    :cond_1
    if-nez p3, :cond_2

    const/4 v0, 0x6

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    .line 53
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;

    const/4 v3, 0x0

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/java/b/c;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    return-object v0
.end method

.method private static synthetic a(I)V
    .locals 9

    const/16 v0, 0x12

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_1
    const-string v7, "enhancedReturnType"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_2
    const-string v7, "enhancedValueParametersData"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_3
    const-string v7, "sourceElement"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_4
    aput-object v5, v4, v6

    goto :goto_2

    :pswitch_5
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_6
    const-string v7, "source"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_7
    const-string v7, "kind"

    aput-object v7, v4, v6

    goto :goto_2

    :pswitch_8
    const-string v7, "annotations"

    aput-object v7, v4, v6

    :goto_2
    const-string v6, "enhance"

    const-string v7, "createSubstitutedCopy"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_2

    aput-object v5, v4, v8

    goto :goto_3

    :cond_2
    aput-object v6, v4, v8

    goto :goto_3

    :cond_3
    aput-object v7, v4, v8

    :goto_3
    packed-switch p0, :pswitch_data_1

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_9
    aput-object v6, v4, v3

    goto :goto_4

    :pswitch_a
    const-string v5, "createDescriptor"

    aput-object v5, v4, v3

    goto :goto_4

    :pswitch_b
    aput-object v7, v4, v3

    goto :goto_4

    :pswitch_c
    const-string v5, "createJavaConstructor"

    aput-object v5, v4, v3

    :goto_4
    :pswitch_d
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_4

    if-eq p0, v0, :cond_4

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method private b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/java/b/c;
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x7

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    :cond_0
    if-nez p3, :cond_1

    const/16 v0, 0x8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    :cond_1
    if-nez p5, :cond_2

    const/16 v0, 0x9

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    :cond_2
    if-nez p6, :cond_3

    const/16 v0, 0xa

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    .line 86
    :cond_3
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->DECLARATION:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    if-eq p3, v0, :cond_5

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;->SYNTHESIZED:Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    if-ne p3, v0, :cond_4

    goto :goto_0

    .line 87
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Attempt at creating a constructor that is not a declaration: \ncopy from: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, "\nnewOwner: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\nkind: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 95
    :cond_5
    :goto_0
    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->c:Z

    if-nez v0, :cond_7

    if-nez p4, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Attempt to rename constructor: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 97
    :cond_7
    :goto_1
    move-object v1, p1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-object v2, p2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;

    if-nez v1, :cond_8

    const/16 p1, 0xc

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    :cond_8
    if-nez p3, :cond_9

    const/16 p1, 0xd

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    :cond_9
    if-nez p6, :cond_a

    const/16 p1, 0xe

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    :cond_a
    if-nez p5, :cond_b

    const/16 p1, 0xf

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    .line 1112
    :cond_b
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;

    iget-boolean v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a:Z

    move-object v0, p1

    move-object v3, p5

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/java/b/c;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    .line 99
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->hasStableParameterNames()Z

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->setHasStableParameterNames(Z)V

    .line 100
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->hasSynthesizedParameterNames()Z

    move-result p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->setHasSynthesizedParameterNames(Z)V

    return-object p1
.end method


# virtual methods
.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p6}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/java/b/c;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/n;)Lkotlin/reflect/jvm/internal/impl/load/java/b/b;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v8, p4

    if-nez p3, :cond_0

    const/16 v1, 0x11

    .line 31
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->a(I)V

    .line 1127
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->getKind()Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->getSource()Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-result-object v15

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/java/b/c;

    move-result-object v9

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 1129
    :cond_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/a/g$a;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/a;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v0

    :goto_0
    move-object v1, v0

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->getDispatchReceiverParameter()Lkotlin/reflect/jvm/internal/impl/descriptors/aq;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->getValueParameters()Ljava/util/List;

    move-result-object v0

    move-object/from16 v4, p2

    invoke-static {v4, v0, v9}, Lkotlin/reflect/jvm/internal/impl/load/java/b/k;->a(Ljava/util/Collection;Ljava/util/Collection;Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->getModality()Lkotlin/reflect/jvm/internal/impl/descriptors/y;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->getVisibility()Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object v7

    move-object v0, v9

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    if-eqz v8, :cond_2

    .line 2027
    iget-object v0, v8, Lkotlin/n;->a:Ljava/lang/Object;

    .line 1145
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;

    .line 2028
    iget-object v1, v8, Lkotlin/n;->b:Ljava/lang/Object;

    .line 1145
    invoke-virtual {v9, v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->putInUserDataMap(Lkotlin/reflect/jvm/internal/impl/descriptors/a$a;Ljava/lang/Object;)V

    :cond_2
    return-object v9
.end method

.method public synthetic createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p6}, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/load/java/b/c;

    move-result-object p1

    return-object p1
.end method

.method public hasStableParameterNames()Z
    .locals 3

    .line 58
    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hasStableParameterNames was not set: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 59
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasSynthesizedParameterNames()Z
    .locals 3

    .line 68
    sget-boolean v0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hasSynthesizedParameterNames was not set: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 69
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setHasStableParameterNames(Z)V
    .locals 0

    .line 63
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public setHasSynthesizedParameterNames(Z)V
    .locals 0

    .line 73
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/b/c;->e:Ljava/lang/Boolean;

    return-void
.end method
