.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/b/a$h;

.field private final b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

.field private final c:Lkotlin/reflect/jvm/internal/impl/b/b/g;

.field private final d:Lkotlin/reflect/jvm/internal/impl/b/b/i;

.field private final e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

.field private f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V
    .locals 12

    move-object v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    const-string v0, "containingDeclaration"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object v3, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p11, :cond_0

    .line 64
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object/from16 v6, p11

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 62
    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    .line 55
    iput-object v8, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->a:Lkotlin/reflect/jvm/internal/impl/b/a$h;

    .line 56
    iput-object v9, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 57
    iput-object v10, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->c:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 58
    iput-object v11, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    move-object/from16 v0, p10

    .line 59
    iput-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    .line 67
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->COMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    iput-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/descriptors/at;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p12

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_0

    :cond_0
    move-object/from16 v12, p11

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 49
    invoke-direct/range {v1 .. v12}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/util/Map;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aq;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/aq;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/TypeParameterDescriptor;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ba;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinType;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/y;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/s;",
            "Ljava/util/Map<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a$a<",
            "*>;*>;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;"
        }
    .end annotation

    const-string v0, "typeParameters"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unsubstitutedValueParameters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userDataMap"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isExperimentalCoroutineInReleaseEnvironment"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-super/range {p0 .. p8}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;->initialize(Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Lkotlin/reflect/jvm/internal/impl/descriptors/aq;Ljava/util/List;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Ljava/util/Map;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/aa;

    move-result-object p1

    const-string p2, "super.initialize(\n            extensionReceiverParameter,\n            dispatchReceiverParameter,\n            typeParameters,\n            unsubstitutedValueParameters,\n            unsubstitutedReturnType,\n            modality,\n            visibility,\n            userDataMap\n        )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iput-object p9, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-object p1
.end method

.method public final ao_()Lkotlin/reflect/jvm/internal/impl/b/b/c;
    .locals 1

    .line 56
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    return-object v0
.end method

.method public final ap_()Lkotlin/reflect/jvm/internal/impl/b/b/g;
    .locals 1

    .line 57
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->c:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    return-object v0
.end method

.method public final aq_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/b/h;",
            ">;"
        }
    .end annotation

    .line 49
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;

    .line 2047
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$b;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;
    .locals 14

    move-object v0, p0

    const-string v1, "newOwner"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "annotations"

    move-object/from16 v5, p5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    move-object/from16 v13, p6

    invoke-static {v13, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;

    .line 104
    move-object/from16 v4, p2

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/as;

    if-nez p4, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v2

    const-string v6, "name"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p4

    .line 1055
    :goto_0
    iget-object v8, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->a:Lkotlin/reflect/jvm/internal/impl/b/a$h;

    .line 1056
    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 1057
    iget-object v10, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->c:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 1058
    iget-object v11, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    .line 1059
    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    move-object v2, v1

    move-object v3, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    move-object/from16 v13, p6

    .line 103
    invoke-direct/range {v2 .. v13}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/as;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/b/a$h;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    .line 107
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->hasStableParameterNames()Z

    move-result v2

    invoke-virtual {v1, v2}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->setHasStableParameterNames(Z)V

    .line 1067
    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    .line 108
    iput-object v2, v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    .line 106
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    return-object v1
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/b/b/i;
    .locals 1

    .line 58
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    return-object v0
.end method

.method public final i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;
    .locals 1

    .line 59
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    return-object v0
.end method

.method public final bridge synthetic k()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 2055
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/k;->a:Lkotlin/reflect/jvm/internal/impl/b/a$h;

    .line 49
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    return-object v0
.end method
