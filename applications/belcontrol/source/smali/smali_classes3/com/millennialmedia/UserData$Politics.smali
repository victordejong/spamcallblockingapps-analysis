.class public final enum Lcom/millennialmedia/UserData$Politics;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Politics"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/millennialmedia/UserData$Politics;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/UserData$Politics;

.field public static final enum CONSERVATIVE:Lcom/millennialmedia/UserData$Politics;

.field public static final enum DEMOCRAT:Lcom/millennialmedia/UserData$Politics;

.field public static final enum INDEPENDENT:Lcom/millennialmedia/UserData$Politics;

.field public static final enum LIBERAL:Lcom/millennialmedia/UserData$Politics;

.field public static final enum MODERATE:Lcom/millennialmedia/UserData$Politics;

.field public static final enum OTHER:Lcom/millennialmedia/UserData$Politics;

.field public static final enum REPUBLICAN:Lcom/millennialmedia/UserData$Politics;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/millennialmedia/UserData$Politics;

    const-string v1, "REPUBLICAN"

    const/4 v2, 0x0

    const-string v3, "republican"

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Politics;->REPUBLICAN:Lcom/millennialmedia/UserData$Politics;

    new-instance v1, Lcom/millennialmedia/UserData$Politics;

    const-string v3, "DEMOCRAT"

    const/4 v4, 0x1

    const-string v5, "democrat"

    invoke-direct {v1, v3, v4, v5}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/millennialmedia/UserData$Politics;->DEMOCRAT:Lcom/millennialmedia/UserData$Politics;

    new-instance v3, Lcom/millennialmedia/UserData$Politics;

    const-string v5, "CONSERVATIVE"

    const/4 v6, 0x2

    const-string v7, "conservative"

    invoke-direct {v3, v5, v6, v7}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/millennialmedia/UserData$Politics;->CONSERVATIVE:Lcom/millennialmedia/UserData$Politics;

    new-instance v5, Lcom/millennialmedia/UserData$Politics;

    const-string v7, "MODERATE"

    const/4 v8, 0x3

    const-string v9, "moderate"

    invoke-direct {v5, v7, v8, v9}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/millennialmedia/UserData$Politics;->MODERATE:Lcom/millennialmedia/UserData$Politics;

    new-instance v7, Lcom/millennialmedia/UserData$Politics;

    const-string v9, "LIBERAL"

    const/4 v10, 0x4

    const-string v11, "liberal"

    invoke-direct {v7, v9, v10, v11}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/millennialmedia/UserData$Politics;->LIBERAL:Lcom/millennialmedia/UserData$Politics;

    new-instance v9, Lcom/millennialmedia/UserData$Politics;

    const-string v11, "INDEPENDENT"

    const/4 v12, 0x5

    const-string v13, "independent"

    invoke-direct {v9, v11, v12, v13}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/millennialmedia/UserData$Politics;->INDEPENDENT:Lcom/millennialmedia/UserData$Politics;

    new-instance v11, Lcom/millennialmedia/UserData$Politics;

    const-string v13, "OTHER"

    const/4 v14, 0x6

    const-string v15, "other"

    invoke-direct {v11, v13, v14, v15}, Lcom/millennialmedia/UserData$Politics;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/millennialmedia/UserData$Politics;->OTHER:Lcom/millennialmedia/UserData$Politics;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/millennialmedia/UserData$Politics;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/millennialmedia/UserData$Politics;->$VALUES:[Lcom/millennialmedia/UserData$Politics;

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

    iput-object p3, p0, Lcom/millennialmedia/UserData$Politics;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/UserData$Politics;
    .locals 1

    const-class v0, Lcom/millennialmedia/UserData$Politics;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/UserData$Politics;

    return-object p0
.end method

.method public static values()[Lcom/millennialmedia/UserData$Politics;
    .locals 1

    sget-object v0, Lcom/millennialmedia/UserData$Politics;->$VALUES:[Lcom/millennialmedia/UserData$Politics;

    invoke-virtual {v0}, [Lcom/millennialmedia/UserData$Politics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/UserData$Politics;

    return-object v0
.end method
