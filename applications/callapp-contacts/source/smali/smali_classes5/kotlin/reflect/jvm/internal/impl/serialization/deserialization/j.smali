.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/f/n;

.field public final b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

.field public final c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

.field final d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

.field public final e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field final f:Lkotlin/reflect/jvm/internal/impl/descriptors/af;

.field final g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s;

.field public final h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

.field public final i:Lkotlin/reflect/jvm/internal/impl/a/a/c;

.field final j:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;

.field public final k:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

.field final m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

.field public final n:Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;

.field public final o:Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;

.field public final p:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

.field public final q:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

.field final r:Lkotlin/reflect/jvm/internal/impl/descriptors/b/e;

.field public final s:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;

.field private final t:Lkotlin/reflect/jvm/internal/impl/resolve/d/a;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;Lkotlin/reflect/jvm/internal/impl/descriptors/af;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/resolve/d/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/e;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/f/n;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ab;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/a/c;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/af;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;",
            "Lkotlin/reflect/jvm/internal/impl/a/a/c;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;",
            "Ljava/lang/Iterable<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b/b;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/ad;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/f;",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;",
            "Lkotlin/reflect/jvm/internal/impl/resolve/d/a;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/b/e;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "storageManager"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moduleDescriptor"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDataFinder"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationAndConstantLoader"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageFragmentProvider"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localClassifierTypeSettings"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorReporter"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lookupTracker"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flexibleTypeDeserializer"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fictitiousClassDescriptorFactories"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notFoundClasses"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contractDeserializer"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalClassPartsProvider"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentDeclarationFilter"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extensionRegistryLite"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeChecker"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "samConversionResolver"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "platformDependentTypeTransformer"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    .line 38
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->a:Lkotlin/reflect/jvm/internal/impl/f/n;

    .line 39
    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/ab;

    .line 40
    iput-object v3, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->c:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;

    .line 41
    iput-object v4, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->d:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    .line 42
    iput-object v5, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->e:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;

    .line 43
    iput-object v6, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->f:Lkotlin/reflect/jvm/internal/impl/descriptors/af;

    .line 44
    iput-object v7, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s;

    .line 45
    iput-object v8, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;

    .line 46
    iput-object v9, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->i:Lkotlin/reflect/jvm/internal/impl/a/a/c;

    .line 47
    iput-object v10, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->j:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;

    .line 48
    iput-object v11, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->k:Ljava/lang/Iterable;

    .line 49
    iput-object v12, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->l:Lkotlin/reflect/jvm/internal/impl/descriptors/ad;

    .line 50
    iput-object v13, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->m:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;

    .line 51
    iput-object v14, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->n:Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;

    move-object/from16 v1, p15

    .line 52
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->o:Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;

    .line 53
    iput-object v15, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->p:Lkotlin/reflect/jvm/internal/impl/protobuf/f;

    move-object/from16 v1, p17

    move-object/from16 v2, p18

    .line 54
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->q:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    .line 55
    iput-object v2, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->t:Lkotlin/reflect/jvm/internal/impl/resolve/d/a;

    move-object/from16 v1, p19

    .line 56
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->r:Lkotlin/reflect/jvm/internal/impl/descriptors/b/e;

    .line 58
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;)V

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->s:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;Lkotlin/reflect/jvm/internal/impl/descriptors/af;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/resolve/d/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/e;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    move/from16 v0, p20

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b/a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/b/a$a;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;

    move-object/from16 v16, v1

    goto :goto_0

    :cond_0
    move-object/from16 v16, p14

    :goto_0
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_1

    .line 52
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b/c$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/b/c$a;

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;

    move-object/from16 v17, v1

    goto :goto_1

    :cond_1
    move-object/from16 v17, p15

    :goto_1
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 54
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;->Companion:Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker$Companion;->getDefault()Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeCheckerImpl;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;

    move-object/from16 v19, v1

    goto :goto_2

    :cond_2
    move-object/from16 v19, p17

    :goto_2
    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 56
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/e$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/b/e$a;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b/e;

    move-object/from16 v21, v0

    goto :goto_3

    :cond_3
    move-object/from16 v21, p19

    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v18, p16

    move-object/from16 v20, p18

    .line 37
    invoke-direct/range {v2 .. v21}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;-><init>(Lkotlin/reflect/jvm/internal/impl/f/n;Lkotlin/reflect/jvm/internal/impl/descriptors/ab;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationConfiguration;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/c;Lkotlin/reflect/jvm/internal/impl/descriptors/af;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/s;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/o;Lkotlin/reflect/jvm/internal/impl/a/a/c;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/p;Ljava/lang/Iterable;Lkotlin/reflect/jvm/internal/impl/descriptors/ad;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/i;Lkotlin/reflect/jvm/internal/impl/descriptors/b/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/c;Lkotlin/reflect/jvm/internal/impl/protobuf/f;Lkotlin/reflect/jvm/internal/impl/types/checker/NewKotlinTypeChecker;Lkotlin/reflect/jvm/internal/impl/resolve/d/a;Lkotlin/reflect/jvm/internal/impl/descriptors/b/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 1

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;->s:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/h;Lkotlin/reflect/jvm/internal/impl/c/a;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/ae;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;
    .locals 12

    move-object v0, p1

    const-string v1, "descriptor"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object v4, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeTable"

    move-object v6, p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "versionRequirementTable"

    move-object/from16 v7, p4

    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    move-object/from16 v8, p5

    invoke-static {v8, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 71
    move-object v5, v0

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 1071
    sget-object v0, Lkotlin/a/z;->a:Lkotlin/a/z;

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    const/4 v10, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object/from16 v9, p6

    .line 70
    invoke-direct/range {v2 .. v11}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Ljava/util/List;)V

    return-object v1
.end method
