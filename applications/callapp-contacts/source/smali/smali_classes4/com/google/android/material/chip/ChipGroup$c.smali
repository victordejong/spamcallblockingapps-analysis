.class final Lcom/google/android/material/chip/ChipGroup$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/chip/ChipGroup;

.field private b:Landroid/view/ViewGroup$OnHierarchyChangeListener;


# direct methods
.method private constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$c;->a:Lcom/google/android/material/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V
    .locals 0

    .line 558
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup$c;-><init>(Lcom/google/android/material/chip/ChipGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/ChipGroup$c;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$c;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public final onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    .line 563
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$c;->a:Lcom/google/android/material/chip/ChipGroup;

    if-ne p1, v0, :cond_4

    instance-of v0, p2, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_4

    .line 564
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 567
    invoke-static {}, Landroidx/core/view/v;->a()I

    move-result v0

    .line 568
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 570
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 571
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 572
    move-object v2, p1

    check-cast v2, Lcom/google/android/material/chip/ChipGroup;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v3

    .line 1264
    iget v4, v2, Lcom/google/android/material/chip/ChipGroup;->b:I

    if-eq v3, v4, :cond_3

    .line 1268
    iget v4, v2, Lcom/google/android/material/chip/ChipGroup;->b:I

    if-eq v4, v1, :cond_1

    iget-boolean v4, v2, Lcom/google/android/material/chip/ChipGroup;->a:Z

    if-eqz v4, :cond_1

    .line 1269
    iget v4, v2, Lcom/google/android/material/chip/ChipGroup;->b:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/google/android/material/chip/ChipGroup;->a(IZ)V

    :cond_1
    if-eq v3, v1, :cond_2

    const/4 v1, 0x1

    .line 1273
    invoke-virtual {v2, v3, v1}, Lcom/google/android/material/chip/ChipGroup;->a(IZ)V

    .line 1359
    :cond_2
    iput v3, v2, Lcom/google/android/material/chip/ChipGroup;->b:I

    .line 574
    :cond_3
    iget-object v1, p0, Lcom/google/android/material/chip/ChipGroup$c;->a:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v1}, Lcom/google/android/material/chip/ChipGroup;->e(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$a;

    move-result-object v1

    .line 1725
    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 577
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$c;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_5

    .line 578
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public final onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$c;->a:Lcom/google/android/material/chip/ChipGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_0

    .line 585
    move-object v0, p2

    check-cast v0, Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x0

    .line 2725
    iput-object v1, v0, Lcom/google/android/material/chip/Chip;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$c;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 589
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method
