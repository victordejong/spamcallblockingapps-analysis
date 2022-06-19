.class Lcom/google/android/material/chip/ChipGroup$d;
.super Ljava/lang/Object;
.source "ChipGroup.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/chip/ChipGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/chip/ChipGroup;

.field private b:Landroid/view/ViewGroup$OnHierarchyChangeListener;


# direct methods
.method private constructor <init>(Lcom/google/android/material/chip/ChipGroup;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$d;->a:Lcom/google/android/material/chip/ChipGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup$d;-><init>(Lcom/google/android/material/chip/ChipGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/ChipGroup$d;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup$d;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-object p1
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$d;->a:Lcom/google/android/material/chip/ChipGroup;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_1

    .line 445
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    .line 447
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 448
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_3

    .line 449
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    .line 453
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    move-object v0, p2

    .line 455
    check-cast v0, Lcom/google/android/material/chip/Chip;

    iget-object v1, p0, Lcom/google/android/material/chip/ChipGroup$d;->a:Lcom/google/android/material/chip/ChipGroup;

    invoke-static {v1}, Lcom/google/android/material/chip/ChipGroup;->d(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$d;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$d;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 461
    :cond_2
    return-void

    .line 451
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$d;->a:Lcom/google/android/material/chip/ChipGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 466
    check-cast v0, Lcom/google/android/material/chip/Chip;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/Chip;->setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$d;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup$d;->b:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 472
    :cond_1
    return-void
.end method
