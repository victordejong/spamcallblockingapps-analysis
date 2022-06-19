.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

.field public final b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

.field public final c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

.field public final d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

.field final e:Lkotlin/reflect/jvm/internal/impl/b/b/i;

.field final f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

.field public final g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

.field public final h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

.field private final i:Lkotlin/reflect/jvm/internal/impl/b/b/a;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/g;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/i;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/a;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    const-string v7, "components"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "nameResolver"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "containingDeclaration"

    invoke-static {p3, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "typeTable"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "versionRequirementTable"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "metadataVersion"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "typeParameters"

    move-object/from16 v8, p9

    invoke-static {v8, v7}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v0, v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    .line 79
    iput-object v1, v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 80
    iput-object v2, v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    .line 81
    iput-object v3, v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 82
    iput-object v4, v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->e:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    .line 83
    iput-object v5, v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->i:Lkotlin/reflect/jvm/internal/impl/b/b/a;

    .line 84
    iput-object v6, v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    .line 88
    new-instance v10, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deserializer for \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/k;->getName()Lkotlin/reflect/jvm/internal/impl/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "[container not found]"

    if-nez v6, :cond_0

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 91
    :cond_0
    invoke-interface/range {p7 .. p7}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v1

    :goto_1
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v11, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object v8, v11

    .line 88
    invoke-direct/range {v0 .. v8}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v10, v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    .line 94
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;)V

    iput-object v0, v9, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/t;

    return-void
.end method

.method public static synthetic a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;
    .locals 7

    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->b:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->d:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    iget-object v5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->e:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->i:Lkotlin/reflect/jvm/internal/impl/b/b/a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/b/b/a;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/b/b/a;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/k;",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/b/a$r;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/c;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/g;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/i;",
            "Lkotlin/reflect/jvm/internal/impl/b/b/a;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v7, p6

    const-string v1, "descriptor"

    move-object v4, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeParameterProtos"

    move-object v10, p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeTable"

    move-object/from16 v5, p4

    invoke-static {v5, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "versionRequirementTable"

    move-object/from16 v2, p5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v11, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;

    .line 106
    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->a:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;

    const-string v1, "version"

    .line 107
    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1020
    invoke-static {v7, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2018
    iget v1, v7, Lkotlin/reflect/jvm/internal/impl/b/b/a;->e:I

    const/4 v8, 0x1

    if-ne v1, v8, :cond_0

    .line 2019
    iget v1, v7, Lkotlin/reflect/jvm/internal/impl/b/b/a;->f:I

    const/4 v9, 0x4

    if-lt v1, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_1

    move-object v8, v2

    goto :goto_1

    .line 107
    :cond_1
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->e:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    move-object v8, v1

    .line 108
    :goto_1
    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->f:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    .line 109
    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;

    move-object v1, v11

    move-object v2, v6

    move-object/from16 v3, p3

    move-object v4, p1

    move-object/from16 v5, p4

    move-object v6, v8

    move-object/from16 v7, p6

    move-object v8, v9

    move-object v9, v12

    move-object v10, p2

    .line 105
    invoke-direct/range {v1 .. v10}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/k;-><init>(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/j;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/b/b/a;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/aa;Ljava/util/List;)V

    return-object v11
.end method
