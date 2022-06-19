.class Lcom/androidplot/xy/BubbleFormatter$1;
.super Ljava/lang/Object;
.source "BubbleFormatter.java"

# interfaces
.implements Lcom/androidplot/xy/PointLabeler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/BubbleFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/androidplot/xy/PointLabeler<",
        "Lcom/androidplot/xy/BubbleSeries;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidplot/xy/BubbleFormatter;


# direct methods
.method constructor <init>(Lcom/androidplot/xy/BubbleFormatter;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/androidplot/xy/BubbleFormatter$1;->this$0:Lcom/androidplot/xy/BubbleFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel(Lcom/androidplot/xy/BubbleSeries;I)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-virtual {p1, p2}, Lcom/androidplot/xy/BubbleSeries;->getZ(I)Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLabel(Lcom/androidplot/xy/XYSeries;I)Ljava/lang/String;
    .locals 0

    .line 52
    check-cast p1, Lcom/androidplot/xy/BubbleSeries;

    invoke-virtual {p0, p1, p2}, Lcom/androidplot/xy/BubbleFormatter$1;->getLabel(Lcom/androidplot/xy/BubbleSeries;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
