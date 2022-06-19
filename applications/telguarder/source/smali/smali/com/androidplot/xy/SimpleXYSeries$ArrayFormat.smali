.class public final enum Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;
.super Ljava/lang/Enum;
.source "SimpleXYSeries.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/SimpleXYSeries;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrayFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

.field public static final enum XY_VALS_INTERLEAVED:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

.field public static final enum Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    const-string v1, "Y_VALS_ONLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    .line 45
    new-instance v1, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    const-string v3, "XY_VALS_INTERLEAVED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->XY_VALS_INTERLEAVED:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 43
    sput-object v3, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->$VALUES:[Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;
    .locals 1

    .line 43
    const-class v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    return-object p0
.end method

.method public static values()[Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;
    .locals 1

    .line 43
    sget-object v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->$VALUES:[Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    invoke-virtual {v0}, [Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    return-object v0
.end method
