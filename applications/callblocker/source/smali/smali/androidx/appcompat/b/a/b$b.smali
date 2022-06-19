.class abstract Landroidx/appcompat/b/a/b$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field A:Z

.field B:I

.field C:I

.field D:I

.field E:Z

.field F:Landroid/graphics/ColorFilter;

.field G:Z

.field H:Landroid/content/res/ColorStateList;

.field I:Landroid/graphics/PorterDuff$Mode;

.field J:Z

.field K:Z

.field final c:Landroidx/appcompat/b/a/b;

.field d:Landroid/content/res/Resources;

.field e:I

.field f:I

.field g:I

.field h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field i:[Landroid/graphics/drawable/Drawable;

.field j:I

.field k:Z

.field l:Z

.field m:Landroid/graphics/Rect;

.field n:Z

.field o:Z

.field p:I

.field q:I

.field r:I

.field s:I

.field t:Z

.field u:I

.field v:Z

.field w:Z

.field x:Z

.field y:Z

.field z:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/b/a/b$b;Landroidx/appcompat/b/a/b;Landroid/content/res/Resources;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 684
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 649
    const/16 v0, 0xa0

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->e:I

    .line 655
    iput-boolean v1, p0, Landroidx/appcompat/b/a/b$b;->k:Z

    .line 658
    iput-boolean v1, p0, Landroidx/appcompat/b/a/b$b;->n:Z

    .line 670
    iput-boolean v3, p0, Landroidx/appcompat/b/a/b$b;->z:Z

    .line 673
    iput v1, p0, Landroidx/appcompat/b/a/b$b;->C:I

    .line 674
    iput v1, p0, Landroidx/appcompat/b/a/b$b;->D:I

    .line 685
    iput-object p2, p0, Landroidx/appcompat/b/a/b$b;->c:Landroidx/appcompat/b/a/b;

    .line 686
    if-eqz p3, :cond_5

    move-object v0, p3

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/b/a/b$b;->d:Landroid/content/res/Resources;

    .line 687
    if-eqz p1, :cond_7

    iget v0, p1, Landroidx/appcompat/b/a/b$b;->e:I

    :goto_1
    invoke-static {p3, v0}, Landroidx/appcompat/b/a/b;->a(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->e:I

    .line 688
    if-eqz p1, :cond_a

    .line 689
    iget v0, p1, Landroidx/appcompat/b/a/b$b;->f:I

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->f:I

    .line 690
    iget v0, p1, Landroidx/appcompat/b/a/b$b;->g:I

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->g:I

    .line 691
    iput-boolean v3, p0, Landroidx/appcompat/b/a/b$b;->x:Z

    .line 692
    iput-boolean v3, p0, Landroidx/appcompat/b/a/b$b;->y:Z

    .line 693
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->k:Z

    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->k:Z

    .line 694
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->n:Z

    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->n:Z

    .line 695
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->z:Z

    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->z:Z

    .line 696
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->A:Z

    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->A:Z

    .line 697
    iget v0, p1, Landroidx/appcompat/b/a/b$b;->B:I

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->B:I

    .line 698
    iget v0, p1, Landroidx/appcompat/b/a/b$b;->C:I

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->C:I

    .line 699
    iget v0, p1, Landroidx/appcompat/b/a/b$b;->D:I

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->D:I

    .line 700
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->E:Z

    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->E:Z

    .line 701
    iget-object v0, p1, Landroidx/appcompat/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroidx/appcompat/b/a/b$b;->F:Landroid/graphics/ColorFilter;

    .line 702
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->G:Z

    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->G:Z

    .line 703
    iget-object v0, p1, Landroidx/appcompat/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroidx/appcompat/b/a/b$b;->H:Landroid/content/res/ColorStateList;

    .line 704
    iget-object v0, p1, Landroidx/appcompat/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/appcompat/b/a/b$b;->I:Landroid/graphics/PorterDuff$Mode;

    .line 705
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->J:Z

    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->J:Z

    .line 706
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->K:Z

    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->K:Z

    .line 707
    iget v0, p1, Landroidx/appcompat/b/a/b$b;->e:I

    iget v2, p0, Landroidx/appcompat/b/a/b$b;->e:I

    if-ne v0, v2, :cond_1

    .line 708
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->l:Z

    if-eqz v0, :cond_0

    .line 709
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p1, Landroidx/appcompat/b/a/b$b;->m:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroidx/appcompat/b/a/b$b;->m:Landroid/graphics/Rect;

    .line 710
    iput-boolean v3, p0, Landroidx/appcompat/b/a/b$b;->l:Z

    .line 712
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->o:Z

    if-eqz v0, :cond_1

    .line 713
    iget v0, p1, Landroidx/appcompat/b/a/b$b;->p:I

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->p:I

    .line 714
    iget v0, p1, Landroidx/appcompat/b/a/b$b;->q:I

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->q:I

    .line 715
    iget v0, p1, Landroidx/appcompat/b/a/b$b;->r:I

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->r:I

    .line 716
    iget v0, p1, Landroidx/appcompat/b/a/b$b;->s:I

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->s:I

    .line 717
    iput-boolean v3, p0, Landroidx/appcompat/b/a/b$b;->o:Z

    .line 720
    :cond_1
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->t:Z

    if-eqz v0, :cond_2

    .line 721
    iget v0, p1, Landroidx/appcompat/b/a/b$b;->u:I

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->u:I

    .line 722
    iput-boolean v3, p0, Landroidx/appcompat/b/a/b$b;->t:Z

    .line 724
    :cond_2
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->v:Z

    if-eqz v0, :cond_3

    .line 725
    iget-boolean v0, p1, Landroidx/appcompat/b/a/b$b;->w:Z

    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->w:Z

    .line 726
    iput-boolean v3, p0, Landroidx/appcompat/b/a/b$b;->v:Z

    .line 730
    :cond_3
    iget-object v0, p1, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 731
    array-length v2, v0

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 732
    iget v2, p1, Landroidx/appcompat/b/a/b$b;->j:I

    iput v2, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 733
    iget-object v2, p1, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    .line 734
    if-eqz v2, :cond_8

    .line 735
    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    .line 742
    :goto_2
    iget v2, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 743
    :goto_3
    if-ge v1, v2, :cond_b

    .line 744
    aget-object v3, v0, v1

    if-eqz v3, :cond_4

    .line 745
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    .line 746
    if-eqz v3, :cond_9

    .line 747
    iget-object v4, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 743
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 686
    :cond_5
    if-eqz p1, :cond_6

    iget-object v0, p1, Landroidx/appcompat/b/a/b$b;->d:Landroid/content/res/Resources;

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 687
    goto/16 :goto_1

    .line 737
    :cond_8
    new-instance v2, Landroid/util/SparseArray;

    iget v3, p0, Landroidx/appcompat/b/a/b$b;->j:I

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    goto :goto_2

    .line 749
    :cond_9
    iget-object v3, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v0, v1

    aput-object v4, v3, v1

    goto :goto_4

    .line 754
    :cond_a
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 755
    iput v1, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 757
    :cond_b
    return-void
.end method

.method private b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 814
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 815
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->B:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 817
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 818
    iget-object v1, p0, Landroidx/appcompat/b/a/b$b;->c:Landroidx/appcompat/b/a/b;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 819
    return-object v0
.end method

.method private o()V
    .locals 6

    .prologue
    .line 802
    iget-object v0, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 804
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 805
    iget-object v0, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 806
    iget-object v0, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 807
    iget-object v4, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroidx/appcompat/b/a/b$b;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/b$b;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v4, v3

    .line 804
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 809
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    .line 811
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 771
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 772
    iget-object v1, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 773
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/b/a/b$b;->e(II)V

    .line 775
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 776
    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 777
    iget-object v1, p0, Landroidx/appcompat/b/a/b$b;->c:Landroidx/appcompat/b/a/b;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 778
    iget-object v1, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v1, v0

    .line 779
    iget v1, p0, Landroidx/appcompat/b/a/b$b;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 780
    iget v1, p0, Landroidx/appcompat/b/a/b$b;->g:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v2

    or-int/2addr v1, v2

    iput v1, p0, Landroidx/appcompat/b/a/b$b;->g:I

    .line 781
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->b()V

    .line 782
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/b/a/b$b;->m:Landroid/graphics/Rect;

    .line 783
    iput-boolean v3, p0, Landroidx/appcompat/b/a/b$b;->l:Z

    .line 784
    iput-boolean v3, p0, Landroidx/appcompat/b/a/b$b;->o:Z

    .line 785
    iput-boolean v3, p0, Landroidx/appcompat/b/a/b$b;->x:Z

    .line 786
    return v0
.end method

.method a()V
    .locals 4

    .prologue
    .line 934
    iget v1, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 935
    iget-object v2, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 936
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 937
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    .line 938
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 936
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->A:Z

    .line 942
    return-void
.end method

.method final a(Landroid/content/res/Resources$Theme;)V
    .locals 5

    .prologue
    .line 895
    if-eqz p1, :cond_2

    .line 896
    invoke-direct {p0}, Landroidx/appcompat/b/a/b$b;->o()V

    .line 897
    iget v1, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 898
    iget-object v2, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 899
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 900
    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 901
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 903
    iget v3, p0, Landroidx/appcompat/b/a/b$b;->g:I

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, Landroidx/appcompat/b/a/b$b;->g:I

    .line 899
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 906
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/b/a/b$b;->a(Landroid/content/res/Resources;)V

    .line 908
    :cond_2
    return-void
.end method

.method final a(Landroid/content/res/Resources;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 879
    if-eqz p1, :cond_0

    .line 880
    iput-object p1, p0, Landroidx/appcompat/b/a/b$b;->d:Landroid/content/res/Resources;

    .line 883
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->e:I

    invoke-static {p1, v0}, Landroidx/appcompat/b/a/b;->a(Landroid/content/res/Resources;I)I

    move-result v0

    .line 884
    iget v1, p0, Landroidx/appcompat/b/a/b$b;->e:I

    .line 885
    iput v0, p0, Landroidx/appcompat/b/a/b$b;->e:I

    .line 886
    if-eq v1, v0, :cond_0

    .line 887
    iput-boolean v2, p0, Landroidx/appcompat/b/a/b$b;->o:Z

    .line 888
    iput-boolean v2, p0, Landroidx/appcompat/b/a/b$b;->l:Z

    .line 891
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 961
    iput-boolean p1, p0, Landroidx/appcompat/b/a/b$b;->k:Z

    .line 962
    return-void
.end method

.method public final b(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 830
    iget-object v0, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    .line 831
    if-eqz v0, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-object v0

    .line 835
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 836
    iget-object v0, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 837
    if-ltz v2, :cond_2

    .line 838
    iget-object v0, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 839
    iget-object v3, p0, Landroidx/appcompat/b/a/b$b;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/b/a/b$b;->b(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 840
    iget-object v3, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, p1

    .line 841
    iget-object v3, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 842
    iget-object v2, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 843
    iput-object v1, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 848
    goto :goto_0
.end method

.method b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 793
    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->t:Z

    .line 794
    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->v:Z

    .line 795
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 993
    iput-boolean p1, p0, Landroidx/appcompat/b/a/b$b;->n:Z

    .line 994
    return-void
.end method

.method final c()I
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    return v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 1064
    iput p1, p0, Landroidx/appcompat/b/a/b$b;->C:I

    .line 1065
    return-void
.end method

.method public canApplyTheme()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 913
    iget v4, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 914
    iget-object v5, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v3, v2

    .line 915
    :goto_0
    if-ge v3, v4, :cond_2

    .line 916
    aget-object v0, v5, v3

    .line 917
    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 928
    :goto_1
    return v0

    .line 922
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/b/a/b$b;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 923
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 924
    goto :goto_1

    .line 915
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 928
    goto :goto_1
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->j:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 1072
    iput p1, p0, Landroidx/appcompat/b/a/b$b;->D:I

    .line 1073
    return-void
.end method

.method final d(II)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 852
    .line 855
    iget v4, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 856
    iget-object v5, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v3, v2

    move v1, v2

    .line 857
    :goto_0
    if-ge v3, v4, :cond_0

    .line 858
    aget-object v0, v5, v3

    if-eqz v0, :cond_1

    .line 860
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v0, v6, :cond_2

    .line 861
    aget-object v0, v5, v3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v0

    .line 863
    :goto_1
    if-ne v3, p2, :cond_1

    .line 857
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    .line 868
    :cond_0
    iput p1, p0, Landroidx/appcompat/b/a/b$b;->B:I

    .line 869
    return v1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public final e()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 968
    iget-boolean v1, p0, Landroidx/appcompat/b/a/b$b;->k:Z

    if-eqz v1, :cond_0

    .line 989
    :goto_0
    return-object v0

    .line 971
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/b/a/b$b;->m:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroidx/appcompat/b/a/b$b;->l:Z

    if-eqz v1, :cond_2

    .line 972
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/b/a/b$b;->m:Landroid/graphics/Rect;

    goto :goto_0

    .line 974
    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/b/a/b$b;->o()V

    .line 976
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 977
    iget v4, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 978
    iget-object v5, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v1, v2

    .line 979
    :goto_1
    if-ge v1, v4, :cond_8

    .line 980
    aget-object v6, v5, v1

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 981
    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 982
    :cond_3
    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_4

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 983
    :cond_4
    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_5

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 984
    :cond_5
    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_6

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 985
    :cond_6
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_7

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 979
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 988
    :cond_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/b/a/b$b;->l:Z

    .line 989
    iput-object v0, p0, Landroidx/appcompat/b/a/b$b;->m:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public e(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1124
    new-array v0, p2, [Landroid/graphics/drawable/Drawable;

    .line 1125
    iget-object v1, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1126
    iput-object v0, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 1127
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 1000
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->n:Z

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->o:Z

    if-nez v0, :cond_0

    .line 1008
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->k()V

    .line 1010
    :cond_0
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->p:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 761
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->f:I

    iget v1, p0, Landroidx/appcompat/b/a/b$b;->g:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 1017
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->o:Z

    if-nez v0, :cond_0

    .line 1018
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->k()V

    .line 1020
    :cond_0
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->q:I

    return v0
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 1027
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->o:Z

    if-nez v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->k()V

    .line 1030
    :cond_0
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->r:I

    return v0
.end method

.method public final j()I
    .locals 1

    .prologue
    .line 1037
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->o:Z

    if-nez v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Landroidx/appcompat/b/a/b$b;->k()V

    .line 1040
    :cond_0
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->s:I

    return v0
.end method

.method protected k()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1044
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/b/a/b$b;->o:Z

    .line 1045
    invoke-direct {p0}, Landroidx/appcompat/b/a/b$b;->o()V

    .line 1046
    iget v1, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 1047
    iget-object v2, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 1048
    const/4 v3, -0x1

    iput v3, p0, Landroidx/appcompat/b/a/b$b;->q:I

    iput v3, p0, Landroidx/appcompat/b/a/b$b;->p:I

    .line 1049
    iput v0, p0, Landroidx/appcompat/b/a/b$b;->s:I

    iput v0, p0, Landroidx/appcompat/b/a/b$b;->r:I

    .line 1050
    :goto_0
    if-ge v0, v1, :cond_4

    .line 1051
    aget-object v3, v2, v0

    .line 1052
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1053
    iget v5, p0, Landroidx/appcompat/b/a/b$b;->p:I

    if-le v4, v5, :cond_0

    iput v4, p0, Landroidx/appcompat/b/a/b$b;->p:I

    .line 1054
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 1055
    iget v5, p0, Landroidx/appcompat/b/a/b$b;->q:I

    if-le v4, v5, :cond_1

    iput v4, p0, Landroidx/appcompat/b/a/b$b;->q:I

    .line 1056
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 1057
    iget v5, p0, Landroidx/appcompat/b/a/b$b;->r:I

    if-le v4, v5, :cond_2

    iput v4, p0, Landroidx/appcompat/b/a/b$b;->r:I

    .line 1058
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    .line 1059
    iget v4, p0, Landroidx/appcompat/b/a/b$b;->s:I

    if-le v3, v4, :cond_3

    iput v3, p0, Landroidx/appcompat/b/a/b$b;->s:I

    .line 1050
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1061
    :cond_4
    return-void
.end method

.method public final l()I
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1083
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->t:Z

    if-eqz v0, :cond_0

    .line 1084
    iget v0, p0, Landroidx/appcompat/b/a/b$b;->u:I

    .line 1095
    :goto_0
    return v0

    .line 1086
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/b/a/b$b;->o()V

    .line 1087
    iget v3, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 1088
    iget-object v4, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    .line 1089
    if-lez v3, :cond_1

    const/4 v0, 0x0

    aget-object v0, v4, v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    :goto_1
    move v1, v2

    .line 1090
    :goto_2
    if-ge v1, v3, :cond_2

    .line 1091
    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v0, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    .line 1090
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1089
    :cond_1
    const/4 v0, -0x2

    goto :goto_1

    .line 1093
    :cond_2
    iput v0, p0, Landroidx/appcompat/b/a/b$b;->u:I

    .line 1094
    iput-boolean v2, p0, Landroidx/appcompat/b/a/b$b;->t:Z

    goto :goto_0
.end method

.method public final m()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1102
    iget-boolean v2, p0, Landroidx/appcompat/b/a/b$b;->v:Z

    if-eqz v2, :cond_0

    .line 1103
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->w:Z

    .line 1117
    :goto_0
    return v0

    .line 1105
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/b/a/b$b;->o()V

    .line 1106
    iget v3, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 1107
    iget-object v4, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v2, v0

    .line 1109
    :goto_1
    if-ge v2, v3, :cond_1

    .line 1110
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v1

    .line 1115
    :cond_1
    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->w:Z

    .line 1116
    iput-boolean v1, p0, Landroidx/appcompat/b/a/b$b;->v:Z

    goto :goto_0

    .line 1109
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public declared-synchronized n()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1133
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroidx/appcompat/b/a/b$b;->x:Z

    if-eqz v2, :cond_0

    .line 1134
    iget-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1147
    :goto_0
    monitor-exit p0

    return v0

    .line 1136
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroidx/appcompat/b/a/b$b;->o()V

    .line 1137
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/appcompat/b/a/b$b;->x:Z

    .line 1138
    iget v3, p0, Landroidx/appcompat/b/a/b$b;->j:I

    .line 1139
    iget-object v4, p0, Landroidx/appcompat/b/a/b$b;->i:[Landroid/graphics/drawable/Drawable;

    move v2, v0

    .line 1140
    :goto_1
    if-ge v2, v3, :cond_2

    .line 1141
    aget-object v5, v4, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1142
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/b/a/b$b;->y:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1140
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1146
    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroidx/appcompat/b/a/b$b;->y:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 1147
    goto :goto_0
.end method
