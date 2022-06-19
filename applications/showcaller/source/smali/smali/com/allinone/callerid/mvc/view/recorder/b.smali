.class public Lcom/allinone/callerid/mvc/view/recorder/b;
.super Landroid/widget/PopupWindow;
.source "TextPopupWindow.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View$OnClickListener;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->i:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0c0123

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->g:Landroid/view/View;

    const/4 p1, -0x2

    .line 5
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 7
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->g:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    .line 11
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->g:Landroid/view/View;

    const v1, 0x7f090459

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->d:Landroid/widget/FrameLayout;

    .line 15
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->g:Landroid/view/View;

    const v1, 0x7f09045a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->a:Landroid/widget/TextView;

    .line 16
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->g:Landroid/view/View;

    const v1, 0x7f090457

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->e:Landroid/widget/FrameLayout;

    .line 17
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->g:Landroid/view/View;

    const v1, 0x7f090458

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->b:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->g:Landroid/view/View;

    const v1, 0x7f09045b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->f:Landroid/widget/FrameLayout;

    .line 19
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->g:Landroid/view/View;

    const v1, 0x7f09045c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->c:Landroid/widget/TextView;

    .line 20
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 21
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 22
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->h:Landroid/view/View$OnClickListener;

    .line 2
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b([Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->a:Landroid/widget/TextView;

    aget-object v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    array-length v0, p1

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    aget-object v0, p1, v2

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->b:Landroid/widget/TextView;

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6
    :goto_0
    array-length v0, p1

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    aget-object v0, p1, v2

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->c:Landroid/widget/TextView;

    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/allinone/callerid/mvc/view/recorder/b;->f:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method
