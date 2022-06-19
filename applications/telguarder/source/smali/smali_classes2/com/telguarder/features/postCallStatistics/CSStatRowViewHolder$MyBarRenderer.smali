.class Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer;
.super Lcom/androidplot/xy/BarRenderer;
.source "CSStatRowViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyBarRenderer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidplot/xy/BarRenderer<",
        "Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;


# direct methods
.method public constructor <init>(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;Lcom/androidplot/xy/XYPlot;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer;->this$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    .line 295
    invoke-direct {p0, p2}, Lcom/androidplot/xy/BarRenderer;-><init>(Lcom/androidplot/xy/XYPlot;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getFormatter(ILcom/androidplot/xy/XYSeries;)Lcom/androidplot/xy/BarFormatter;
    .locals 0

    .line 293
    invoke-virtual {p0, p1, p2}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer;->getFormatter(ILcom/androidplot/xy/XYSeries;)Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

    move-result-object p1

    return-object p1
.end method

.method public getFormatter(ILcom/androidplot/xy/XYSeries;)Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;
    .locals 0

    .line 299
    invoke-virtual {p0, p2}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer;->getFormatter(Lcom/androidplot/Series;)Lcom/androidplot/ui/Formatter;

    move-result-object p1

    check-cast p1, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;

    return-object p1
.end method
