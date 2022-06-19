.class public Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

.field b:Z

.field public c:I

.field public d:I

.field public e:I

.field f:I

.field public g:I

.field public h:I

.field i:I

.field j:I

.field k:Landroid/view/View;

.field l:Landroid/view/View;

.field final m:Landroid/graphics/Rect;

.field n:Ljava/lang/Object;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2869
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2809
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    .line 2818
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    .line 2824
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    .line 2831
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->e:I

    .line 2837
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    .line 2844
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    .line 2851
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 2864
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->m:Landroid/graphics/Rect;

    .line 2870
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2873
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2809
    iput-boolean v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    .line 2818
    iput v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    .line 2824
    iput v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    .line 2831
    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->e:I

    .line 2837
    iput v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    .line 2844
    iput v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    .line 2851
    iput v2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 2864
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->m:Landroid/graphics/Rect;

    .line 2875
    sget-object v0, Landroidx/coordinatorlayout/a$c;->CoordinatorLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2878
    sget v1, Landroidx/coordinatorlayout/a$c;->CoordinatorLayout_Layout_android_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    .line 2881
    sget v1, Landroidx/coordinatorlayout/a$c;->CoordinatorLayout_Layout_layout_anchor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    .line 2883
    sget v1, Landroidx/coordinatorlayout/a$c;->CoordinatorLayout_Layout_layout_anchorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    .line 2887
    sget v1, Landroidx/coordinatorlayout/a$c;->CoordinatorLayout_Layout_layout_keyline:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->e:I

    .line 2890
    sget v1, Landroidx/coordinatorlayout/a$c;->CoordinatorLayout_Layout_layout_insetEdge:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    .line 2891
    sget v1, Landroidx/coordinatorlayout/a$c;->CoordinatorLayout_Layout_layout_dodgeInsetEdges:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 2893
    sget v1, Landroidx/coordinatorlayout/a$c;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    .line 2895
    iget-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    if-eqz v1, :cond_0

    .line 2896
    sget v1, Landroidx/coordinatorlayout/a$c;->CoordinatorLayout_Layout_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    move-result-object v1

    iput-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    .line 2899
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2901
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_1

    .line 2903
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V

    .line 2905
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2916
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2809
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    .line 2818
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    .line 2824
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    .line 2831
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->e:I

    .line 2837
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    .line 2844
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    .line 2851
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 2864
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->m:Landroid/graphics/Rect;

    .line 2917
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2912
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2809
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    .line 2818
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    .line 2824
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    .line 2831
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->e:I

    .line 2837
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    .line 2844
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    .line 2851
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 2864
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->m:Landroid/graphics/Rect;

    .line 2913
    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2908
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2809
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    .line 2818
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->c:I

    .line 2824
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->d:I

    .line 2831
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->e:I

    .line 2837
    iput v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    .line 2844
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    .line 2851
    iput v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 2864
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->m:Landroid/graphics/Rect;

    .line 2909
    return-void
.end method

