.class Lcom/androidplot/xy/XYSeriesFormatter$1;
.super Ljava/lang/Object;
.source "XYSeriesFormatter.java"

# interfaces
.implements Lcom/androidplot/xy/PointLabeler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/XYSeriesFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidplot/xy/XYSeriesFormatter;


# direct methods
.method constructor <init>(Lcom/androidplot/xy/XYSeriesFormatter;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/androidplot/xy/XYSeriesFormatter$1;->this$0:Lcom/androidplot/xy/XYSeriesFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-interface {p1, p2}, Lcom/androidplot/xy/XYSeries;->getY(I)Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
