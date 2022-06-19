.class public Lcom/kedlin/cca/ui/CCTabIcon;
.super Landroid/widget/ImageButton;
.source ""


# static fields
.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final f:[I


# instance fields
.field public a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f040494

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/kedlin/cca/ui/CCTabIcon;->b:[I

    new-array v1, v0, [I

    const v2, 0x7f040496

    aput v2, v1, v3

    sput-object v1, Lcom/kedlin/cca/ui/CCTabIcon;->c:[I

    new-array v1, v0, [I

    const v2, 0x7f040495

    aput v2, v1, v3

    sput-object v1, Lcom/kedlin/cca/ui/CCTabIcon;->d:[I

    new-array v0, v0, [I

    const v1, 0x7f040497

    aput v1, v0, v3

    sput-object v0, Lcom/kedlin/cca/ui/CCTabIcon;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CCTabIcon;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CCTabIcon;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CCTabIcon;->a:Z

    return-void
.end method


# virtual methods
.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x3

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onCreateDrawableState(I)[I

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/kedlin/cca/ui/CCTabIcon;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kedlin/cca/ui/CCTabIcon;->d:[I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/kedlin/cca/ui/CCTabIcon;->b:[I

    :goto_0
    invoke-static {p1, v0}, Landroid/widget/ImageButton;->mergeDrawableStates([I[I)[I

    goto :goto_3

    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/kedlin/cca/ui/CCTabIcon;->a:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kedlin/cca/ui/CCTabIcon;->f:[I

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/kedlin/cca/ui/CCTabIcon;->c:[I

    :goto_2
    invoke-static {p1, v0}, Landroid/widget/ImageButton;->mergeDrawableStates([I[I)[I

    :goto_3
    return-object p1
.end method

.method public setBadge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kedlin/cca/ui/CCTabIcon;->a:Z

    invoke-virtual {p0}, Landroid/widget/ImageButton;->refreshDrawableState()V

    return-void
.end method
