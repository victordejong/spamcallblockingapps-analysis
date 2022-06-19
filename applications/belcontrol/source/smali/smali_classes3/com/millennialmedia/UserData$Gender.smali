.class public final enum Lcom/millennialmedia/UserData$Gender;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/millennialmedia/UserData$Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/millennialmedia/UserData$Gender;

.field public static final enum FEMALE:Lcom/millennialmedia/UserData$Gender;

.field public static final enum MALE:Lcom/millennialmedia/UserData$Gender;

.field public static final enum UNKNOWN:Lcom/millennialmedia/UserData$Gender;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/millennialmedia/UserData$Gender;

    const-string v1, "MALE"

    const/4 v2, 0x0

    const-string v3, "M"

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/UserData$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/millennialmedia/UserData$Gender;->MALE:Lcom/millennialmedia/UserData$Gender;

    new-instance v1, Lcom/millennialmedia/UserData$Gender;

    const-string v3, "FEMALE"

    const/4 v4, 0x1

    const-string v5, "F"

    invoke-direct {v1, v3, v4, v5}, Lcom/millennialmedia/UserData$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/millennialmedia/UserData$Gender;->FEMALE:Lcom/millennialmedia/UserData$Gender;

    new-instance v3, Lcom/millennialmedia/UserData$Gender;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    const-string v7, "O"

    invoke-direct {v3, v5, v6, v7}, Lcom/millennialmedia/UserData$Gender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/millennialmedia/UserData$Gender;->UNKNOWN:Lcom/millennialmedia/UserData$Gender;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/millennialmedia/UserData$Gender;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/millennialmedia/UserData$Gender;->$VALUES:[Lcom/millennialmedia/UserData$Gender;

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

    iput-object p3, p0, Lcom/millennialmedia/UserData$Gender;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/UserData$Gender;
    .locals 1

    const-class v0, Lcom/millennialmedia/UserData$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/millennialmedia/UserData$Gender;

    return-object p0
.end method

.method public static values()[Lcom/millennialmedia/UserData$Gender;
    .locals 1

    sget-object v0, Lcom/millennialmedia/UserData$Gender;->$VALUES:[Lcom/millennialmedia/UserData$Gender;

    invoke-virtual {v0}, [Lcom/millennialmedia/UserData$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/millennialmedia/UserData$Gender;

    return-object v0
.end method
