.class public final enum Lcom/androidplot/Plot$BorderStyle;
.super Ljava/lang/Enum;
.source "Plot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/Plot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BorderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/Plot$BorderStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/Plot$BorderStyle;

.field public static final enum NONE:Lcom/androidplot/Plot$BorderStyle;

.field public static final enum ROUNDED:Lcom/androidplot/Plot$BorderStyle;

.field public static final enum SQUARE:Lcom/androidplot/Plot$BorderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 116
    new-instance v0, Lcom/androidplot/Plot$BorderStyle;

    const-string v1, "ROUNDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/Plot$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/Plot$BorderStyle;->ROUNDED:Lcom/androidplot/Plot$BorderStyle;

    .line 117
    new-instance v1, Lcom/androidplot/Plot$BorderStyle;

    const-string v3, "SQUARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/Plot$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/Plot$BorderStyle;->SQUARE:Lcom/androidplot/Plot$BorderStyle;

    .line 118
    new-instance v3, Lcom/androidplot/Plot$BorderStyle;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/Plot$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/Plot$BorderStyle;->NONE:Lcom/androidplot/Plot$BorderStyle;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/androidplot/Plot$BorderStyle;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 115
    sput-object v5, Lcom/androidplot/Plot$BorderStyle;->$VALUES:[Lcom/androidplot/Plot$BorderStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/Plot$BorderStyle;
    .locals 1

    .line 115
    const-class v0, Lcom/androidplot/Plot$BorderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/Plot$BorderStyle;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/Plot$BorderStyle;
    .locals 1

    .line 115
    sget-object v0, Lcom/androidplot/Plot$BorderStyle;->$VALUES:[Lcom/androidplot/Plot$BorderStyle;

    invoke-virtual {v0}, [Lcom/androidplot/Plot$BorderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/Plot$BorderStyle;

    return-object v0
.end method
