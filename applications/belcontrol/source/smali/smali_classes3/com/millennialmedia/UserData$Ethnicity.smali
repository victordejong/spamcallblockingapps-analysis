.class public final enum Lcom/millennialmedia/UserData$Ethnicity;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ethnicity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/millennialmedia/UserData$Ethnicity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum ASIAN:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum BLACK:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum HISPANIC:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum INDIAN:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum MIDDLE_EASTERN:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum NATIVE_AMERICAN:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum OTHER:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum PACIFIC_ISLANDER:Lcom/millennialmedia/UserData$Ethnicity;

.field public static final enum WHITE:Lcom/millennialmedia/UserData$Ethnicity;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v1, "HISPANIC"

    const/4 v2, 0x0

    const-string v3, "hispanic"

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Ethnicity;->HISPANIC:Lcom/millennialmedia/UserData$Ethnicity;

    new-instance v1, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v3, "BLACK"

    const/4 v4, 0x1

    const-string v5, "africanamerican"

    invoke-direct {v1, v3, v4, v5}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/millennialmedia/UserData$Ethnicity;->BLACK:Lcom/millennialmedia/UserData$Ethnicity;

    new-instance v3, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v5, "ASIAN"

    const/4 v6, 0x2

    const-string v7, "asian"

    invoke-direct {v3, v5, v6, v7}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/millennialmedia/UserData$Ethnicity;->ASIAN:Lcom/millennialmedia/UserData$Ethnicity;

    new-instance v5, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v7, "INDIAN"

    const/4 v8, 0x3

    const-string v9, "indian"

    invoke-direct {v5, v7, v8, v9}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/millennialmedia/UserData$Ethnicity;->INDIAN:Lcom/millennialmedia/UserData$Ethnicity;

    new-instance v7, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v9, "MIDDLE_EASTERN"

    const/4 v10, 0x4

    const-string v11, "middleeastern"

    invoke-direct {v7, v9, v10, v11}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/millennialmedia/UserData$Ethnicity;->MIDDLE_EASTERN:Lcom/millennialmedia/UserData$Ethnicity;

    new-instance v9, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v11, "NATIVE_AMERICAN"

    const/4 v12, 0x5

    const-string v13, "nativeamerican"

    invoke-direct {v9, v11, v12, v13}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/millennialmedia/UserData$Ethnicity;->NATIVE_AMERICAN:Lcom/millennialmedia/UserData$Ethnicity;

    new-instance v11, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v13, "PACIFIC_ISLANDER"

    const/4 v14, 0x6

    const-string v15, "pacificislander"

    invoke-direct {v11, v13, v14, v15}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/millennialmedia/UserData$Ethnicity;->PACIFIC_ISLANDER:Lcom/millennialmedia/UserData$Ethnicity;

    new-instance v13, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v15, "WHITE"

    const/4 v14, 0x7

    const-string v12, "white"

    invoke-direct {v13, v15, v14, v12}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/millennialmedia/UserData$Ethnicity;->WHITE:Lcom/millennialmedia/UserData$Ethnicity;

    new-instance v12, Lcom/millennialmedia/UserData$Ethnicity;

    const-string v15, "OTHER"

    const/16 v14, 0x8

    const-string v10, "other"

    invoke-direct {v12, v15, v14, v10}, Lcom/millennialmedia/UserData$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/millennialmedia/UserData$Ethnicity;->OTHER:Lcom/millennialmedia/UserData$Ethnicity;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/millennialmedia/UserData$Ethnicity;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcom/millennialmedia/UserData$Ethnicity;->$VALUES:[Lcom/millennialmedia/UserData$Ethnicity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/millennialmedia/UserData$Ethnicity;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/UserData$Ethnicity;
    .locals 1

    const-class v0, Lcom/millennialmedia/UserData$Ethnicity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/UserData$Ethnicity;

    return-object p0
.end method

.method public static values()[Lcom/millennialmedia/UserData$Ethnicity;
    .locals 1

    sget-object v0, Lcom/millennialmedia/UserData$Ethnicity;->$VALUES:[Lcom/millennialmedia/UserData$Ethnicity;

    invoke-virtual {v0}, [Lcom/millennialmedia/UserData$Ethnicity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/UserData$Ethnicity;

    return-object v0
.end method
