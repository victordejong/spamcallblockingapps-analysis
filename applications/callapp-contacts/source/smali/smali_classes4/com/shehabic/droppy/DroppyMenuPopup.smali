.class public final Lcom/shehabic/droppy/DroppyMenuPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shehabic/droppy/DroppyMenuPopup$a;,
        Lcom/shehabic/droppy/DroppyMenuPopup$PopupViewContainer;,
        Lcom/shehabic/droppy/DroppyMenuPopup$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/view/View;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shehabic/droppy/d;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/view/View;

.field protected e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

.field protected f:Lcom/shehabic/droppy/views/DroppyMenuContainerView;

.field protected g:Lcom/shehabic/droppy/a;

.field protected h:I

.field protected i:Landroid/widget/FrameLayout;

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:Lcom/shehabic/droppy/DroppyMenuPopup$b;

.field protected n:I

.field protected o:I

.field protected p:Lcom/shehabic/droppy/a/a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/util/List;Lcom/shehabic/droppy/a;ZILcom/shehabic/droppy/DroppyMenuPopup$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/shehabic/droppy/d;",
            ">;",
            "Lcom/shehabic/droppy/a;",
            "ZI",
            "Lcom/shehabic/droppy/DroppyMenuPopup$b;",
            ")V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->l:I

    .line 63
    iput-object p1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->a:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->b:Landroid/view/View;

    .line 65
    iput-object p3, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->c:Ljava/util/List;

    .line 66
    iput-object p4, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->g:Lcom/shehabic/droppy/a;

    .line 67
    iput p6, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->h:I

    .line 68
    iput-object p7, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->m:Lcom/shehabic/droppy/DroppyMenuPopup$b;

    if-eqz p5, :cond_0

    .line 70
    new-instance p1, Lcom/shehabic/droppy/DroppyMenuPopup$1;

    invoke-direct {p1, p0}, Lcom/shehabic/droppy/DroppyMenuPopup$1;-><init>(Lcom/shehabic/droppy/DroppyMenuPopup;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 302
    :goto_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 303
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 304
    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 305
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private d()V
    .locals 7

    .line 167
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    const/4 v1, -0x2

    if-nez v0, :cond_4

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 171
    :cond_0
    new-instance v0, Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    iget-object v2, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    .line 172
    new-instance v0, Lcom/shehabic/droppy/views/DroppyMenuContainerView;

    iget-object v2, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/shehabic/droppy/views/DroppyMenuContainerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->f:Lcom/shehabic/droppy/views/DroppyMenuContainerView;

    .line 173
    iget-object v2, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    invoke-virtual {v2, v0}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->addView(Landroid/view/View;)V

    .line 174
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 175
    iget-object v2, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    invoke-virtual {v2, v0}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    iput-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->d:Landroid/view/View;

    const/4 v0, 0x0

    .line 178
    iget-object v2, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shehabic/droppy/d;

    .line 6198
    iget-object v4, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->a:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/shehabic/droppy/d;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    .line 6200
    invoke-interface {v3}, Lcom/shehabic/droppy/d;->b()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6202
    invoke-virtual {v4, v0}, Landroid/view/View;->setId(I)V

    .line 6203
    invoke-interface {v3}, Lcom/shehabic/droppy/d;->a()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 6204
    invoke-interface {v3, v0}, Lcom/shehabic/droppy/d;->a(I)Lcom/shehabic/droppy/d;

    .line 6206
    :cond_2
    invoke-interface {v3}, Lcom/shehabic/droppy/d;->a()I

    move-result v5

    .line 6208
    new-instance v6, Lcom/shehabic/droppy/DroppyMenuPopup$3;

    invoke-direct {v6, p0, v5}, Lcom/shehabic/droppy/DroppyMenuPopup$3;-><init>(Lcom/shehabic/droppy/DroppyMenuPopup;I)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6215
    :cond_3
    iget-object v5, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->f:Lcom/shehabic/droppy/views/DroppyMenuContainerView;

    invoke-virtual {v5, v4}, Lcom/shehabic/droppy/views/DroppyMenuContainerView;->addView(Landroid/view/View;)V

    .line 180
    invoke-interface {v3}, Lcom/shehabic/droppy/d;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    invoke-virtual {v0, v1, v1}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->measure(II)V

    .line 186
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    invoke-virtual {v0}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->j:I

    .line 187
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    invoke-virtual {v0}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->k:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->o:I

    return-void
.end method

.method protected final a(Lcom/shehabic/droppy/a/a;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->p:Lcom/shehabic/droppy/a/a;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->p:Lcom/shehabic/droppy/a/a;

    if-eqz v0, :cond_0

    return-void

    .line 6151
    :cond_0
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->i:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6152
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6153
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-nez p1, :cond_1

    .line 6155
    iget-object p1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->m:Lcom/shehabic/droppy/DroppyMenuPopup$b;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 6157
    iput-object p1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->m:Lcom/shehabic/droppy/DroppyMenuPopup$b;

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 13

    .line 1094
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 1095
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1096
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1097
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->i:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    .line 1098
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 1099
    iget-object v3, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1100
    iget-object v3, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->i:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/shehabic/droppy/DroppyMenuPopup$2;

    invoke-direct {v5, p0}, Lcom/shehabic/droppy/DroppyMenuPopup$2;-><init>(Lcom/shehabic/droppy/DroppyMenuPopup;)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/shehabic/droppy/DroppyMenuPopup;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1107
    iget-object v3, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/shehabic/droppy/DroppyMenuPopup;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v5, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    invoke-direct {p0}, Lcom/shehabic/droppy/DroppyMenuPopup;->d()V

    .line 113
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 114
    iget v3, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->n:I

    iget v5, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->o:I

    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 2249
    iget-object v7, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->b:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2251
    new-instance v7, Landroid/graphics/Point;

    aget v8, v6, v2

    aget v6, v6, v4

    .line 3234
    iget v9, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->l:I

    if-ne v9, v1, :cond_1

    .line 4226
    iget-object v9, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->b:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/shehabic/droppy/DroppyMenuPopup;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 4227
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 4228
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v10, 0x4000000

    and-int/2addr v9, v10

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    if-eqz v9, :cond_1

    .line 3235
    iput v2, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->l:I

    goto :goto_2

    .line 3236
    :cond_1
    iget v9, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->l:I

    if-ne v9, v1, :cond_3

    .line 3238
    iget-object v9, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->b:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "status_bar_height"

    const-string v11, "dimen"

    const-string v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_2

    .line 3240
    iget-object v10, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->b:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 3242
    :goto_1
    iput v9, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->l:I

    .line 3244
    :cond_3
    :goto_2
    iget v9, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->l:I

    sub-int/2addr v6, v9

    .line 2251
    invoke-direct {v7, v8, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 1260
    iget v6, v7, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v3

    .line 1261
    iget-object v8, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->b:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 1262
    iget v9, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v8

    .line 5219
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 5220
    iget-object v11, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->b:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/shehabic/droppy/DroppyMenuPopup;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1264
    iget v11, v10, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    invoke-virtual {v12}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v12, v6

    sub-int/2addr v11, v12

    if-gez v11, :cond_4

    .line 1266
    iget v6, v10, Landroid/graphics/Point;->x:I

    iget v11, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->j:I

    add-int/2addr v11, v3

    sub-int/2addr v6, v11

    .line 1269
    :cond_4
    iget v3, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->k:I

    add-int/2addr v3, v9

    iget v11, v10, Landroid/graphics/Point;->y:I

    if-le v3, v11, :cond_5

    .line 1270
    iget v3, v7, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->k:I

    sub-int/2addr v3, v9

    mul-int/lit8 v5, v5, -0x1

    sub-int v9, v3, v5

    .line 1273
    :cond_5
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1274
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/16 v1, 0x33

    .line 1275
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1278
    iget v1, v7, Landroid/graphics/Point;->y:I

    .line 1279
    iget v3, v10, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v8

    iget v5, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->o:I

    sub-int/2addr v3, v5

    if-le v1, v3, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_7

    .line 1281
    iget v6, v7, Landroid/graphics/Point;->y:I

    iget v9, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->k:I

    if-ge v6, v9, :cond_7

    const/4 v6, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :goto_4
    if-nez v5, :cond_8

    .line 1282
    iget v9, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->k:I

    if-le v9, v3, :cond_8

    const/4 v9, 0x1

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    :goto_5
    if-nez v6, :cond_9

    if-eqz v9, :cond_b

    :cond_9
    if-eqz v5, :cond_a

    .line 1285
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1286
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_6

    .line 1288
    :cond_a
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1289
    iget v1, v7, Landroid/graphics/Point;->y:I

    add-int/2addr v8, v1

    iput v8, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 115
    :cond_b
    :goto_6
    new-instance v1, Lcom/shehabic/droppy/DroppyMenuPopup$PopupViewContainer;

    iget-object v2, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/shehabic/droppy/DroppyMenuPopup$PopupViewContainer;-><init>(Lcom/shehabic/droppy/DroppyMenuPopup;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->d:Landroid/view/View;

    .line 6128
    iget-object v1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    invoke-virtual {v1}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 6130
    :try_start_0
    iget-object v1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    invoke-virtual {v1}, Lcom/shehabic/droppy/views/DroppyMenuPopupView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :catch_0
    :cond_c
    iget-object v1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->d:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->e:Lcom/shehabic/droppy/views/DroppyMenuPopupView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    iget-object v1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->d:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 119
    iget-object v1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->d:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 120
    iget-object v1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/shehabic/droppy/DroppyMenuPopup;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->d:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public final b(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->n:I

    return-void
.end method

.method protected final c()V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/shehabic/droppy/DroppyMenuPopup;->g:Lcom/shehabic/droppy/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 193
    invoke-virtual {p0, v0}, Lcom/shehabic/droppy/DroppyMenuPopup;->a(Z)V

    :cond_0
    return-void
.end method