.method private a(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3141
    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    invoke-virtual {p2, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    .line 3142
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 3143
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    if-ne v0, p2, :cond_1

    .line 3144
    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3145
    iput-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->l:Landroid/view/View;

    iput-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    .line 3178
    :goto_0
    return-void

    .line 3148
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "View can not be anchored to the the parent CoordinatorLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3152
    :cond_1
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    .line 3153
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3154
    :goto_1
    if-eq v1, p2, :cond_5

    if-eqz v1, :cond_5

    .line 3156
    if-ne v1, p1, :cond_3

    .line 3157
    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3158
    iput-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->l:Landroid/view/View;

    iput-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    goto :goto_0

    .line 3161
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3164
    :cond_3
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 3165
    check-cast v0, Landroid/view/View;

    .line 3155
    :cond_4
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 3168
    :cond_5
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->l:Landroid/view/View;

    goto :goto_0

    .line 3170
    :cond_6
    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3171
    iput-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->l:Landroid/view/View;

    iput-object v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    goto :goto_0

    .line 3174
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3175
    invoke-virtual {p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/view/View;I)Z
    .locals 2

    .prologue
    .line 3210
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;

    .line 3211
    iget v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->g:I

    invoke-static {v0, p2}, Landroidx/core/h/c;->a(II)I

    move-result v0

    .line 3212
    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->h:I

    .line 3213
    invoke-static {v1, p2}, Landroidx/core/h/c;->a(II)I

    move-result v1

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    .line 3212
    :goto_0
    return v0

    .line 3213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 3186
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 3203
    :goto_0
    return v0

    .line 3190
    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    .line 3191
    iget-object v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3192
    :goto_1
    if-eq v1, p2, :cond_4

    .line 3194
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_2

    .line 3195
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->l:Landroid/view/View;

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    move v0, v2

    .line 3196
    goto :goto_0

    .line 3198
    :cond_2
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 3199
    check-cast v0, Landroid/view/View;

    .line 3193
    :cond_3
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 3202
    :cond_4
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->l:Landroid/view/View;

    .line 3203
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 2926
    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    return v0
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 3054
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a(IZ)V

    .line 3055
    return-void
.end method

.method a(IZ)V
    .locals 0

    .prologue
    .line 3058
    packed-switch p1, :pswitch_data_0

    .line 3066
    :goto_0
    return-void

    .line 3060
    :pswitch_0
    iput-boolean p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->p:Z

    goto :goto_0

    .line 3063
    :pswitch_1
    iput-boolean p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->q:Z

    goto :goto_0

    .line 3058
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 2987
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->m:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2988
    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;)V
    .locals 1

    .prologue
    .line 2965
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    if-eq v0, p1, :cond_1

    .line 2966
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_0

    .line 2968
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a()V

    .line 2971
    :cond_0
    iput-object p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    .line 2972
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->n:Ljava/lang/Object;

    .line 2973
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b:Z

    .line 2975
    if-eqz p1, :cond_1

    .line 2977
    invoke-virtual {p1, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;)V

    .line 2980
    :cond_1
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 3083
    iput-boolean p1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->r:Z

    .line 3084
    return-void
.end method

.method a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 3033
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->o:Z

    if-eqz v0, :cond_0

    .line 3034
    const/4 v0, 0x1

    .line 3037
    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->o:Z

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    .line 3038
    invoke-virtual {v0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->c(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v0

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->o:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 3100
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->l:Landroid/view/View;

    if-eq p3, v0, :cond_0

    .line 3101
    invoke-static {p1}, Landroidx/core/h/u;->g(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    .line 3102
    invoke-virtual {v0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 3100
    :goto_0
    return v0

    .line 3102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3125
    iget v1, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 3126
    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->l:Landroid/view/View;

    iput-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    .line 3133
    :goto_0
    return-object v0

    .line 3130
    :cond_0
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->b(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3131
    :cond_1
    invoke-direct {p0, p2, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a(Landroid/view/View;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V

    .line 3133
    :cond_2
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    goto :goto_0
.end method

.method public b()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
    .locals 1

    .prologue
    .line 2952
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    return-object v0
.end method

.method b(I)Z
    .locals 1

    .prologue
    .line 3069
    packed-switch p1, :pswitch_data_0

    .line 3075
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3071
    :pswitch_0
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->p:Z

    goto :goto_0

    .line 3073
    :pswitch_1
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->q:Z

    goto :goto_0

    .line 3069
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method c()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 2995
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->m:Landroid/graphics/Rect;

    return-object v0
.end method

.method d()Z
    .locals 2

    .prologue
    .line 3003
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->k:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 3014
    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->a:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    if-nez v0, :cond_0

    .line 3015
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->o:Z

    .line 3017
    :cond_0
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->o:Z

    return v0
.end method

.method f()V
    .locals 1

    .prologue
    .line 3050
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->o:Z

    .line 3051
    return-void
.end method

.method g()Z
    .locals 1

    .prologue
    .line 3079
    iget-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->r:Z

    return v0
.end method

.method h()V
    .locals 1

    .prologue
    .line 3087
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$e;->r:Z

    .line 3088
    return-void
.end method
