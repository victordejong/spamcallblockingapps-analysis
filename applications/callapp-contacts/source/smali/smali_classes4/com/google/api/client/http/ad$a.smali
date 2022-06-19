.class final enum Lcom/google/api/client/http/ad$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/client/http/ad$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/api/client/http/ad$a;

.field public static final enum AMP:Lcom/google/api/client/http/ad$a;

.field public static final enum DOT:Lcom/google/api/client/http/ad$a;

.field public static final enum FORWARD_SLASH:Lcom/google/api/client/http/ad$a;

.field public static final enum HASH:Lcom/google/api/client/http/ad$a;

.field public static final enum PLUS:Lcom/google/api/client/http/ad$a;

.field public static final enum QUERY:Lcom/google/api/client/http/ad$a;

.field public static final enum SEMI_COLON:Lcom/google/api/client/http/ad$a;

.field public static final enum SIMPLE:Lcom/google/api/client/http/ad$a;


# instance fields
.field private final explodeJoiner:Ljava/lang/String;

.field private final outputPrefix:Ljava/lang/String;

.field private final propertyPrefix:Ljava/lang/Character;

.field private final requiresVarAssignment:Z

.field private final reservedExpansion:Z


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 71
    new-instance v8, Lcom/google/api/client/http/ad$a;

    const/16 v0, 0x2b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const-string v1, "PLUS"

    const/4 v2, 0x0

    const-string v4, ""

    const-string v5, ","

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/api/client/http/ad$a;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v8, Lcom/google/api/client/http/ad$a;->PLUS:Lcom/google/api/client/http/ad$a;

    .line 74
    new-instance v0, Lcom/google/api/client/http/ad$a;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    const-string v10, "HASH"

    const/4 v11, 0x1

    const-string v13, "#"

    const-string v14, ","

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/google/api/client/http/ad$a;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/google/api/client/http/ad$a;->HASH:Lcom/google/api/client/http/ad$a;

    .line 77
    new-instance v1, Lcom/google/api/client/http/ad$a;

    const/16 v2, 0x2e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    const-string v18, "DOT"

    const/16 v19, 0x2

    const-string v21, "."

    const-string v22, "."

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcom/google/api/client/http/ad$a;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v1, Lcom/google/api/client/http/ad$a;->DOT:Lcom/google/api/client/http/ad$a;

    .line 80
    new-instance v2, Lcom/google/api/client/http/ad$a;

    const/16 v3, 0x2f

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    const-string v10, "FORWARD_SLASH"

    const/4 v11, 0x3

    const-string v13, "/"

    const-string v14, "/"

    const/16 v16, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/google/api/client/http/ad$a;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v2, Lcom/google/api/client/http/ad$a;->FORWARD_SLASH:Lcom/google/api/client/http/ad$a;

    .line 83
    new-instance v3, Lcom/google/api/client/http/ad$a;

    const/16 v4, 0x3b

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    const-string v18, "SEMI_COLON"

    const/16 v19, 0x4

    const-string v21, ";"

    const-string v22, ";"

    const/16 v23, 0x1

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lcom/google/api/client/http/ad$a;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v3, Lcom/google/api/client/http/ad$a;->SEMI_COLON:Lcom/google/api/client/http/ad$a;

    .line 86
    new-instance v4, Lcom/google/api/client/http/ad$a;

    const/16 v5, 0x3f

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    const-string v10, "QUERY"

    const/4 v11, 0x5

    const-string v13, "?"

    const-string v14, "&"

    const/4 v15, 0x1

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Lcom/google/api/client/http/ad$a;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v4, Lcom/google/api/client/http/ad$a;->QUERY:Lcom/google/api/client/http/ad$a;

    .line 89
    new-instance v5, Lcom/google/api/client/http/ad$a;

    const/16 v6, 0x26

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    const-string v18, "AMP"

    const/16 v19, 0x6

    const-string v21, "&"

    const-string v22, "&"

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v24}, Lcom/google/api/client/http/ad$a;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v5, Lcom/google/api/client/http/ad$a;->AMP:Lcom/google/api/client/http/ad$a;

    .line 92
    new-instance v6, Lcom/google/api/client/http/ad$a;

    const-string v10, "SIMPLE"

    const/4 v11, 0x7

    const/4 v12, 0x0

    const-string v13, ""

    const-string v14, ","

    const/4 v15, 0x0

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Lcom/google/api/client/http/ad$a;-><init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v6, Lcom/google/api/client/http/ad$a;->SIMPLE:Lcom/google/api/client/http/ad$a;

    const/16 v7, 0x8

    new-array v7, v7, [Lcom/google/api/client/http/ad$a;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v0, v7, v8

    const/4 v0, 0x2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    aput-object v2, v7, v0

    const/4 v0, 0x4

    aput-object v3, v7, v0

    const/4 v0, 0x5

    aput-object v4, v7, v0

    const/4 v0, 0x6

    aput-object v5, v7, v0

    const/4 v0, 0x7

    aput-object v6, v7, v0

    .line 68
    sput-object v7, Lcom/google/api/client/http/ad$a;->$VALUES:[Lcom/google/api/client/http/ad$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Character;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput-object p3, p0, Lcom/google/api/client/http/ad$a;->propertyPrefix:Ljava/lang/Character;

    .line 1125
    invoke-static {p4}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 117
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/http/ad$a;->outputPrefix:Ljava/lang/String;

    .line 2125
    invoke-static {p5}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 118
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/http/ad$a;->explodeJoiner:Ljava/lang/String;

    .line 119
    iput-boolean p6, p0, Lcom/google/api/client/http/ad$a;->requiresVarAssignment:Z

    .line 120
    iput-boolean p7, p0, Lcom/google/api/client/http/ad$a;->reservedExpansion:Z

    if-eqz p3, :cond_0

    .line 122
    invoke-static {}, Lcom/google/api/client/http/ad;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/google/api/client/http/ad$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/api/client/http/ad$a;->getEncodedValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getEncodedValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/google/api/client/http/ad$a;->reservedExpansion:Z

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p1}, Lcom/google/api/client/a/a/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 164
    :cond_0
    invoke-static {p1}, Lcom/google/api/client/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/client/http/ad$a;
    .locals 1

    .line 68
    const-class v0, Lcom/google/api/client/http/ad$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/client/http/ad$a;

    return-object p0
.end method

.method public static values()[Lcom/google/api/client/http/ad$a;
    .locals 1

    .line 68
    sget-object v0, Lcom/google/api/client/http/ad$a;->$VALUES:[Lcom/google/api/client/http/ad$a;

    invoke-virtual {v0}, [Lcom/google/api/client/http/ad$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/client/http/ad$a;

    return-object v0
.end method


# virtual methods
.method final getExplodeJoiner()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/api/client/http/ad$a;->explodeJoiner:Ljava/lang/String;

    return-object v0
.end method

.method final getOutputPrefix()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/api/client/http/ad$a;->outputPrefix:Ljava/lang/String;

    return-object v0
.end method

.method final getVarNameStartIndex()I
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/api/client/http/ad$a;->propertyPrefix:Ljava/lang/Character;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method final requiresVarAssignment()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/google/api/client/http/ad$a;->requiresVarAssignment:Z

    return v0
.end method
