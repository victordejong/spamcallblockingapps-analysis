.class public Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener;,
        Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:Lcom/facebook/rebound/e;

.field protected d:Lcom/facebook/rebound/e;

.field protected e:Lcom/facebook/rebound/e;

.field protected f:Z

.field protected g:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

.field protected h:I

.field protected i:I

.field protected j:Ljava/lang/Runnable;

.field private k:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 1085
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d01a7

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1086
    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->g:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    .line 1087
    invoke-static {}, Lcom/facebook/rebound/k;->c()Lcom/facebook/rebound/k;

    move-result-object p1

    .line 1088
    invoke-virtual {p1}, Lcom/facebook/rebound/k;->a()Lcom/facebook/rebound/e;

    move-result-object p3

    iput-object p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->d:Lcom/facebook/rebound/e;

    .line 1089
    new-instance p4, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$1;

    invoke-direct {p4, p0, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$1;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V

    invoke-virtual {p3, p4}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    .line 1097
    invoke-virtual {p1}, Lcom/facebook/rebound/k;->a()Lcom/facebook/rebound/e;

    move-result-object p3

    iput-object p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e:Lcom/facebook/rebound/e;

    .line 1098
    new-instance p4, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$2;

    invoke-direct {p4, p0, p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$2;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V

    invoke-virtual {p3, p4}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    .line 1106
    invoke-virtual {p1}, Lcom/facebook/rebound/k;->a()Lcom/facebook/rebound/e;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->c:Lcom/facebook/rebound/e;

    .line 1107
    new-instance p2, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$3;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$3;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;)V

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    const p1, 0x7f0a0a6f

    .line 1115
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->l:Landroid/widget/TextView;

    const p1, 0x7f0a04dc

    .line 1116
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->m:Landroid/widget/ImageView;

    const p1, 0x7f0a04d4

    .line 1117
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->n:Landroid/view/ViewGroup;

    return-void
.end method

.method private static a(DFI)D
    .locals 8

    int-to-float v0, p3

    mul-float p2, p2, v0

    int-to-double v2, p3

    neg-float p3, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    float-to-double v4, p3

    div-float/2addr p2, v0

    float-to-double v6, p2

    move-wide v0, p0

    .line 212
    invoke-static/range {v0 .. v7}, Lcom/facebook/rebound/l;->a(DDDD)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method protected final a(Lcom/facebook/rebound/e;)I
    .locals 3

    .line 121
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->i:I

    .line 1153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, p1, Lcom/facebook/rebound/e$a;->a:D

    double-to-int p1, v1

    add-int/2addr v0, p1

    .line 121
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getMeasuredHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    return v0
.end method

.method public final a()V
    .locals 3

    .line 129
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e:Lcom/facebook/rebound/e;

    sget-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 131
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->d:Lcom/facebook/rebound/e;

    sget-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->c:Lcom/facebook/rebound/e;

    const-wide v1, 0x3fe99999a0000000L    # 0.800000011920929

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 133
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 134
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 135
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 136
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->bringToFront()V

    :cond_0
    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->f:Z

    :cond_1
    return-void
.end method

.method public final a(FF)V
    .locals 4

    .line 199
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    float-to-double v0, p1

    const p1, 0x3dcccccd    # 0.1f

    .line 200
    iget v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a:I

    invoke-static {v0, v1, p1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a(DFI)D

    move-result-wide v0

    float-to-double p1, p2

    const v2, 0x3d4ccccd    # 0.05f

    .line 201
    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->b:I

    invoke-static {p1, p2, v2, v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a(DFI)D

    move-result-wide p1

    .line 202
    iget-boolean v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->f:Z

    if-nez v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->d:Lcom/facebook/rebound/e;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 204
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e:Lcom/facebook/rebound/e;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 205
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->k:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener;->c()V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .line 154
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e:Lcom/facebook/rebound/e;

    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->b:I

    iget v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->i:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->g:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getCloseButtonHeight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 155
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e:Lcom/facebook/rebound/e;

    sget-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->d:Lcom/facebook/rebound/e;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 157
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e:Lcom/facebook/rebound/e;

    new-instance v3, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$4;

    invoke-direct {v3, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$4;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;)V

    invoke-virtual {v0, v3}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    .line 164
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->c:Lcom/facebook/rebound/e;

    const-wide v3, 0x3fb99999a0000000L    # 0.10000000149011612

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e:Lcom/facebook/rebound/e;

    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->b:I

    int-to-double v3, v3

    invoke-virtual {p1, v3, v4, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 167
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->d:Lcom/facebook/rebound/e;

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 169
    :cond_0
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->f:Z

    .line 170
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->k:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener;->d()V

    :cond_1
    return-void
.end method

.method protected final b(Lcom/facebook/rebound/e;)I
    .locals 3

    .line 125
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->h:I

    .line 2153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, p1, Lcom/facebook/rebound/e$a;->a:D

    double-to-int p1, v1

    add-int/2addr v0, p1

    .line 125
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    return v0
.end method

.method public final b()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->c:Lcom/facebook/rebound/e;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    return-void
.end method

.method public final d()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->c:Lcom/facebook/rebound/e;

    const-wide v1, 0x3fe999999999999aL    # 0.8

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    return-void
.end method

.method public final e()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->g:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a:I

    .line 182
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->g:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxHeight()I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->b:I

    return-void
.end method

.method public getEndValueX()I
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->d:Lcom/facebook/rebound/e;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->b(Lcom/facebook/rebound/e;)I

    move-result v0

    return v0
.end method

.method public getEndValueY()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e:Lcom/facebook/rebound/e;

    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a(Lcom/facebook/rebound/e;)I

    move-result v0

    return v0
.end method

.method public getOnCapturedViewCallback()Ljava/lang/Runnable;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isDisappeared()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->f:Z

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->onSizeChanged(IIII)V

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a(Z)V

    return-void
.end method

.method public setCenter(II)V
    .locals 4

    .line 187
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->h:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->i:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 191
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->h:I

    .line 192
    iput p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->i:I

    .line 193
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->d:Lcom/facebook/rebound/e;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3, v1}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 194
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->e:Lcom/facebook/rebound/e;

    invoke-virtual {p1, v2, v3, v1}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    :cond_2
    return-void
.end method

.method public setChatHeadCloseButtonData(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;)V
    .locals 5

    .line 73
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->l:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->m:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->n:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 77
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->m:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;)I

    move-result v2

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0, v2, v3}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    .line 81
    :goto_0
    invoke-static {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;->c(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$ChatHeadCloseButtonStruct;)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public setListener(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->k:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton$CloseButtonListener;

    return-void
.end method
