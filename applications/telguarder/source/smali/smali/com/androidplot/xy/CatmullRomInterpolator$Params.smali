.class public Lcom/androidplot/xy/CatmullRomInterpolator$Params;
.super Ljava/lang/Object;
.source "CatmullRomInterpolator.java"

# interfaces
.implements Lcom/androidplot/xy/InterpolationParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidplot/xy/CatmullRomInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field private pointPerSegment:I

.field private type:Lcom/androidplot/xy/CatmullRomInterpolator$Type;


# direct methods
.method public constructor <init>(ILcom/androidplot/xy/CatmullRomInterpolator$Type;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->pointPerSegment:I

    .line 40
    iput-object p2, p0, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->type:Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    return-void
.end method


# virtual methods
.method public getInterpolatorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/androidplot/xy/CatmullRomInterpolator;",
            ">;"
        }
    .end annotation

    .line 45
    const-class v0, Lcom/androidplot/xy/CatmullRomInterpolator;

    return-object v0
.end method

.method public getPointPerSegment()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->pointPerSegment:I

    return v0
.end method

.method public getType()Lcom/androidplot/xy/CatmullRomInterpolator$Type;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->type:Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    return-object v0
.end method

.method public setPointPerSegment(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->pointPerSegment:I

    return-void
.end method

.method public setType(Lcom/androidplot/xy/CatmullRomInterpolator$Type;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/androidplot/xy/CatmullRomInterpolator$Params;->type:Lcom/androidplot/xy/CatmullRomInterpolator$Type;

    return-void
.end method
