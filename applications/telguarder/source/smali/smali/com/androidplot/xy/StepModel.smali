.class public Lcom/androidplot/xy/StepModel;
.super Ljava/lang/Object;
.source "StepModel.java"


# instance fields
.field private mode:Lcom/androidplot/xy/StepMode;

.field private value:D


# direct methods
.method public constructor <init>(Lcom/androidplot/xy/StepMode;D)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p0, p1}, Lcom/androidplot/xy/StepModel;->setMode(Lcom/androidplot/xy/StepMode;)V

    .line 26
    invoke-virtual {p0, p2, p3}, Lcom/androidplot/xy/StepModel;->setValue(D)V

    return-void
.end method


# virtual methods
.method public getMode()Lcom/androidplot/xy/StepMode;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/androidplot/xy/StepModel;->mode:Lcom/androidplot/xy/StepMode;

    return-object v0
.end method

.method public getValue()D
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/androidplot/xy/StepModel;->value:D

    return-wide v0
.end method

.method public setMode(Lcom/androidplot/xy/StepMode;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/androidplot/xy/StepModel;->mode:Lcom/androidplot/xy/StepMode;

    return-void
.end method

.method public setValue(D)V
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/androidplot/xy/StepModel;->value:D

    return-void
.end method
