.class public final enum Lcom/androidplot/xy/StepMode;
.super Ljava/lang/Enum;
.source "StepMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/StepMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/StepMode;

.field public static final enum INCREMENT_BY_FIT:Lcom/androidplot/xy/StepMode;

.field public static final enum INCREMENT_BY_PIXELS:Lcom/androidplot/xy/StepMode;

.field public static final enum INCREMENT_BY_VAL:Lcom/androidplot/xy/StepMode;

.field public static final enum SUBDIVIDE:Lcom/androidplot/xy/StepMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 26
    new-instance v0, Lcom/androidplot/xy/StepMode;

    const-string v1, "SUBDIVIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/StepMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/StepMode;->SUBDIVIDE:Lcom/androidplot/xy/StepMode;

    .line 27
    new-instance v1, Lcom/androidplot/xy/StepMode;

    const-string v3, "INCREMENT_BY_VAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/StepMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/StepMode;->INCREMENT_BY_VAL:Lcom/androidplot/xy/StepMode;

    .line 28
    new-instance v3, Lcom/androidplot/xy/StepMode;

    const-string v5, "INCREMENT_BY_PIXELS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/xy/StepMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/xy/StepMode;->INCREMENT_BY_PIXELS:Lcom/androidplot/xy/StepMode;

    .line 29
    new-instance v5, Lcom/androidplot/xy/StepMode;

    const-string v7, "INCREMENT_BY_FIT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/androidplot/xy/StepMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/androidplot/xy/StepMode;->INCREMENT_BY_FIT:Lcom/androidplot/xy/StepMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/androidplot/xy/StepMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 25
    sput-object v7, Lcom/androidplot/xy/StepMode;->$VALUES:[Lcom/androidplot/xy/StepMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/StepMode;
    .locals 1

    .line 25
    const-class v0, Lcom/androidplot/xy/StepMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/StepMode;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/StepMode;
    .locals 1

    .line 25
    sget-object v0, Lcom/androidplot/xy/StepMode;->$VALUES:[Lcom/androidplot/xy/StepMode;

    invoke-virtual {v0}, [Lcom/androidplot/xy/StepMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/StepMode;

    return-object v0
.end method
