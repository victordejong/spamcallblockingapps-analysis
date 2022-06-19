.class public Lcarbon/beta/MarshmallowEditText;
.super Lcarbon/widget/EditText;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/beta/MarshmallowEditText$SavedState;
    }
.end annotation


# instance fields
.field public A0:Landroid/view/WindowManager;

.field public y0:Ltc0;

.field public z0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcarbon/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/beta/MarshmallowEditText;->z0:Z

    new-instance p1, Lcarbon/beta/MarshmallowEditText$a;

    invoke-direct {p1, p0}, Lcarbon/beta/MarshmallowEditText$a;-><init>(Lcarbon/beta/MarshmallowEditText;)V

    iput-object p1, p0, Lcarbon/beta/MarshmallowEditText;->A0:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcarbon/beta/MarshmallowEditText;->O()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/beta/MarshmallowEditText;->z0:Z

    new-instance p1, Lcarbon/beta/MarshmallowEditText$a;

    invoke-direct {p1, p0}, Lcarbon/beta/MarshmallowEditText$a;-><init>(Lcarbon/beta/MarshmallowEditText;)V

    iput-object p1, p0, Lcarbon/beta/MarshmallowEditText;->A0:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcarbon/beta/MarshmallowEditText;->O()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcarbon/beta/MarshmallowEditText;->z0:Z

    new-instance p1, Lcarbon/beta/MarshmallowEditText$a;

    invoke-direct {p1, p0}, Lcarbon/beta/MarshmallowEditText$a;-><init>(Lcarbon/beta/MarshmallowEditText;)V

    iput-object p1, p0, Lcarbon/beta/MarshmallowEditText;->A0:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcarbon/beta/MarshmallowEditText;->O()V

    return-void
.end method

.method public static synthetic K(Lcarbon/beta/MarshmallowEditText;)V
    .locals 0

    invoke-virtual {p0}, Lcarbon/beta/MarshmallowEditText;->P()V

    return-void
.end method

.method public static synthetic L(Lcarbon/beta/MarshmallowEditText;Landroid/view/Menu;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcarbon/beta/MarshmallowEditText;->N(Landroid/view/Menu;)V

    return-void
.end method

.method public static synthetic M(Lcarbon/beta/MarshmallowEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcarbon/beta/MarshmallowEditText;->z0:Z

    return p1
.end method


# virtual methods
.method public final N(Landroid/view/Menu;)V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lh80;->carbon_editMenuTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    new-instance v1, Ll0;

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ll0;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ltc0;

    invoke-direct {v0, v1}, Ltc0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcarbon/beta/MarshmallowEditText;->y0:Ltc0;

    new-instance v1, Lcarbon/beta/MarshmallowEditText$f;

    invoke-direct {v1, p0}, Lcarbon/beta/MarshmallowEditText$f;-><init>(Lcarbon/beta/MarshmallowEditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Lcarbon/beta/MarshmallowEditText;->y0:Ltc0;

    const v1, 0x1020021

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltc0;->e(Landroid/view/MenuItem;)V

    iget-object v0, p0, Lcarbon/beta/MarshmallowEditText;->y0:Ltc0;

    const v1, 0x1020020

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltc0;->f(Landroid/view/MenuItem;)V

    iget-object v0, p0, Lcarbon/beta/MarshmallowEditText;->y0:Ltc0;

    const v1, 0x1020022

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltc0;->h(Landroid/view/MenuItem;)V

    iget-object v0, p0, Lcarbon/beta/MarshmallowEditText;->y0:Ltc0;

    const v1, 0x102001f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltc0;->i(Landroid/view/MenuItem;)V

    return-void
.end method

.method public final O()V
    .locals 2

    new-instance v0, Lcarbon/beta/MarshmallowEditText$d;

    invoke-direct {v0, p0}, Lcarbon/beta/MarshmallowEditText$d;-><init>(Lcarbon/beta/MarshmallowEditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Lcarbon/beta/MarshmallowEditText$e;

    invoke-direct {v0, p0}, Lcarbon/beta/MarshmallowEditText$e;-><init>(Lcarbon/beta/MarshmallowEditText;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setCustomInsertionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    :cond_0
    return-void
.end method

.method public final P()V
    .locals 1

    iget-object v0, p0, Lcarbon/beta/MarshmallowEditText;->y0:Ltc0;

    invoke-virtual {v0}, Ltc0;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcarbon/beta/MarshmallowEditText;->y0:Ltc0;

    invoke-virtual {v0, p0}, Ltc0;->j(Lcarbon/widget/EditText;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcarbon/beta/MarshmallowEditText;->z0:Z

    :cond_0
    return-void
.end method

.method public getSelectionStart()I
    .locals 6

    const-string v0, "mWindowManager"

    :try_start_0
    iget-object v1, p0, Lcarbon/beta/MarshmallowEditText;->A0:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    const-class v1, Landroid/widget/TextView;

    const-string v2, "mCursorControllerMenu"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mPopupWindow"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v5, p0, Lcarbon/beta/MarshmallowEditText;->A0:Landroid/view/WindowManager;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mPopupWindowArrowDown"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v5, p0, Lcarbon/beta/MarshmallowEditText;->A0:Landroid/view/WindowManager;

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "mPopupWindowArrowUp"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lcarbon/beta/MarshmallowEditText;->A0:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcarbon/beta/MarshmallowEditText;->A0:Landroid/view/WindowManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcarbon/beta/MarshmallowEditText;->z0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcarbon/beta/MarshmallowEditText;->y0:Ltc0;

    invoke-virtual {v0, p0}, Ltc0;->k(Lcarbon/widget/EditText;)Z

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcarbon/beta/MarshmallowEditText;->z0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcarbon/beta/MarshmallowEditText;->y0:Ltc0;

    invoke-virtual {v0}, Ltc0;->c()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Lcarbon/beta/MarshmallowEditText$SavedState;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    check-cast p1, Lcarbon/beta/MarshmallowEditText$SavedState;

    invoke-virtual {p1}, Lcarbon/beta/MarshmallowEditText$SavedState;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget p1, p1, Lcarbon/beta/MarshmallowEditText$SavedState;->a:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcarbon/beta/MarshmallowEditText;->z0:Z

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcarbon/beta/MarshmallowEditText$SavedState;

    invoke-direct {v1, v0}, Lcarbon/beta/MarshmallowEditText$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-boolean v0, p0, Lcarbon/beta/MarshmallowEditText;->z0:Z

    iput v0, v1, Lcarbon/beta/MarshmallowEditText$SavedState;->a:I

    return-object v1
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    const v1, 0x102001f

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->showContextMenu()Z

    :cond_0
    return v0
.end method

.method public setFrame(IIII)Z
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result p1

    iget-object p2, p0, Lcarbon/beta/MarshmallowEditText;->y0:Ltc0;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ltc0;->update()V

    :cond_0
    return p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    new-instance v0, Lcarbon/beta/MarshmallowEditText$b;

    invoke-direct {v0, p0, p1}, Lcarbon/beta/MarshmallowEditText$b;-><init>(Lcarbon/beta/MarshmallowEditText;Landroid/view/ActionMode$Callback;)V

    invoke-super {p0, v0}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1

    new-instance v0, Lcarbon/beta/MarshmallowEditText$c;

    invoke-direct {v0, p0, p1}, Lcarbon/beta/MarshmallowEditText$c;-><init>(Lcarbon/beta/MarshmallowEditText;Landroid/view/ActionMode$Callback;)V

    invoke-super {p0, v0, p2}, Landroid/widget/EditText;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
