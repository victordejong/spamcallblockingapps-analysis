.class public Lcom/androidplot/ui/SeriesBundle;
.super Ljava/lang/Object;
.source "SeriesBundle.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SeriesType::",
        "Lcom/androidplot/Series;",
        "FormatterType:",
        "Lcom/androidplot/ui/Formatter;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final formatter:Lcom/androidplot/ui/Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFormatterType;"
        }
    .end annotation
.end field

.field private final series:Lcom/androidplot/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSeriesType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/androidplot/Series;Lcom/androidplot/ui/Formatter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSeriesType;TFormatterType;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/androidplot/ui/SeriesBundle;->series:Lcom/androidplot/Series;

    .line 32
    iput-object p2, p0, Lcom/androidplot/ui/SeriesBundle;->formatter:Lcom/androidplot/ui/Formatter;

    return-void
.end method


# virtual methods
.method public getFormatter()Lcom/androidplot/ui/Formatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFormatterType;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/androidplot/ui/SeriesBundle;->formatter:Lcom/androidplot/ui/Formatter;

    return-object v0
.end method

.method public getSeries()Lcom/androidplot/Series;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSeriesType;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/androidplot/ui/SeriesBundle;->series:Lcom/androidplot/Series;

    return-object v0
.end method

.method public rendersWith(Lcom/androidplot/ui/SeriesRenderer;)Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/androidplot/ui/SeriesBundle;->getFormatter()Lcom/androidplot/ui/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidplot/ui/Formatter;->getRendererClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
