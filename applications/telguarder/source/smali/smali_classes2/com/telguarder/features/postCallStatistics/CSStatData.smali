.class public Lcom/telguarder/features/postCallStatistics/CSStatData;
.super Lcom/telguarder/features/postCallStatistics/CSData;
.source "CSStatData.java"


# instance fields
.field public days:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field public incomingSeries:Lcom/androidplot/xy/XYSeries;

.field public outgoingSeries:Lcom/androidplot/xy/XYSeries;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/telguarder/features/postCallStatistics/CSData;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 23
    iput v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatData;->mItemType:I

    return-void
.end method


# virtual methods
.method public setupData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    .line 29
    new-instance p1, Lcom/androidplot/xy/SimpleXYSeries;

    sget-object v0, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    const-string v1, ""

    invoke-direct {p1, p2, v0, v1}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSStatData;->incomingSeries:Lcom/androidplot/xy/XYSeries;

    .line 30
    new-instance p1, Lcom/androidplot/xy/SimpleXYSeries;

    sget-object p2, Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;->Y_VALS_ONLY:Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;

    invoke-direct {p1, p3, p2, v1}, Lcom/androidplot/xy/SimpleXYSeries;-><init>(Ljava/util/List;Lcom/androidplot/xy/SimpleXYSeries$ArrayFormat;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSStatData;->outgoingSeries:Lcom/androidplot/xy/XYSeries;

    return-void
.end method
