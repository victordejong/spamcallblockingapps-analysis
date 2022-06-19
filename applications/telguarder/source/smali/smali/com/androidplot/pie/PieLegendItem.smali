.class public Lcom/androidplot/pie/PieLegendItem;
.super Ljava/lang/Object;
.source "PieLegendItem.java"

# interfaces
.implements Lcom/androidplot/ui/widget/LegendItem;


# instance fields
.field public formatter:Lcom/androidplot/pie/SegmentFormatter;

.field public segment:Lcom/androidplot/pie/Segment;


# direct methods
.method public constructor <init>(Lcom/androidplot/pie/Segment;Lcom/androidplot/pie/SegmentFormatter;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/androidplot/pie/PieLegendItem;->segment:Lcom/androidplot/pie/Segment;

    .line 19
    iput-object p2, p0, Lcom/androidplot/pie/PieLegendItem;->formatter:Lcom/androidplot/pie/SegmentFormatter;

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/androidplot/pie/PieLegendItem;->segment:Lcom/androidplot/pie/Segment;

    invoke-virtual {v0}, Lcom/androidplot/pie/Segment;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
