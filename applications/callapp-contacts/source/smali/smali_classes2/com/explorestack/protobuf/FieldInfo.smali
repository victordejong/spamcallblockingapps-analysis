.class final Lcom/explorestack/protobuf/FieldInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/FieldInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/explorestack/protobuf/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final cachedSizeField:Ljava/lang/reflect/Field;

.field private final enforceUtf8:Z

.field private final enumVerifier:Lcom/explorestack/protobuf/Internal$EnumVerifier;

.field private final field:Ljava/lang/reflect/Field;

.field private final fieldNumber:I

.field private final mapDefaultEntry:Ljava/lang/Object;

.field private final messageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final oneof:Lcom/explorestack/protobuf/OneofInfo;

.field private final oneofStoredType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final presenceField:Ljava/lang/reflect/Field;

.field private final presenceMask:I

.field private final required:Z

.field private final type:Lcom/explorestack/protobuf/FieldType;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/explorestack/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "IZZ",
            "Lcom/explorestack/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/explorestack/protobuf/Internal$EnumVerifier;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Lcom/explorestack/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 334
    iput-object p3, p0, Lcom/explorestack/protobuf/FieldInfo;->type:Lcom/explorestack/protobuf/FieldType;

    .line 335
    iput-object p4, p0, Lcom/explorestack/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    .line 336
    iput p2, p0, Lcom/explorestack/protobuf/FieldInfo;->fieldNumber:I

    .line 337
    iput-object p5, p0, Lcom/explorestack/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    .line 338
    iput p6, p0, Lcom/explorestack/protobuf/FieldInfo;->presenceMask:I

    .line 339
    iput-boolean p7, p0, Lcom/explorestack/protobuf/FieldInfo;->required:Z

    .line 340
    iput-boolean p8, p0, Lcom/explorestack/protobuf/FieldInfo;->enforceUtf8:Z

    .line 341
    iput-object p9, p0, Lcom/explorestack/protobuf/FieldInfo;->oneof:Lcom/explorestack/protobuf/OneofInfo;

    .line 342
    iput-object p10, p0, Lcom/explorestack/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    .line 343
    iput-object p11, p0, Lcom/explorestack/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    .line 344
    iput-object p12, p0, Lcom/explorestack/protobuf/FieldInfo;->enumVerifier:Lcom/explorestack/protobuf/Internal$EnumVerifier;

    .line 345
    iput-object p13, p0, Lcom/explorestack/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    return-void
.end method

