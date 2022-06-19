.class Lcom/allinone/callerid/g/a$a;
.super Ljava/lang/Object;
.source "CommentsFragment.java"

# interfaces
.implements Lcom/allinone/callerid/b/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allinone/callerid/g/a;->C2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/allinone/callerid/g/a;


# direct methods
.method constructor <init>(Lcom/allinone/callerid/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->a2(Lcom/allinone/callerid/g/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c011d

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090644

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0901d1

    .line 4
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 5
    invoke-static {}, Lcom/allinone/callerid/util/f1;->b()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 6
    new-instance v1, Lcom/allinone/callerid/g/a$a$a;

    invoke-direct {v1, p0, p2}, Lcom/allinone/callerid/g/a$a$a;-><init>(Lcom/allinone/callerid/g/a$a;I)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p2, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    invoke-static {p2, v1}, Lcom/allinone/callerid/g/a;->q2(Lcom/allinone/callerid/g/a;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 8
    iget-object p2, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p2}, Lcom/allinone/callerid/g/a;->s2(Lcom/allinone/callerid/g/a;)Lcom/allinone/callerid/mvc/controller/contactpdt/UnknownContactActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    move-result p2

    .line 10
    iget-object v0, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {v0}, Lcom/allinone/callerid/g/a;->p2(Lcom/allinone/callerid/g/a;)Landroid/widget/PopupWindow;

    move-result-object v0

    div-int/lit8 p2, p2, 0x4

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 11
    iget-object p2, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p2}, Lcom/allinone/callerid/g/a;->p2(Lcom/allinone/callerid/g/a;)Landroid/widget/PopupWindow;

    move-result-object p2

    const/4 v0, -0x2

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 12
    iget-object p2, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p2}, Lcom/allinone/callerid/g/a;->p2(Lcom/allinone/callerid/g/a;)Landroid/widget/PopupWindow;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 13
    iget-object p2, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p2}, Lcom/allinone/callerid/g/a;->a2(Lcom/allinone/callerid/g/a;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/allinone/callerid/util/h1;->f0(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    iget-object p2, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p2}, Lcom/allinone/callerid/g/a;->p2(Lcom/allinone/callerid/g/a;)Landroid/widget/PopupWindow;

    move-result-object p2

    const v1, 0x7f110305

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p2, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {p2}, Lcom/allinone/callerid/g/a;->p2(Lcom/allinone/callerid/g/a;)Landroid/widget/PopupWindow;

    move-result-object p2

    const v1, 0x7f110304

    invoke-virtual {p2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 16
    :goto_0
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 17
    iget-object v2, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {v2}, Lcom/allinone/callerid/g/a;->p2(Lcom/allinone/callerid/g/a;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 19
    iget-object v2, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    invoke-static {v2}, Lcom/allinone/callerid/g/a;->p2(Lcom/allinone/callerid/g/a;)Landroid/widget/PopupWindow;

    move-result-object v2

    aget v3, p2, v1

    aget p2, p2, v0

    iget-object v0, p0, Lcom/allinone/callerid/g/a$a;->a:Lcom/allinone/callerid/g/a;

    .line 20
    invoke-static {v0}, Lcom/allinone/callerid/g/a;->p2(Lcom/allinone/callerid/g/a;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 21
    invoke-virtual {v2, p1, v1, v3, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
