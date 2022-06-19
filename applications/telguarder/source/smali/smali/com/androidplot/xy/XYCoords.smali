.class public Lcom/androidplot/xy/XYCoords;
.super Ljava/lang/Object;
.source "XYCoords.java"


# instance fields
.field public x:Ljava/lang/Number;

.field public y:Ljava/lang/Number;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/androidplot/xy/XYCoords;->x:Ljava/lang/Number;

    .line 30
    iput-object p2, p0, Lcom/androidplot/xy/XYCoords;->y:Ljava/lang/Number;

    return-void
.end method
