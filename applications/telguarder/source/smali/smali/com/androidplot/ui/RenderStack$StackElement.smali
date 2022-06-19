.class public Lcom/androidplot/ui/RenderStack$StackElement;
.super Ljava/lang/Object;
.source "RenderStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/ui/RenderStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StackElement"
.end annotation

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
.field private isEnabled:Z

.field private seriesBundle:Lcom/androidplot/ui/SeriesBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/androidplot/ui/SeriesBundle<",
            "TSeriesType;TFormatterType;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/androidplot/ui/RenderStack;


# direct methods
.method public constructor <init>(Lcom/androidplot/ui/RenderStack;Lcom/androidplot/ui/SeriesBundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/ui/SeriesBundle<",
            "TSeriesType;TFormatterType;>;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/androidplot/ui/RenderStack$StackElement;->this$0:Lcom/androidplot/ui/RenderStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/androidplot/ui/RenderStack$StackElement;->isEnabled:Z

    .line 47
    invoke-virtual {p0, p2}, Lcom/androidplot/ui/RenderStack$StackElement;->set(Lcom/androidplot/ui/SeriesBundle;)V

    return-void
.end method


# virtual methods
.method public get()Lcom/androidplot/ui/SeriesBundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/androidplot/ui/SeriesBundle<",
            "TSeriesType;TFormatterType;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/androidplot/ui/RenderStack$StackElement;->seriesBundle:Lcom/androidplot/ui/SeriesBundle;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/androidplot/ui/RenderStack$StackElement;->isEnabled:Z

    return v0
.end method

.method public set(Lcom/androidplot/ui/SeriesBundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/ui/SeriesBundle<",
            "TSeriesType;TFormatterType;>;)V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/androidplot/ui/RenderStack$StackElement;->seriesBundle:Lcom/androidplot/ui/SeriesBundle;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/androidplot/ui/RenderStack$StackElement;->isEnabled:Z

    return-void
.end method
