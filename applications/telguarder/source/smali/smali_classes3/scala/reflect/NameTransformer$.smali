.class public final Lscala/reflect/NameTransformer$;
.super Ljava/lang/Object;
.source "NameTransformer.scala"


# static fields
.field public static final MODULE$:Lscala/reflect/NameTransformer$;


# instance fields
.field private final LOCAL_SUFFIX_STRING:Ljava/lang/String;

.field private final MODULE_INSTANCE_NAME:Ljava/lang/String;

.field private final MODULE_SUFFIX_STRING:Ljava/lang/String;

.field private final NAME_JOIN_STRING:Ljava/lang/String;

.field private final SETTER_SUFFIX_STRING:Ljava/lang/String;

.field private final TRAIT_SETTER_SEPARATOR_STRING:Ljava/lang/String;

.field private final code2op:[Lscala/reflect/NameTransformer$OpCodes;

.field private final ncodes:I

.field private final nops:I

.field private final op2code:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lscala/reflect/NameTransformer$;

    invoke-direct {v0}, Lscala/reflect/NameTransformer$;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lscala/reflect/NameTransformer$;->MODULE$:Lscala/reflect/NameTransformer$;

    .line 18
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    invoke-virtual {v0}, Lscala/sys/package$;->props()Lscala/sys/SystemProperties;

    move-result-object v0

    new-instance v1, Lscala/reflect/NameTransformer$$anonfun$1;

    invoke-direct {v1}, Lscala/reflect/NameTransformer$$anonfun$1;-><init>()V

    const-string v2, "SCALA_MODULE_SUFFIX_STRING"

    invoke-virtual {v0, v2, v1}, Lscala/sys/SystemProperties;->getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lscala/reflect/NameTransformer$;->MODULE_SUFFIX_STRING:Ljava/lang/String;

    .line 19
    sget-object v0, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    invoke-virtual {v0}, Lscala/sys/package$;->props()Lscala/sys/SystemProperties;

    move-result-object v0

    new-instance v1, Lscala/reflect/NameTransformer$$anonfun$2;

    invoke-direct {v1}, Lscala/reflect/NameTransformer$$anonfun$2;-><init>()V

    const-string v2, "SCALA_NAME_JOIN_STRING"

    invoke-virtual {v0, v2, v1}, Lscala/sys/SystemProperties;->getOrElse(Ljava/lang/Object;Lscala/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lscala/reflect/NameTransformer$;->NAME_JOIN_STRING:Ljava/lang/String;

    const-string v0, "MODULE$"

    .line 20
    iput-object v0, p0, Lscala/reflect/NameTransformer$;->MODULE_INSTANCE_NAME:Ljava/lang/String;

    const-string v0, " "

    .line 21
    iput-object v0, p0, Lscala/reflect/NameTransformer$;->LOCAL_SUFFIX_STRING:Ljava/lang/String;

    const-string v0, "_$eq"

    .line 22
    iput-object v0, p0, Lscala/reflect/NameTransformer$;->SETTER_SUFFIX_STRING:Ljava/lang/String;

    const-string v0, "$_setter_$"

    .line 23
    iput-object v0, p0, Lscala/reflect/NameTransformer$;->TRAIT_SETTER_SEPARATOR_STRING:Ljava/lang/String;

    const/16 v0, 0x80

    .line 25
    iput v0, p0, Lscala/reflect/NameTransformer$;->nops:I

    const/16 v0, 0x2a4

    .line 26
    iput v0, p0, Lscala/reflect/NameTransformer$;->ncodes:I

    .line 30
    invoke-direct {p0}, Lscala/reflect/NameTransformer$;->nops()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lscala/reflect/NameTransformer$;->op2code:[Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lscala/reflect/NameTransformer$;->ncodes()I

    move-result v0

    new-array v0, v0, [Lscala/reflect/NameTransformer$OpCodes;

    iput-object v0, p0, Lscala/reflect/NameTransformer$;->code2op:[Lscala/reflect/NameTransformer$OpCodes;

    const/16 v0, 0x7e

    const-string v1, "$tilde"

    .line 39
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x3d

    const-string v1, "$eq"

    .line 40
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x3c

    const-string v1, "$less"

    .line 41
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x3e

    const-string v1, "$greater"

    .line 42
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x21

    const-string v1, "$bang"

    .line 43
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x23

    const-string v1, "$hash"

    .line 44
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x25

    const-string v1, "$percent"

    .line 45
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x5e

    const-string v1, "$up"

    .line 46
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x26

    const-string v1, "$amp"

    .line 47
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x7c

    const-string v1, "$bar"

    .line 48
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x2a

    const-string v1, "$times"

    .line 49
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x2f

    const-string v1, "$div"

    .line 50
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x2b

    const-string v1, "$plus"

    .line 51
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x2d

    const-string v1, "$minus"

    .line 52
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x3a

    const-string v1, "$colon"

    .line 53
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x5c

    const-string v1, "$bslash"

    .line 54
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x3f

    const-string v1, "$qmark"

    .line 55
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    const/16 v0, 0x40

    const-string v1, "$at"

    .line 56
    invoke-direct {p0, v0, v1}, Lscala/reflect/NameTransformer$;->enterOp(CLjava/lang/String;)V

    return-void
.end method

.method private code2op()[Lscala/reflect/NameTransformer$OpCodes;
    .locals 1

    .line 31
    iget-object v0, p0, Lscala/reflect/NameTransformer$;->code2op:[Lscala/reflect/NameTransformer$OpCodes;

    return-object v0
.end method

.method private enterOp(CLjava/lang/String;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Lscala/reflect/NameTransformer$;->op2code()[Ljava/lang/String;

    move-result-object v0

    aput-object p2, v0, p1

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x61

    mul-int/lit8 v0, v0, 0x1a

    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x61

    .line 35
    invoke-direct {p0}, Lscala/reflect/NameTransformer$;->code2op()[Lscala/reflect/NameTransformer$OpCodes;

    move-result-object v1

    new-instance v2, Lscala/reflect/NameTransformer$OpCodes;

    invoke-direct {p0}, Lscala/reflect/NameTransformer$;->code2op()[Lscala/reflect/NameTransformer$OpCodes;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-direct {v2, p1, p2, v3}, Lscala/reflect/NameTransformer$OpCodes;-><init>(CLjava/lang/String;Lscala/reflect/NameTransformer$OpCodes;)V

    aput-object v2, v1, v0

    return-void
.end method

.method private ncodes()I
    .locals 1

    .line 26
    iget v0, p0, Lscala/reflect/NameTransformer$;->ncodes:I

    return v0
.end method

.method private nops()I
    .locals 1

    .line 25
    iget v0, p0, Lscala/reflect/NameTransformer$;->nops:I

    return v0
.end method

.method private op2code()[Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lscala/reflect/NameTransformer$;->op2code:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public LOCAL_SUFFIX_STRING()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lscala/reflect/NameTransformer$;->LOCAL_SUFFIX_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public MODULE_INSTANCE_NAME()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lscala/reflect/NameTransformer$;->MODULE_INSTANCE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public MODULE_SUFFIX_STRING()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lscala/reflect/NameTransformer$;->MODULE_SUFFIX_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public NAME_JOIN_STRING()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lscala/reflect/NameTransformer$;->NAME_JOIN_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public SETTER_SUFFIX_STRING()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lscala/reflect/NameTransformer$;->SETTER_SUFFIX_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public TRAIT_SETTER_SEPARATOR_STRING()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lscala/reflect/NameTransformer$;->TRAIT_SETTER_SEPARATOR_STRING:Ljava/lang/String;

    return-object v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const-string v0, "<init>"

    .line 99
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v1}, Lscala/collection/mutable/StringBuilder;-><init>()V

    new-instance v2, Lscala/collection/immutable/StringOps;

    sget-object v3, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    invoke-direct {v2, p1}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lscala/collection/immutable/StringOps;->stripSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    const-string v0, "this"

    invoke-virtual {p1, v0}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/Object;)Lscala/collection/mutable/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_a

    .line 107
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x24

    if-ne v5, v6, :cond_6

    add-int/lit8 v6, v3, 0x2

    if-ge v6, v0, :cond_6

    add-int/lit8 v7, v3, 0x1

    .line 109
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x61

    if-gt v8, v7, :cond_6

    const/16 v9, 0x7a

    if-gt v7, v9, :cond_6

    .line 111
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v8, v10, :cond_3

    if-gt v10, v9, :cond_3

    .line 113
    invoke-direct {p0}, Lscala/reflect/NameTransformer$;->code2op()[Lscala/reflect/NameTransformer$OpCodes;

    move-result-object v6

    add-int/lit8 v7, v7, -0x61

    mul-int/lit8 v7, v7, 0x1a

    add-int/2addr v7, v10

    sub-int/2addr v7, v8

    aget-object v6, v6, v7

    :goto_1
    if-eqz v6, :cond_1

    .line 114
    invoke-virtual {v6}, Lscala/reflect/NameTransformer$OpCodes;->code()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lscala/reflect/NameTransformer$OpCodes;->next()Lscala/reflect/NameTransformer$OpCodes;

    move-result-object v6

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_7

    if-nez v4, :cond_2

    .line 117
    new-instance v4, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v4}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 118
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    goto :goto_2

    .line 116
    :cond_2
    sget-object v7, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 120
    :goto_2
    invoke-virtual {v6}, Lscala/reflect/NameTransformer$OpCodes;->op()C

    move-result v7

    invoke-virtual {v4, v7}, Lscala/collection/mutable/StringBuilder;->append(C)Lscala/collection/mutable/StringBuilder;

    .line 121
    invoke-virtual {v6}, Lscala/reflect/NameTransformer$OpCodes;->code()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    goto :goto_5

    :cond_3
    sub-int v8, v0, v3

    const/4 v9, 0x6

    if-lt v8, v9, :cond_6

    const/16 v8, 0x75

    if-ne v7, v8, :cond_6

    .line 127
    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x41

    if-gt v7, v10, :cond_6

    const/16 v7, 0x46

    if-gt v10, v7, :cond_6

    :cond_4
    add-int/lit8 v7, v3, 0x6

    .line 130
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x10

    .line 132
    :try_start_0
    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-char v6, v6

    if-nez v4, :cond_5

    .line 134
    new-instance v8, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v8}, Lscala/collection/mutable/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :try_start_1
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v8

    goto :goto_3

    :catch_0
    move-object v4, v8

    goto :goto_4

    .line 133
    :cond_5
    :try_start_2
    sget-object v8, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 137
    :goto_3
    invoke-virtual {v4, v6}, Lscala/collection/mutable/StringBuilder;->append(C)Lscala/collection/mutable/StringBuilder;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v3, 0x1

    move-object v6, v1

    goto :goto_6

    :catch_1
    :cond_6
    :goto_4
    move-object v6, v1

    :cond_7
    :goto_5
    move v7, v3

    const/4 v3, 0x0

    :goto_6
    if-nez v6, :cond_9

    if-nez v3, :cond_9

    if-eqz v4, :cond_8

    .line 154
    invoke-virtual {v4, v5}, Lscala/collection/mutable/StringBuilder;->append(C)Lscala/collection/mutable/StringBuilder;

    goto :goto_7

    .line 153
    :cond_8
    sget-object v3, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    :goto_7
    add-int/lit8 v3, v7, 0x1

    goto/16 :goto_0

    :cond_9
    move v3, v7

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    goto :goto_8

    .line 159
    :cond_b
    invoke-virtual {v4}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_8
    return-object p1
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_5

    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 69
    invoke-direct {p0}, Lscala/reflect/NameTransformer$;->nops()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-direct {p0}, Lscala/reflect/NameTransformer$;->op2code()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v4

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    .line 71
    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 72
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    goto :goto_1

    .line 70
    :cond_0
    sget-object v5, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 74
    :goto_1
    invoke-direct {p0}, Lscala/reflect/NameTransformer$;->op2code()[Ljava/lang/String;

    move-result-object v5

    aget-object v4, v5, v4

    invoke-virtual {v2, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    goto :goto_3

    .line 77
    :cond_1
    invoke-static {v4}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_2

    .line 85
    invoke-virtual {v2, v4}, Lscala/collection/mutable/StringBuilder;->append(C)Lscala/collection/mutable/StringBuilder;

    goto :goto_3

    .line 84
    :cond_2
    sget-object v4, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    goto :goto_3

    :cond_3
    if-nez v2, :cond_4

    .line 79
    new-instance v2, Lscala/collection/mutable/StringBuilder;

    invoke-direct {v2}, Lscala/collection/mutable/StringBuilder;-><init>()V

    .line 80
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    goto :goto_2

    .line 78
    :cond_4
    sget-object v5, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    .line 82
    :goto_2
    new-instance v5, Lscala/collection/immutable/StringOps;

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const-string v6, "$u%04X"

    invoke-direct {v5, v6}, Lscala/collection/immutable/StringOps;-><init>(Ljava/lang/String;)V

    sget-object v6, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-virtual {v6, v7}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v4

    invoke-virtual {v5, v4}, Lscala/collection/immutable/StringOps;->format(Lscala/collection/Seq;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lscala/collection/mutable/StringBuilder;->append(Ljava/lang/String;)Lscala/collection/mutable/StringBuilder;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-nez v2, :cond_6

    goto :goto_4

    .line 89
    :cond_6
    invoke-virtual {v2}, Lscala/collection/mutable/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1
.end method
