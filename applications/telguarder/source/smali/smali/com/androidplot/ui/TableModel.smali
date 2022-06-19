.class public abstract Lcom/androidplot/ui/TableModel;
.super Ljava/lang/Object;
.source "TableModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidplot/ui/TableModel$CellSizingMethod;,
        Lcom/androidplot/ui/TableModel$Axis;
    }
.end annotation


# instance fields
.field private order:Lcom/androidplot/ui/TableOrder;


# direct methods
.method protected constructor <init>(Lcom/androidplot/ui/TableOrder;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Lcom/androidplot/ui/TableModel;->setOrder(Lcom/androidplot/ui/TableOrder;)V

    return-void
.end method


# virtual methods
.method public abstract getIterator(Landroid/graphics/RectF;I)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "I)",
            "Ljava/util/Iterator<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end method

.method public getOrder()Lcom/androidplot/ui/TableOrder;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/androidplot/ui/TableModel;->order:Lcom/androidplot/ui/TableOrder;

    return-object v0
.end method

.method public setOrder(Lcom/androidplot/ui/TableOrder;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/androidplot/ui/TableModel;->order:Lcom/androidplot/ui/TableOrder;

    return-void
.end method
