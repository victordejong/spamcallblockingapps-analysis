.class public final enum Lb41;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb41;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lb41;

.field public static final enum c:Lb41;

.field public static final enum d:Lb41;

.field public static final enum f:Lb41;

.field public static final enum g:Lb41;

.field public static final enum h:Lb41;

.field public static final enum j:Lb41;

.field public static final enum k:Lb41;

.field public static final synthetic l:[Lb41;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lb41;

    const-string v1, "DEFINED_BY_JAVASCRIPT"

    const/4 v2, 0x0

    const-string v3, "definedByJavaScript"

    invoke-direct {v0, v1, v2, v3}, Lb41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lb41;->b:Lb41;

    new-instance v1, Lb41;

    const-string v3, "UNSPECIFIED"

    const/4 v4, 0x1

    const-string v5, "unspecified"

    invoke-direct {v1, v3, v4, v5}, Lb41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lb41;->c:Lb41;

    new-instance v3, Lb41;

    const-string v5, "LOADED"

    const/4 v6, 0x2

    const-string v7, "loaded"

    invoke-direct {v3, v5, v6, v7}, Lb41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lb41;->d:Lb41;

    new-instance v5, Lb41;

    const-string v7, "BEGIN_TO_RENDER"

    const/4 v8, 0x3

    const-string v9, "beginToRender"

    invoke-direct {v5, v7, v8, v9}, Lb41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lb41;->f:Lb41;

    new-instance v7, Lb41;

    const-string v9, "ONE_PIXEL"

    const/4 v10, 0x4

    const-string v11, "onePixel"

    invoke-direct {v7, v9, v10, v11}, Lb41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lb41;->g:Lb41;

    new-instance v9, Lb41;

    const-string v11, "VIEWABLE"

    const/4 v12, 0x5

    const-string v13, "viewable"

    invoke-direct {v9, v11, v12, v13}, Lb41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lb41;->h:Lb41;

    new-instance v11, Lb41;

    const-string v13, "AUDIBLE"

    const/4 v14, 0x6

    const-string v15, "audible"

    invoke-direct {v11, v13, v14, v15}, Lb41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lb41;->j:Lb41;

    new-instance v13, Lb41;

    const-string v15, "OTHER"

    const/4 v14, 0x7

    const-string v12, "other"

    invoke-direct {v13, v15, v14, v12}, Lb41;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lb41;->k:Lb41;

    const/16 v12, 0x8

    new-array v12, v12, [Lb41;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    sput-object v12, Lb41;->l:[Lb41;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lb41;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb41;
    .locals 1

    const-class v0, Lb41;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb41;

    return-object p0
.end method

.method public static values()[Lb41;
    .locals 1

    sget-object v0, Lb41;->l:[Lb41;

    invoke-virtual {v0}, [Lb41;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb41;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb41;->a:Ljava/lang/String;

    return-object v0
.end method