.method private static checkFieldNumber(I)V
    .locals 2

    if-lez p0, :cond_0

    return-void

    .line 261
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "fieldNumber must be positive: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Z)Lcom/explorestack/protobuf/FieldInfo;
    .locals 15

    move-object/from16 v3, p2

    .line 66
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object v1, p0

    .line 67
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    .line 68
    invoke-static {v3, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/explorestack/protobuf/FieldType;->MESSAGE_LIST:Lcom/explorestack/protobuf/FieldType;

    if-eq v3, v0, :cond_0

    sget-object v0, Lcom/explorestack/protobuf/FieldType;->GROUP_LIST:Lcom/explorestack/protobuf/FieldType;

    if-eq v3, v0, :cond_0

    .line 72
    new-instance v14, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v8, p3

    invoke-direct/range {v0 .. v13}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Lcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;
    .locals 15

    .line 138
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object v2, p0

    .line 139
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 140
    new-instance v0, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static forMapField(Ljava/lang/reflect/Field;ILjava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;
    .locals 15

    const-string v0, "mapDefaultEntry"

    move-object/from16 v12, p2

    .line 300
    invoke-static {v12, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 301
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object v2, p0

    .line 302
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    new-instance v0, Lcom/explorestack/protobuf/FieldInfo;

    sget-object v4, Lcom/explorestack/protobuf/FieldType;->MAP:Lcom/explorestack/protobuf/FieldType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v13, p3

    invoke-direct/range {v1 .. v14}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static forOneofMemberField(ILcom/explorestack/protobuf/FieldType;Lcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;ZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/explorestack/protobuf/FieldType;",
            "Lcom/explorestack/protobuf/OneofInfo;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Lcom/explorestack/protobuf/Internal$EnumVerifier;",
            ")",
            "Lcom/explorestack/protobuf/FieldInfo;"
        }
    .end annotation

    move-object/from16 v3, p1

    .line 232
    invoke-static {p0}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "fieldType"

    .line 233
    invoke-static {v3, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "oneof"

    move-object/from16 v9, p2

    .line 234
    invoke-static {v9, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "oneofStoredType"

    move-object/from16 v10, p3

    .line 235
    invoke-static {v10, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    invoke-virtual/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldType;->isScalar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v14, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move v2, p0

    move-object/from16 v3, p1

    move/from16 v8, p4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v13}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Oneof is only supported for scalar fields. Field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v2, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forPackedField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;)Lcom/explorestack/protobuf/FieldInfo;
    .locals 15

    move-object/from16 v3, p2

    .line 91
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object v1, p0

    .line 92
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    .line 93
    invoke-static {v3, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/explorestack/protobuf/FieldType;->MESSAGE_LIST:Lcom/explorestack/protobuf/FieldType;

    if-eq v3, v0, :cond_0

    sget-object v0, Lcom/explorestack/protobuf/FieldType;->GROUP_LIST:Lcom/explorestack/protobuf/FieldType;

    if-eq v3, v0, :cond_0

    .line 97
    new-instance v14, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v14

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Shouldn\'t be called for repeated message fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forPackedFieldWithEnumVerifier(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)Lcom/explorestack/protobuf/FieldInfo;
    .locals 15

    .line 162
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object v2, p0

    .line 163
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 164
    new-instance v0, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v1 .. v14}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public static forProto2OptionalField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;
    .locals 15

    move-object/from16 v5, p3

    .line 189
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object v1, p0

    .line 190
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    move-object/from16 v3, p2

    .line 191
    invoke-static {v3, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "presenceField"

    .line 192
    invoke-static {v5, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 193
    invoke-static/range {p4 .. p4}, Lcom/explorestack/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    :goto_0
    new-instance v14, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v14
.end method

.method public static forProto2RequiredField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/reflect/Field;IZLcom/explorestack/protobuf/Internal$EnumVerifier;)Lcom/explorestack/protobuf/FieldInfo;
    .locals 15

    move-object/from16 v5, p3

    .line 274
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object v1, p0

    .line 275
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    move-object/from16 v3, p2

    .line 276
    invoke-static {v3, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "presenceField"

    .line 277
    invoke-static {v5, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v5, :cond_1

    .line 278
    invoke-static/range {p4 .. p4}, Lcom/explorestack/protobuf/FieldInfo;->isExactlyOneBitSet(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "presenceMask must have exactly one bit set: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_1
    :goto_0
    new-instance v14, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, v14

    move-object v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v8, p5

    move-object/from16 v12, p6

    invoke-direct/range {v0 .. v13}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v14
.end method

.method public static forRepeatedMessageField(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;)Lcom/explorestack/protobuf/FieldInfo;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "I",
            "Lcom/explorestack/protobuf/FieldType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/explorestack/protobuf/FieldInfo;"
        }
    .end annotation

    .line 116
    invoke-static/range {p1 .. p1}, Lcom/explorestack/protobuf/FieldInfo;->checkFieldNumber(I)V

    const-string v0, "field"

    move-object v2, p0

    .line 117
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "fieldType"

    move-object/from16 v4, p2

    .line 118
    invoke-static {v4, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "messageClass"

    move-object/from16 v5, p3

    .line 119
    invoke-static {v5, v0}, Lcom/explorestack/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/explorestack/protobuf/FieldInfo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v14}, Lcom/explorestack/protobuf/FieldInfo;-><init>(Ljava/lang/reflect/Field;ILcom/explorestack/protobuf/FieldType;Ljava/lang/Class;Ljava/lang/reflect/Field;IZZLcom/explorestack/protobuf/OneofInfo;Ljava/lang/Class;Ljava/lang/Object;Lcom/explorestack/protobuf/Internal$EnumVerifier;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method private static isExactlyOneBitSet(I)Z
    .locals 1

    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static newBuilder()Lcom/explorestack/protobuf/FieldInfo$Builder;
    .locals 2

    .line 446
    new-instance v0, Lcom/explorestack/protobuf/FieldInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/FieldInfo$Builder;-><init>(Lcom/explorestack/protobuf/FieldInfo$1;)V

    return-object v0
.end method


# virtual methods
.method public final compareTo(Lcom/explorestack/protobuf/FieldInfo;)I
    .locals 1

    .line 384
    iget v0, p0, Lcom/explorestack/protobuf/FieldInfo;->fieldNumber:I

    iget p1, p1, Lcom/explorestack/protobuf/FieldInfo;->fieldNumber:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lcom/explorestack/protobuf/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/FieldInfo;->compareTo(Lcom/explorestack/protobuf/FieldInfo;)I

    move-result p1

    return p1
.end method

.method public final getCachedSizeField()Ljava/lang/reflect/Field;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->cachedSizeField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final getEnumVerifier()Lcom/explorestack/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->enumVerifier:Lcom/explorestack/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public final getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final getFieldNumber()I
    .locals 1

    .line 350
    iget v0, p0, Lcom/explorestack/protobuf/FieldInfo;->fieldNumber:I

    return v0
.end method

.method public final getListElementType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getMapDefaultEntry()Ljava/lang/Object;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->mapDefaultEntry:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMessageFieldClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 433
    sget-object v0, Lcom/explorestack/protobuf/FieldInfo$1;->$SwitchMap$com$google$protobuf$FieldType:[I

    iget-object v1, p0, Lcom/explorestack/protobuf/FieldInfo;->type:Lcom/explorestack/protobuf/FieldType;

    invoke-virtual {v1}, Lcom/explorestack/protobuf/FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->messageClass:Ljava/lang/Class;

    return-object v0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    return-object v0
.end method

.method public final getOneof()Lcom/explorestack/protobuf/OneofInfo;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->oneof:Lcom/explorestack/protobuf/OneofInfo;

    return-object v0
.end method

.method public final getOneofStoredType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->oneofStoredType:Ljava/lang/Class;

    return-object v0
.end method

.method public final getPresenceField()Ljava/lang/reflect/Field;
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->presenceField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final getPresenceMask()I
    .locals 1

    .line 409
    iget v0, p0, Lcom/explorestack/protobuf/FieldInfo;->presenceMask:I

    return v0
.end method

.method public final getType()Lcom/explorestack/protobuf/FieldType;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/explorestack/protobuf/FieldInfo;->type:Lcom/explorestack/protobuf/FieldType;

    return-object v0
.end method

.method public final isEnforceUtf8()Z
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldInfo;->enforceUtf8:Z

    return v0
.end method

.method public final isRequired()Z
    .locals 1

    .line 414
    iget-boolean v0, p0, Lcom/explorestack/protobuf/FieldInfo;->required:Z

    return v0
.end method
