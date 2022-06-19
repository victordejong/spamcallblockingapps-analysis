.class public final enum Lcom/androidplot/xy/XYLegendItem$Type;
.super Ljava/lang/Enum;
.source "XYLegendItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYLegendItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/XYLegendItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/XYLegendItem$Type;

.field public static final enum REGION:Lcom/androidplot/xy/XYLegendItem$Type;

.field public static final enum SERIES:Lcom/androidplot/xy/XYLegendItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/androidplot/xy/XYLegendItem$Type;

    const-string v1, "SERIES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/XYLegendItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/XYLegendItem$Type;->SERIES:Lcom/androidplot/xy/XYLegendItem$Type;

    .line 11
    new-instance v1, Lcom/androidplot/xy/XYLegendItem$Type;

    const-string v3, "REGION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/XYLegendItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/XYLegendItem$Type;->REGION:Lcom/androidplot/xy/XYLegendItem$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/androidplot/xy/XYLegendItem$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 9
    sput-object v3, Lcom/androidplot/xy/XYLegendItem$Type;->$VALUES:[Lcom/androidplot/xy/XYLegendItem$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/XYLegendItem$Type;
    .locals 1

    .line 9
    const-class v0, Lcom/androidplot/xy/XYLegendItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/XYLegendItem$Type;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/XYLegendItem$Type;
    .locals 1

    .line 9
    sget-object v0, Lcom/androidplot/xy/XYLegendItem$Type;->$VALUES:[Lcom/androidplot/xy/XYLegendItem$Type;

    invoke-virtual {v0}, [Lcom/androidplot/xy/XYLegendItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/XYLegendItem$Type;

    return-object v0
.end method
