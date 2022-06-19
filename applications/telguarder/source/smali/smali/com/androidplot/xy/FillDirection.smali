.class public final enum Lcom/androidplot/xy/FillDirection;
.super Ljava/lang/Enum;
.source "FillDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/FillDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/FillDirection;

.field public static final enum BOTTOM:Lcom/androidplot/xy/FillDirection;

.field public static final enum DOMAIN_ORIGIN:Lcom/androidplot/xy/FillDirection;

.field public static final enum LEFT:Lcom/androidplot/xy/FillDirection;

.field public static final enum RANGE_ORIGIN:Lcom/androidplot/xy/FillDirection;

.field public static final enum RIGHT:Lcom/androidplot/xy/FillDirection;

.field public static final enum TOP:Lcom/androidplot/xy/FillDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 30
    new-instance v0, Lcom/androidplot/xy/FillDirection;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/FillDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/FillDirection;->TOP:Lcom/androidplot/xy/FillDirection;

    .line 31
    new-instance v1, Lcom/androidplot/xy/FillDirection;

    const-string v3, "BOTTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/FillDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/FillDirection;->BOTTOM:Lcom/androidplot/xy/FillDirection;

    .line 32
    new-instance v3, Lcom/androidplot/xy/FillDirection;

    const-string v5, "LEFT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/xy/FillDirection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/xy/FillDirection;->LEFT:Lcom/androidplot/xy/FillDirection;

    .line 33
    new-instance v5, Lcom/androidplot/xy/FillDirection;

    const-string v7, "RIGHT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/androidplot/xy/FillDirection;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/androidplot/xy/FillDirection;->RIGHT:Lcom/androidplot/xy/FillDirection;

    .line 34
    new-instance v7, Lcom/androidplot/xy/FillDirection;

    const-string v9, "DOMAIN_ORIGIN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/androidplot/xy/FillDirection;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/androidplot/xy/FillDirection;->DOMAIN_ORIGIN:Lcom/androidplot/xy/FillDirection;

    .line 35
    new-instance v9, Lcom/androidplot/xy/FillDirection;

    const-string v11, "RANGE_ORIGIN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/androidplot/xy/FillDirection;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/androidplot/xy/FillDirection;->RANGE_ORIGIN:Lcom/androidplot/xy/FillDirection;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/androidplot/xy/FillDirection;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 29
    sput-object v11, Lcom/androidplot/xy/FillDirection;->$VALUES:[Lcom/androidplot/xy/FillDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/FillDirection;
    .locals 1

    .line 29
    const-class v0, Lcom/androidplot/xy/FillDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/FillDirection;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/FillDirection;
    .locals 1

    .line 29
    sget-object v0, Lcom/androidplot/xy/FillDirection;->$VALUES:[Lcom/androidplot/xy/FillDirection;

    invoke-virtual {v0}, [Lcom/androidplot/xy/FillDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/FillDirection;

    return-object v0
.end method
