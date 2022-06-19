.class public final Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;


# instance fields
.field private final c:Lkotlin/reflect/jvm/internal/impl/b/a$c;

.field private final d:Lkotlin/reflect/jvm/internal/impl/b/b/c;

.field private final e:Lkotlin/reflect/jvm/internal/impl/b/b/g;

.field private final f:Lkotlin/reflect/jvm/internal/impl/b/b/i;

.field private final g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

.field private h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/j;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/b/a$c;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V
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

    .line 181
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

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/j;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    .line 174
    iput-object v8, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->c:Lkotlin/reflect/jvm/internal/impl/b/a$c;

    .line 175
    iput-object v9, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->d:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 176
    iput-object v10, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->e:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 177
    iput-object v11, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->f:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    move-object/from16 v0, p10

    .line 178
    iput-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    .line 183
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;->COMPATIBLE:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    iput-object v0, v7, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/j;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/b/a$c;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/descriptors/at;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 168
    invoke-direct/range {v1 .. v12}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/j;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/b/a$c;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    return-void
.end method

.method private a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "newOwner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kind"

    move-object/from16 v8, p3

    invoke-static {v8, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "annotations"

    move-object/from16 v6, p4

    invoke-static {v6, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    move-object/from16 v14, p5

    invoke-static {v14, v2}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;

    .line 195
    move-object v4, v1

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-object/from16 v5, p2

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    iget-boolean v7, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->a:Z

    .line 1174
    iget-object v9, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->c:Lkotlin/reflect/jvm/internal/impl/b/a$c;

    .line 1175
    iget-object v10, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->d:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    .line 1176
    iget-object v11, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->e:Lkotlin/reflect/jvm/internal/impl/b/b/g;

    .line 1177
    iget-object v12, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->f:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    .line 1178
    iget-object v13, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    move-object v3, v2

    .line 194
    invoke-direct/range {v3 .. v14}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/j;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;ZLkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/b/a$c;Lkotlin/reflect/jvm/internal/impl/b/b/c;Lkotlin/reflect/jvm/internal/impl/b/b/g;Lkotlin/reflect/jvm/internal/impl/b/b/i;Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)V

    .line 198
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->hasStableParameterNames()Z

    move-result v1

    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->setHasStableParameterNames(Z)V

    .line 1183
    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    .line 199
    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;)V

    return-object v2
.end method


# virtual methods
.method public final bridge synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 168
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/d;

    return-object p1
.end method

.method public final a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->h:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$a;

    return-void
.end method

.method public final ao_()Lkotlin/reflect/jvm/internal/impl/b/b/c;
    .locals 1

    .line 175
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->d:Lkotlin/reflect/jvm/internal/impl/b/b/c;

    return-object v0
.end method

.method public final ap_()Lkotlin/reflect/jvm/internal/impl/b/b/g;
    .locals 1

    .line 176
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->e:Lkotlin/reflect/jvm/internal/impl/b/b/g;

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

    .line 168
    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/c;

    .line 2047
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g$b;->a(Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/g;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic createSubstitutedCopy(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/c/e;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    .line 168
    invoke-direct/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/w;Lkotlin/reflect/jvm/internal/impl/descriptors/b$a;Lkotlin/reflect/jvm/internal/impl/descriptors/a/g;Lkotlin/reflect/jvm/internal/impl/descriptors/at;)Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl;

    return-object p1
.end method

.method public final h()Lkotlin/reflect/jvm/internal/impl/b/b/i;
    .locals 1

    .line 177
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->f:Lkotlin/reflect/jvm/internal/impl/b/b/i;

    return-object v0
.end method

.method public final i()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;
    .locals 1

    .line 178
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->g:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/f;

    return-object v0
.end method

.method public final isExternal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isInline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isSuspend()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isTailrec()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic k()Lkotlin/reflect/jvm/internal/impl/protobuf/p;
    .locals 1

    .line 2174
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/d;->c:Lkotlin/reflect/jvm/internal/impl/b/a$c;

    .line 168
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/protobuf/p;

    return-object v0
.end method
