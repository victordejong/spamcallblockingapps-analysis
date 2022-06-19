.class public final enum Lcom/androidplot/xy/OrderedXYSeries$XOrder;
.super Ljava/lang/Enum;
.source "OrderedXYSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/OrderedXYSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/OrderedXYSeries$XOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/OrderedXYSeries$XOrder;

.field public static final enum ASCENDING:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

.field public static final enum DESCENDING:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

.field public static final enum NONE:Lcom/androidplot/xy/OrderedXYSeries$XOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/OrderedXYSeries$XOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/OrderedXYSeries$XOrder;->ASCENDING:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    .line 20
    new-instance v1, Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    const-string v3, "DESCENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/OrderedXYSeries$XOrder;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/OrderedXYSeries$XOrder;->DESCENDING:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    .line 25
    new-instance v3, Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/androidplot/xy/OrderedXYSeries$XOrder;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/androidplot/xy/OrderedXYSeries$XOrder;->NONE:Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 9
    sput-object v5, Lcom/androidplot/xy/OrderedXYSeries$XOrder;->$VALUES:[Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/OrderedXYSeries$XOrder;
    .locals 1

    .line 9
    const-class v0, Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/OrderedXYSeries$XOrder;
    .locals 1

    .line 9
    sget-object v0, Lcom/androidplot/xy/OrderedXYSeries$XOrder;->$VALUES:[Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    invoke-virtual {v0}, [Lcom/androidplot/xy/OrderedXYSeries$XOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/OrderedXYSeries$XOrder;

    return-object v0
.end method
