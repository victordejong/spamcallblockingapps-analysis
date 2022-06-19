.class public final enum La7/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "La7/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:La7/f;

.field public static final enum c:La7/f;

.field public static final synthetic d:[La7/f;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, La7/f;

    const-string v1, "DEFINED_BY_JAVASCRIPT"

    const/4 v2, 0x0

    const-string v3, "definedByJavaScript"

    invoke-direct {v0, v1, v2, v3}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, La7/f;->b:La7/f;

    new-instance v1, La7/f;

    const-string v3, "UNSPECIFIED"

    const/4 v4, 0x1

    const-string v5, "unspecified"

    invoke-direct {v1, v3, v4, v5}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, La7/f;

    const-string v5, "LOADED"

    const/4 v6, 0x2

    const-string v7, "loaded"

    invoke-direct {v3, v5, v6, v7}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, La7/f;

    const-string v7, "BEGIN_TO_RENDER"

    const/4 v8, 0x3

    const-string v9, "beginToRender"

    invoke-direct {v5, v7, v8, v9}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, La7/f;->c:La7/f;

    new-instance v7, La7/f;

    const-string v9, "ONE_PIXEL"

    const/4 v10, 0x4

    const-string v11, "onePixel"

    invoke-direct {v7, v9, v10, v11}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, La7/f;

    const-string v11, "VIEWABLE"

    const/4 v12, 0x5

    const-string v13, "viewable"

    invoke-direct {v9, v11, v12, v13}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v11, La7/f;

    const-string v13, "AUDIBLE"

    const/4 v14, 0x6

    const-string v15, "audible"

    invoke-direct {v11, v13, v14, v15}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, La7/f;

    const-string v15, "OTHER"

    const/4 v14, 0x7

    const-string v12, "other"

    invoke-direct {v13, v15, v14, v12}, La7/f;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v12, 0x8

    new-array v12, v12, [La7/f;

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

    sput-object v12, La7/f;->d:[La7/f;

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

    iput-object p3, p0, La7/f;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La7/f;
    .locals 1

    const-class v0, La7/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La7/f;

    return-object p0
.end method

.method public static values()[La7/f;
    .locals 1

    sget-object v0, La7/f;->d:[La7/f;

    invoke-virtual {v0}, [La7/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La7/f;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La7/f;->a:Ljava/lang/String;

    return-object v0
.end method
