.class Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;
.super Lcom/androidplot/xy/BarFormatter;
.source "CSStatRowViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DurationBarFormatter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;


# direct methods
.method public constructor <init>(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;II)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;->this$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    .line 280
    invoke-direct {p0, p2, p3}, Lcom/androidplot/xy/BarFormatter;-><init>(II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doGetRendererInstance(Lcom/androidplot/Plot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 0

    .line 278
    check-cast p1, Lcom/androidplot/xy/XYPlot;

    invoke-virtual {p0, p1}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;->doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;

    move-result-object p1

    return-object p1
.end method

.method public doGetRendererInstance(Lcom/androidplot/xy/XYPlot;)Lcom/androidplot/ui/SeriesRenderer;
    .locals 2

    .line 288
    new-instance v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$DurationBarFormatter;->this$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    invoke-direct {v0, v1, p1}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer;-><init>(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;Lcom/androidplot/xy/XYPlot;)V

    return-object v0
.end method

.method public getRendererClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/androidplot/ui/SeriesRenderer;",
            ">;"
        }
    .end annotation

    .line 284
    const-class v0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$MyBarRenderer;

    return-object v0
.end method
