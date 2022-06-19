.class synthetic Lcom/androidplot/xy/XYLegendWidget$2;
.super Ljava/lang/Object;
.source "XYLegendWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYLegendWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$androidplot$xy$XYLegendItem$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    invoke-static {}, Lcom/androidplot/xy/XYLegendItem$Type;->values()[Lcom/androidplot/xy/XYLegendItem$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/androidplot/xy/XYLegendWidget$2;->$SwitchMap$com$androidplot$xy$XYLegendItem$Type:[I

    :try_start_0
    sget-object v1, Lcom/androidplot/xy/XYLegendItem$Type;->REGION:Lcom/androidplot/xy/XYLegendItem$Type;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYLegendItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/androidplot/xy/XYLegendWidget$2;->$SwitchMap$com$androidplot$xy$XYLegendItem$Type:[I

    sget-object v1, Lcom/androidplot/xy/XYLegendItem$Type;->SERIES:Lcom/androidplot/xy/XYLegendItem$Type;

    invoke-virtual {v1}, Lcom/androidplot/xy/XYLegendItem$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
