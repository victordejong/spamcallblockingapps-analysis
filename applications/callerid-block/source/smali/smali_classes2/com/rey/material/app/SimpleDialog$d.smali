.class Lcom/rey/material/app/SimpleDialog$d;
.super Landroid/widget/ScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rey/material/app/SimpleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private b:Z

.field final synthetic c:Lcom/rey/material/app/SimpleDialog;


# direct methods
.method public constructor <init>(Lcom/rey/material/app/SimpleDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/rey/material/app/SimpleDialog$d;->c:Lcom/rey/material/app/SimpleDialog;

    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/rey/material/app/SimpleDialog$d;->b:Z

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lcom/rey/material/app/SimpleDialog$d;->c:Lcom/rey/material/app/SimpleDialog;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getMeasuredHeight()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result p5

    sub-int/2addr p4, p5

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getPaddingBottom()I

    move-result p5

    sub-int/2addr p4, p5

    if-le p2, p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    invoke-virtual {p3, p1}, Lcom/rey/material/app/Dialog;->s0(Z)Lcom/rey/material/app/Dialog;

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean p1, p0, Lcom/rey/material/app/SimpleDialog$d;->b:Z

    if-eq p1, v1, :cond_3

    iput-boolean v1, p0, Lcom/rey/material/app/SimpleDialog$d;->b:Z

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/rey/material/app/SimpleDialog$d;->c:Lcom/rey/material/app/SimpleDialog;

    invoke-static {v0}, Lcom/rey/material/app/SimpleDialog;->x0(Lcom/rey/material/app/SimpleDialog;)Lcom/rey/material/widget/TextView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/rey/material/app/SimpleDialog$d;->c:Lcom/rey/material/app/SimpleDialog;

    invoke-static {p1}, Lcom/rey/material/app/SimpleDialog;->x0(Lcom/rey/material/app/SimpleDialog;)Lcom/rey/material/widget/TextView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/rey/material/app/SimpleDialog$d;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    :cond_3
    return-void
.end method
