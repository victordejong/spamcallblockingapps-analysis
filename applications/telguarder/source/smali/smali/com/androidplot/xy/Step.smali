.class public Lcom/androidplot/xy/Step;
.super Ljava/lang/Object;
.source "Step.java"


# instance fields
.field private final stepCount:D

.field private final stepPix:D

.field private final stepVal:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/androidplot/xy/Step;->stepCount:D

    .line 33
    iput-wide p3, p0, Lcom/androidplot/xy/Step;->stepPix:D

    .line 34
    iput-wide p5, p0, Lcom/androidplot/xy/Step;->stepVal:D

    return-void
.end method


# virtual methods
.method public getStepCount()D
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/androidplot/xy/Step;->stepCount:D

    return-wide v0
.end method

.method public getStepPix()D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/androidplot/xy/Step;->stepPix:D

    return-wide v0
.end method

.method public getStepVal()D
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/androidplot/xy/Step;->stepVal:D

    return-wide v0
.end method
