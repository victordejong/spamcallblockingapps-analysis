.class public Landroidx/appcompat/widget/ae$a;
.super Landroidx/appcompat/widget/z;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final b:I

.field final c:I

.field private d:Landroidx/appcompat/widget/ad;

.field private e:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/16 v4, 0x16

    const/16 v3, 0x15

    .line 144
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/z;-><init>(Landroid/content/Context;Z)V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 148
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 149
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 150
    iput v3, p0, Landroidx/appcompat/widget/ae$a;->b:I

    .line 151
    iput v4, p0, Landroidx/appcompat/widget/ae$a;->c:I

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    iput v4, p0, Landroidx/appcompat/widget/ae$a;->b:I

    .line 154
    iput v3, p0, Landroidx/appcompat/widget/ae$a;->c:I

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic a(IIIII)I
    .locals 1

    .prologue
    .line 135
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/z;->a(IIIII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Landroid/view/MotionEvent;I)Z
    .locals 1

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/z;->a(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasFocus()Z
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroidx/appcompat/widget/z;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroidx/appcompat/widget/z;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroidx/appcompat/widget/z;->isFocused()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTouchMode()Z
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Landroidx/appcompat/widget/z;->isInTouchMode()Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 190
    iget-object v0, p0, Landroidx/appcompat/widget/ae$a;->d:Landroidx/appcompat/widget/ad;

    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p0}, Landroidx/appcompat/widget/ae$a;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 195
    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_2

    .line 196
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .line 197
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v1

    .line 198
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/f;

    .line 205
    :goto_0
    const/4 v2, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4}, Landroidx/appcompat/widget/ae$a;->pointToPosition(II)I

    move-result v3

    .line 208
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 209
    sub-int v1, v3, v1

    .line 210
    if-ltz v1, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 211
    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/f;->a(I)Landroidx/appcompat/view/menu/i;

    move-result-object v1

    .line 216
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/widget/ae$a;->e:Landroid/view/MenuItem;

    .line 217
    if-eq v2, v1, :cond_1

    .line 218
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->a()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    .line 219
    if-eqz v2, :cond_0

    .line 220
    iget-object v3, p0, Landroidx/appcompat/widget/ae$a;->d:Landroidx/appcompat/widget/ad;

    invoke-interface {v3, v0, v2}, Landroidx/appcompat/widget/ad;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V

    .line 223
    :cond_0
    iput-object v1, p0, Landroidx/appcompat/widget/ae$a;->e:Landroid/view/MenuItem;

    .line 225
    if-eqz v1, :cond_1

    .line 226
    iget-object v2, p0, Landroidx/appcompat/widget/ae$a;->d:Landroidx/appcompat/widget/ad;

    invoke-interface {v2, v0, v1}, Landroidx/appcompat/widget/ad;->b(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)V

    .line 231
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/z;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 200
    :cond_2
    const/4 v1, 0x0

    .line 201
    check-cast v0, Landroidx/appcompat/view/menu/f;

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 168
    invoke-virtual {p0}, Landroidx/appcompat/widget/ae$a;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/ListMenuItemView;

    .line 169
    if-eqz v0, :cond_1

    iget v2, p0, Landroidx/appcompat/widget/ae$a;->b:I

    if-ne p1, v2, :cond_1

    .line 170
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ListMenuItemView;->getItemData()Landroidx/appcompat/view/menu/i;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/i;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p0}, Landroidx/appcompat/widget/ae$a;->getSelectedItemPosition()I

    move-result v2

    .line 174
    invoke-virtual {p0}, Landroidx/appcompat/widget/ae$a;->getSelectedItemId()J

    move-result-wide v4

    .line 171
    invoke-virtual {p0, v0, v2, v4, v5}, Landroidx/appcompat/widget/ae$a;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    move v0, v1

    .line 184
    :goto_0
    return v0

    .line 177
    :cond_1
    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/appcompat/widget/ae$a;->c:I

    if-ne p1, v0, :cond_2

    .line 178
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ae$a;->setSelection(I)V

    .line 181
    invoke-virtual {p0}, Landroidx/appcompat/widget/ae$a;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/f;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/f;->a()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/g;->a(Z)V

    move v0, v1

    .line 182
    goto :goto_0

    .line 184
    :cond_2
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/z;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroidx/appcompat/widget/z;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHoverListener(Landroidx/appcompat/widget/ad;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Landroidx/appcompat/widget/ae$a;->d:Landroidx/appcompat/widget/ad;

    .line 160
    return-void
.end method

.method public bridge synthetic setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroidx/appcompat/widget/z;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
