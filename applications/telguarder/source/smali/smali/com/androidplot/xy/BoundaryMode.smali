.class public final enum Lcom/androidplot/xy/BoundaryMode;
.super Ljava/lang/Enum;
.source "BoundaryMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/BoundaryMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/BoundaryMode;

.field public static final enum AUTO:Lcom/androidplot/xy/BoundaryMode;

.field public static final enum FIXED:Lcom/androidplot/xy/BoundaryMode;

.field public static final enum GROW:Lcom/androidplot/xy/BoundaryMode;

.field public static final enum SHRINK:Lcom/androidplot/xy/BoundaryMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 20
    new-instance v0, Lcom/androidplot/xy/BoundaryMode;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/BoundaryMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/BoundaryMode;->FIXED:Lcom/androidplot/xy/BoundaryMode;

    .line 21
    new-instance v1, Lcom/androidplot/xy/BoundaryMode;

    const-string v3, "AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/BoundaryMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/BoundaryMode;->AUTO:Lcom/androidplot/xy/BoundaryMode;

    .line 22
    new-instance v3, Lcom/androidplot/xy/BoundaryMode;

    const-string v5, "GROW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/xy/BoundaryMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/xy/BoundaryMode;->GROW:Lcom/androidplot/xy/BoundaryMode;

    .line 23
    new-instance v5, Lcom/androidplot/xy/BoundaryMode;

    const-string v7, "SHRINK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/androidplot/xy/BoundaryMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/androidplot/xy/BoundaryMode;->SHRINK:Lcom/androidplot/xy/BoundaryMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/androidplot/xy/BoundaryMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 19
    sput-object v7, Lcom/androidplot/xy/BoundaryMode;->$VALUES:[Lcom/androidplot/xy/BoundaryMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/BoundaryMode;
    .locals 1

    .line 19
    const-class v0, Lcom/androidplot/xy/BoundaryMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/BoundaryMode;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/BoundaryMode;
    .locals 1

    .line 19
    sget-object v0, Lcom/androidplot/xy/BoundaryMode;->$VALUES:[Lcom/androidplot/xy/BoundaryMode;

    invoke-virtual {v0}, [Lcom/androidplot/xy/BoundaryMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/BoundaryMode;

    return-object v0
.end method
