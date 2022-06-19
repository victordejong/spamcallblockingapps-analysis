.class public Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;
.super Landroid/widget/LinearLayout;
.source "ViewSwitchLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 10
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->setOrientation(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 2

    .prologue
    .line 29
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 30
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 31
    :goto_1
    return v0

    .line 29
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public setView(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 23
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 24
    invoke-virtual {p0, v0}, Lcom/unknownphone/callblocker/custom/ViewSwitchLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v0, p1, :cond_0

    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 24
    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    .line 25
    :cond_1
    return-void
.end method
