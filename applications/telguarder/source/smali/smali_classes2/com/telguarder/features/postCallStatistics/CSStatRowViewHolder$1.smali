.class Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$1;
.super Ljava/text/Format;
.source "CSStatRowViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->setupLineLabelStyle(Landroid/content/Context;Lcom/androidplot/xy/XYGraphWidget$LineLabelStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;


# direct methods
.method constructor <init>(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;)V
    .locals 2

    .line 158
    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    .line 159
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "EEE, d MMM"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$1;->dateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 162
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    .line 163
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->access$000(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;)Lcom/telguarder/features/postCallStatistics/CSStatData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->access$000(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;)Lcom/telguarder/features/postCallStatistics/CSStatData;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->access$000(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;)Lcom/telguarder/features/postCallStatistics/CSStatData;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    invoke-static {v0}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->access$000(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;)Lcom/telguarder/features/postCallStatistics/CSStatData;

    move-result-object v0

    iget-object v0, v0, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$1;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder$1;->this$0:Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;

    invoke-static {v1}, Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;->access$000(Lcom/telguarder/features/postCallStatistics/CSStatRowViewHolder;)Lcom/telguarder/features/postCallStatistics/CSStatData;

    move-result-object v1

    iget-object v1, v1, Lcom/telguarder/features/postCallStatistics/CSStatData;->days:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    return-object p2
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
