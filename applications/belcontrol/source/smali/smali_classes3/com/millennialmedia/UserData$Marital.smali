.class public final enum Lcom/millennialmedia/UserData$Marital;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Marital"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/millennialmedia/UserData$Marital;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/UserData$Marital;

.field public static final enum DIVORCED:Lcom/millennialmedia/UserData$Marital;

.field public static final enum MARRIED:Lcom/millennialmedia/UserData$Marital;

.field public static final enum RELATIONSHIP:Lcom/millennialmedia/UserData$Marital;

.field public static final enum SINGLE:Lcom/millennialmedia/UserData$Marital;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/millennialmedia/UserData$Marital;

    const-string v1, "SINGLE"

    const/4 v2, 0x0

    const-string v3, "S"

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/UserData$Marital;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Marital;->SINGLE:Lcom/millennialmedia/UserData$Marital;

    new-instance v1, Lcom/millennialmedia/UserData$Marital;

    const-string v3, "MARRIED"

    const/4 v4, 0x1

    const-string v5, "M"

    invoke-direct {v1, v3, v4, v5}, Lcom/millennialmedia/UserData$Marital;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/millennialmedia/UserData$Marital;->MARRIED:Lcom/millennialmedia/UserData$Marital;

    new-instance v3, Lcom/millennialmedia/UserData$Marital;

    const-string v5, "DIVORCED"

    const/4 v6, 0x2

    const-string v7, "D"

    invoke-direct {v3, v5, v6, v7}, Lcom/millennialmedia/UserData$Marital;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/millennialmedia/UserData$Marital;->DIVORCED:Lcom/millennialmedia/UserData$Marital;

    new-instance v5, Lcom/millennialmedia/UserData$Marital;

    const-string v7, "RELATIONSHIP"

    const/4 v8, 0x3

    const-string v9, "O"

    invoke-direct {v5, v7, v8, v9}, Lcom/millennialmedia/UserData$Marital;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/millennialmedia/UserData$Marital;->RELATIONSHIP:Lcom/millennialmedia/UserData$Marital;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/millennialmedia/UserData$Marital;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/millennialmedia/UserData$Marital;->$VALUES:[Lcom/millennialmedia/UserData$Marital;

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

    iput-object p3, p0, Lcom/millennialmedia/UserData$Marital;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/UserData$Marital;
    .locals 1

    const-class v0, Lcom/millennialmedia/UserData$Marital;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/UserData$Marital;

    return-object p0
.end method

.method public static values()[Lcom/millennialmedia/UserData$Marital;
    .locals 1

    sget-object v0, Lcom/millennialmedia/UserData$Marital;->$VALUES:[Lcom/millennialmedia/UserData$Marital;

    invoke-virtual {v0}, [Lcom/millennialmedia/UserData$Marital;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/UserData$Marital;

    return-object v0
.end method
