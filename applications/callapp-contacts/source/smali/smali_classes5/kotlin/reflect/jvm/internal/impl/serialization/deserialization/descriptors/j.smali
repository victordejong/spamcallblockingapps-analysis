.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;


# instance fields
.field public final g:Lkotlin/reflect/jvm/internal/impl/b/a$m;

.field public final h:Lkotlin/reflect/jvm/internal/impl/b/b/c;

.field public final i:Lkotlin/reflect/jvm/internal/impl/b/b/g;

.field public final j:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

.field private final k:Lkotlin/reflect/jvm/internal/impl/b/b/i;

.field private l:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;ZLkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;ZZZZZLkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v14, p14

    move-object/from16 v13, p15

    move-object/from16 v12, p16

    move-object/from16 v11, p17

    const-string v0, "containingDeclaration"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modality"

    move-object/from16 v4, p4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "visibility"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v7, p7

    invoke-static {v7, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v8, p8

    invoke-static {v8, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proto"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget-object v9, Lkotlin/reflect/jvm/internal/impl/descriptors/at;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/at;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v6, p6

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p13

    move/from16 v13, v16

    move/from16 v14, p11

    move/from16 v15, p12

    .line 132
    invoke-direct/range {v0 .. v15}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;ZLkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;ZZZZZZ)V

    move-object/from16 v1, p14

    .line 127
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->g:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    move-object/from16 v1, p15

    .line 128
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->h:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    move-object/from16 v1, p16

    .line 129
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->i:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    move-object/from16 v1, p17

    .line 130
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->k:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    move-object/from16 v1, p18

    .line 131
    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->j:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    .line 136
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->COMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    iput-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->l:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v3, p4

    move-object/from16 v9, p5

    move-object/from16 v8, p6

    const-string v1, "newOwner"

    move-object/from16 v4, p1

    invoke-static {v4, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newModality"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newVisibility"

    move-object/from16 v4, p3

    invoke-static {v4, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "kind"

    move-object/from16 v4, p5

    invoke-static {v4, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newName"

    move-object/from16 v4, p6

    invoke-static {v4, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "source"

    move-object/from16 v4, p7

    invoke-static {v4, v1}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    new-instance v20, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;

    move-object/from16 v1, v20

    .line 160
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->at_()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->l()Z

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->ar_()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->isExternal()Z

    move-result v12

    .line 161
    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->as_()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->isExpect()Z

    move-result v14

    .line 17127
    iget-object v15, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->g:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    move-object/from16 p1, v1

    .line 17128
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->h:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    move-object/from16 v16, v1

    .line 17129
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->i:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    move-object/from16 v17, v1

    .line 17130
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->k:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    move-object/from16 v18, v1

    .line 17131
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->j:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    .line 159
    invoke-direct/range {v1 .. v19}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/an;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/y;Lkotlin/reflect/jvm/internal/impl/descriptors/s;ZLkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;ZZZZZLkotlin/reflect/jvm/internal/impl/b/a$m;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;)V

    check-cast v20, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;

    return-object v20
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;Lkotlin/reflect/jvm/internal/impl/descriptors/ap;Lkotlin/reflect/jvm/internal/impl/descriptors/u;Lkotlin/reflect/jvm/internal/impl/descriptors/u;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;)V
    .locals 1

    const-string v0, "isExperimentalCoroutineInReleaseEnvironment"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-super {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/x;Lkotlin/reflect/jvm/internal/impl/descriptors/ap;Lkotlin/reflect/jvm/internal/impl/descriptors/u;Lkotlin/reflect/jvm/internal/impl/descriptors/u;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 147
    iput-object p5, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->l:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-void
.end method

.method public final ao_()Lkotlin/reflect/jvm/internal/impl/b/b/c;
    .locals 1

    .line 128
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->h:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    return-object v0
.end method

.method public final ap_()Lkotlin/reflect/jvm/internal/impl/b/b/g;
    .locals 1

    .line 129
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->i:Lkotlin/reflect/jvm/internal/impl/b/b/g;

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

    .line 113
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;

    .line 19047
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$b;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/b/b/i;
    .locals 1

    .line 130
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->k:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    return-object v0
.end method

.method public final i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;
    .locals 1

    .line 131
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->j:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    return-object v0
.end method

.method public final isExternal()Z
    .locals 2

    .line 165
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/b/b/b;->C:Lkotlin/reflect/jvm/internal/impl/b/b/b$a;

    .line 18127
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->g:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    .line 18549
    iget v1, v1, Lkotlin/reflect/jvm/internal/impl/b/a$m;->b:I

    .line 165
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/b/b/b$a;->a(I)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "IS_EXTERNAL_PROPERTY.get(proto.flags)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic k()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 19127
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/j;->g:Lkotlin/reflect/jvm/internal/impl/b/a$m;

    .line 113
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    return-object v0
.end method
