.class public interface abstract Lcom/androidplot/xy/Interpolator;
.super Ljava/lang/Object;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ParamsType::",
        "Lcom/androidplot/xy/InterpolationParams;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract interpolate(Lcom/androidplot/xy/XYSeries;Lcom/androidplot/xy/InterpolationParams;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidplot/xy/XYSeries;",
            "TParamsType;)",
            "Ljava/util/List<",
            "Lcom/androidplot/xy/XYCoords;",
            ">;"
        }
    .end annotation
.end method
