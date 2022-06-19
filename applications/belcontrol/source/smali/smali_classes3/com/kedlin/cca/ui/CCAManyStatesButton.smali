.class public Lcom/kedlin/cca/ui/CCAManyStatesButton;
.super Landroid/widget/Button;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kedlin/cca/ui/CCAManyStatesButton$b;
    }
.end annotation


# static fields
.field public static final b:[I

.field public static final c:[I

.field public static final d:[I


# instance fields
.field public a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f040494

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/kedlin/cca/ui/CCAManyStatesButton;->b:[I

    new-array v1, v0, [I

    const v2, 0x7f04048f

    aput v2, v1, v3

    sput-object v1, Lcom/kedlin/cca/ui/CCAManyStatesButton;->c:[I

    new-array v0, v0, [I

    const v1, 0x7f040493

    aput v1, v0, v3

    sput-object v0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/kedlin/cca/ui/CCAManyStatesButton$b;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCAManyStatesButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/kedlin/cca/ui/CCAManyStatesButton$b;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCAManyStatesButton;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Lcom/kedlin/cca/ui/CCAManyStatesButton$b;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    invoke-virtual {p0}, Lcom/kedlin/cca/ui/CCAManyStatesButton;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    sget-object v1, Lcom/kedlin/cca/ui/CCAManyStatesButton$b;->b:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    sget-object v1, Lcom/kedlin/cca/ui/CCAManyStatesButton$b;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDayState()Lcom/kedlin/cca/ui/CCAManyStatesButton$b;
    .locals 1

    iget-object v0, p0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    return-object v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 3

    const/4 v0, 0x3

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object v1, p0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    if-eqz v1, :cond_3

    sget-object v2, Lcom/kedlin/cca/ui/CCAManyStatesButton$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->d:[I

    invoke-static {p1, v0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->c:[I

    invoke-static {p1, v0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->b:[I

    invoke-static {p1, v0}, Landroid/widget/Button;->mergeDrawableStates([I[I)[I

    :cond_3
    :goto_0
    return-object p1
.end method

.method public performClick()Z
    .locals 3

    invoke-static {}, Lcom/kedlin/cca/ui/CCAManyStatesButton$b;->values()[Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    move-result-object v0

    iget-object v1, p0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Lcom/kedlin/cca/ui/CCAManyStatesButton$b;->values()[Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/kedlin/cca/ui/CCAManyStatesButton;->setDayState(Lcom/kedlin/cca/ui/CCAManyStatesButton$b;)V

    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    return v0
.end method

.method public setDayState(Lcom/kedlin/cca/ui/CCAManyStatesButton$b;)V
    .locals 0

    iput-object p1, p0, Lcom/kedlin/cca/ui/CCAManyStatesButton;->a:Lcom/kedlin/cca/ui/CCAManyStatesButton$b;

    invoke-virtual {p0}, Landroid/widget/Button;->refreshDrawableState()V

    return-void
.end method
