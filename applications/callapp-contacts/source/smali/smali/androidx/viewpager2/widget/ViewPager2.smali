.class public final Landroidx/viewpager2/widget/ViewPager2;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/widget/ViewPager2$c;,
        Landroidx/viewpager2/widget/ViewPager2$f;,
        Landroidx/viewpager2/widget/ViewPager2$b;,
        Landroidx/viewpager2/widget/ViewPager2$a;,
        Landroidx/viewpager2/widget/ViewPager2$g;,
        Landroidx/viewpager2/widget/ViewPager2$e;,
        Landroidx/viewpager2/widget/ViewPager2$j;,
        Landroidx/viewpager2/widget/ViewPager2$h;,
        Landroidx/viewpager2/widget/ViewPager2$d;,
        Landroidx/viewpager2/widget/ViewPager2$i;,
        Landroidx/viewpager2/widget/ViewPager2$SavedState;
    }
.end annotation


# static fields
.field static a:Z = true


# instance fields
.field public b:Landroidx/viewpager2/widget/b;

.field public c:I

.field d:Z

.field e:Landroidx/recyclerview/widget/LinearLayoutManager;

.field f:Landroidx/recyclerview/widget/RecyclerView;

.field public g:Landroidx/viewpager2/widget/e;

.field h:Landroidx/viewpager2/widget/c;

.field i:Z

.field j:I

.field k:Landroidx/viewpager2/widget/ViewPager2$a;

.field private final l:Landroid/graphics/Rect;

.field private final m:Landroid/graphics/Rect;

.field private n:Landroidx/recyclerview/widget/RecyclerView$c;

.field private o:I

.field private p:Landroid/os/Parcelable;

.field private q:Landroidx/recyclerview/widget/k;

.field private r:Landroidx/viewpager2/widget/b;

.field private s:Landroidx/viewpager2/widget/d;

.field private t:Landroidx/recyclerview/widget/RecyclerView$f;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 157
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroidx/viewpager2/widget/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/viewpager2/widget/b;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Z

    .line 132
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/recyclerview/widget/RecyclerView$c;

    const/4 v1, -0x1

    .line 142
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:I

    const/4 v2, 0x0

    .line 150
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/recyclerview/widget/RecyclerView$f;

    .line 151
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Z

    .line 153
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:I

    .line 158
    invoke-direct {p0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/graphics/Rect;

    .line 127
    new-instance v0, Landroidx/viewpager2/widget/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/viewpager2/widget/b;

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Z

    .line 132
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v1, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/recyclerview/widget/RecyclerView$c;

    const/4 v1, -0x1

    .line 142
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:I

    const/4 v2, 0x0

    .line 150
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/recyclerview/widget/RecyclerView$f;

    .line 151
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Z

    .line 153
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:I

    .line 163
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 167
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    .line 125
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/graphics/Rect;

    .line 127
    new-instance p3, Landroidx/viewpager2/widget/b;

    const/4 v0, 0x3

    invoke-direct {p3, v0}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/viewpager2/widget/b;

    const/4 p3, 0x0

    .line 131
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Z

    .line 132
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/recyclerview/widget/RecyclerView$c;

    const/4 v0, -0x1

    .line 142
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:I

    const/4 v1, 0x0

    .line 150
    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/recyclerview/widget/RecyclerView$f;

    .line 151
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    const/4 p3, 0x1

    .line 152
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Z

    .line 153
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:I

    .line 168
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 124
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    .line 125
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/graphics/Rect;

    .line 127
    new-instance p3, Landroidx/viewpager2/widget/b;

    const/4 p4, 0x3

    invoke-direct {p3, p4}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/viewpager2/widget/b;

    const/4 p3, 0x0

    .line 131
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Z

    .line 132
    new-instance p4, Landroidx/viewpager2/widget/ViewPager2$1;

    invoke-direct {p4, p0}, Landroidx/viewpager2/widget/ViewPager2$1;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p4, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/recyclerview/widget/RecyclerView$c;

    const/4 p4, -0x1

    .line 142
    iput p4, p0, Landroidx/viewpager2/widget/ViewPager2;->o:I

    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/recyclerview/widget/RecyclerView$f;

    .line 151
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    const/4 p3, 0x1

    .line 152
    iput-boolean p3, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Z

    .line 153
    iput p4, p0, Landroidx/viewpager2/widget/ViewPager2;->j:I

    .line 175
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 179
    sget-boolean v0, Landroidx/viewpager2/widget/ViewPager2;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$f;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$f;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$b;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$b;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    :goto_0
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    .line 183
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$i;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$i;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 184
    invoke-static {}, Landroidx/core/view/v;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setId(I)V

    .line 185
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 187
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$d;

    invoke-direct {v0, p0, p1}, Landroidx/viewpager2/widget/ViewPager2$d;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 188
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 189
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setScrollingTouchSlop(I)V

    .line 190
    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 192
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->d()Landroidx/recyclerview/widget/RecyclerView$j;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$j;)V

    .line 198
    new-instance p1, Landroidx/viewpager2/widget/e;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/e;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/e;

    .line 200
    new-instance p2, Landroidx/viewpager2/widget/c;

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p0, p1, v0}, Landroidx/viewpager2/widget/c;-><init>(Landroidx/viewpager2/widget/ViewPager2;Landroidx/viewpager2/widget/e;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroidx/viewpager2/widget/c;

    .line 201
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$h;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$h;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/recyclerview/widget/k;

    .line 202
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 205
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/e;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 207
    new-instance p1, Landroidx/viewpager2/widget/b;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Landroidx/viewpager2/widget/b;-><init>(I)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/b;

    .line 208
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/e;

    .line 1356
    iput-object p1, p2, Landroidx/viewpager2/widget/e;->a:Landroidx/viewpager2/widget/ViewPager2$e;

    .line 212
    new-instance p1, Landroidx/viewpager2/widget/ViewPager2$2;

    invoke-direct {p1, p0}, Landroidx/viewpager2/widget/ViewPager2$2;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 230
    new-instance p2, Landroidx/viewpager2/widget/ViewPager2$3;

    invoke-direct {p2, p0}, Landroidx/viewpager2/widget/ViewPager2$3;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 242
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/b;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/b;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    .line 243
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/b;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/b;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    .line 246
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2$a;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 247
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/b;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->b:Landroidx/viewpager2/widget/b;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/b;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    .line 251
    new-instance p1, Landroidx/viewpager2/widget/d;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, p2}, Landroidx/viewpager2/widget/d;-><init>(Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Landroidx/viewpager2/widget/d;

    .line 252
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/b;

    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/b;->a(Landroidx/viewpager2/widget/ViewPager2$e;)V

    .line 254
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 292
    sget-object v0, Landroidx/viewpager2/a$a;->ViewPager2:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 293
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 294
    sget-object v3, Landroidx/viewpager2/a$a;->ViewPager2:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    invoke-virtual/range {v1 .. v7}, Landroidx/viewpager2/widget/ViewPager2;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 297
    :cond_0
    :try_start_0
    sget p1, Landroidx/viewpager2/a$a;->ViewPager2_android_orientation:I

    const/4 p2, 0x0

    .line 298
    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 297
    invoke-virtual {p0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    throw p1
.end method

.method private d()Landroidx/recyclerview/widget/RecyclerView$j;
    .locals 1

    .line 263
    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$4;

    invoke-direct {v0, p0}, Landroidx/viewpager2/widget/ViewPager2$4;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    return-object v0
.end method

.method private e()V
    .locals 4

    .line 340
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1482
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 348
    :cond_1
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroid/os/Parcelable;

    if-eqz v2, :cond_3

    .line 349
    instance-of v3, v0, Landroidx/viewpager2/adapter/c;

    if-eqz v3, :cond_2

    .line 350
    move-object v3, v0

    check-cast v3, Landroidx/viewpager2/adapter/c;

    invoke-interface {v3, v2}, Landroidx/viewpager2/adapter/c;->a(Landroid/os/Parcelable;)V

    :cond_2
    const/4 v2, 0x0

    .line 352
    iput-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroid/os/Parcelable;

    :cond_3
    const/4 v2, 0x0

    .line 355
    iget v3, p0, Landroidx/viewpager2/widget/ViewPager2;->o:I

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    .line 356
    iput v1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:I

    .line 357
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    .line 358
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$a;->c()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 537
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->q:Landroidx/recyclerview/widget/k;

    if-eqz v0, :cond_2

    .line 541
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/k;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 545
    :cond_0
    invoke-static {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->c(Landroid/view/View;)I

    move-result v0

    .line 547
    iget v1, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    if-eq v0, v1, :cond_1

    .line 3687
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/e;

    .line 4360
    iget v1, v1, Landroidx/viewpager2/widget/e;->b:I

    if-nez v1, :cond_1

    .line 549
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Landroidx/viewpager2/widget/b;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/b;->b(I)V

    :cond_1
    const/4 v0, 0x0

    .line 552
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Z

    return-void

    .line 538
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Design assumption violated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final a(IZ)V
    .locals 8

    .line 5482
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 617
    iget p2, p0, Landroidx/viewpager2/widget/ViewPager2;->o:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 618
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->o:I

    :cond_0
    return-void

    .line 622
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v2

    if-gtz v2, :cond_2

    return-void

    .line 626
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 627
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 629
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/e;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 633
    :cond_3
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_4

    return-void

    :cond_4
    int-to-double v0, v0

    .line 642
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    .line 643
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2$a;->e()V

    .line 645
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/e;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/e;->a()Z

    move-result v2

    if-nez v2, :cond_5

    .line 647
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/e;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/e;->b()D

    move-result-wide v0

    .line 652
    :cond_5
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/e;

    invoke-virtual {v2, p1, p2}, Landroidx/viewpager2/widget/e;->a(IZ)V

    if-nez p2, :cond_6

    .line 654
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    return-void

    :cond_6
    int-to-double v2, p1

    sub-double v4, v2, v0

    .line 659
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double p2, v4, v6

    if-lez p2, :cond_8

    .line 660
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    cmpl-double v4, v2, v0

    if-lez v4, :cond_7

    add-int/lit8 v0, p1, -0x3

    goto :goto_0

    :cond_7
    add-int/lit8 v0, p1, 0x3

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->b(I)V

    .line 662
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/viewpager2/widget/ViewPager2$j;

    invoke-direct {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2$j;-><init>(ILandroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 664
    :cond_8
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->d(I)V

    return-void
.end method

.method final b()I
    .locals 3

    .line 556
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 4573
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    if-nez v1, :cond_0

    .line 558
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    sub-int/2addr v1, v0

    return v1

    .line 559
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    goto :goto_0
.end method

.method final c()Z
    .locals 2

    .line 577
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final canScrollHorizontally(I)Z
    .locals 1

    .line 855
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result p1

    return p1
.end method

.method public final canScrollVertically(I)Z
    .locals 1

    .line 860
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    return p1
.end method

.method protected final dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 365
    instance-of v1, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-eqz v1, :cond_0

    .line 366
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    iget v0, v0, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 367
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v1

    .line 368
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 372
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 375
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->e()V

    return-void
.end method

.method public final getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 285
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 288
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 949
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 950
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$a;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 3

    .line 516
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result p1

    .line 517
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v0

    .line 521
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 522
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    iput p4, v1, Landroid/graphics/Rect;->right:I

    .line 523
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result p4

    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 524
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    iput p5, p2, Landroid/graphics/Rect;->bottom:I

    .line 526
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->l:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/graphics/Rect;

    const p4, 0x800033

    invoke-static {p4, p1, v0, p2, p3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 527
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object p4, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/graphics/Rect;

    iget p4, p4, Landroid/graphics/Rect;->right:I

    iget-object p5, p0, Landroidx/viewpager2/widget/ViewPager2;->m:Landroid/graphics/Rect;

    iget p5, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p5}, Landroidx/recyclerview/widget/RecyclerView;->layout(IIII)V

    .line 530
    iget-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->d:Z

    if-eqz p1, :cond_0

    .line 531
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->a()V

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 5

    .line 498
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->measureChild(Landroid/view/View;II)V

    .line 499
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    .line 500
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    .line 501
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getMeasuredState()I

    move-result v2

    .line 503
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 504
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 506
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 507
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 509
    invoke-static {v0, p1, v2}, Landroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v2, 0x10

    .line 510
    invoke-static {v1, p2, v0}, Landroidx/viewpager2/widget/ViewPager2;->resolveSizeAndState(III)I

    move-result p2

    .line 509
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 328
    instance-of v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    if-nez v0, :cond_0

    .line 329
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 333
    :cond_0
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    .line 334
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 335
    iget v0, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:I

    .line 336
    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroid/os/Parcelable;

    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 308
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 309
    new-instance v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;

    invoke-direct {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 311
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getId()I

    move-result v0

    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mRecyclerViewId:I

    .line 312
    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->o:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    :cond_0
    iput v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mCurrentItem:I

    .line 314
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->p:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 315
    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    .line 318
    instance-of v2, v0, Landroidx/viewpager2/adapter/c;

    if-eqz v2, :cond_2

    .line 319
    check-cast v0, Landroidx/viewpager2/adapter/c;

    invoke-interface {v0}, Landroidx/viewpager2/adapter/c;->c()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Landroidx/viewpager2/widget/ViewPager2$SavedState;->mAdapterState:Landroid/os/Parcelable;

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 2

    .line 488
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not support direct child views"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 956
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object p2, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p2, p1}, Landroidx/viewpager2/widget/ViewPager2$a;->b(I)Z

    move-result p1

    return p1

    .line 959
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 2

    .line 458
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    .line 459
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2$a;->b(Landroidx/recyclerview/widget/RecyclerView$a;)V

    if-eqz v0, :cond_0

    .line 2476
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$a;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V

    .line 461
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    const/4 v0, 0x0

    .line 462
    iput v0, p0, Landroidx/viewpager2/widget/ViewPager2;->c:I

    .line 463
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2;->e()V

    .line 464
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2$a;->a(Landroidx/recyclerview/widget/RecyclerView$a;)V

    if-eqz p1, :cond_1

    .line 3470
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->n:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$a;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$c;)V

    :cond_1
    return-void
.end method

.method public final setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    .line 591
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public final setCurrentItem(IZ)V
    .locals 1

    .line 4761
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->h:Landroidx/viewpager2/widget/c;

    .line 5051
    iget-object v0, v0, Landroidx/viewpager2/widget/c;->a:Landroidx/viewpager2/widget/e;

    .line 5383
    iget-boolean v0, v0, Landroidx/viewpager2/widget/e;->d:Z

    if-nez v0, :cond_0

    .line 607
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->a(IZ)V

    return-void

    .line 604
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot change current item when ViewPager2 is fake dragging"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setLayoutDirection(I)V
    .locals 0

    .line 943
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 944
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$a;->g()V

    return-void
.end method

.method public final setOffscreenPageLimit(I)V
    .locals 1

    if-gtz p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Offscreen page limit must be OFFSCREEN_PAGE_LIMIT_DEFAULT or a number > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 836
    :cond_1
    :goto_0
    iput p1, p0, Landroidx/viewpager2/widget/ViewPager2;->j:I

    .line 838
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public final setOrientation(I)V
    .locals 1

    .line 568
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 569
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$a;->d()V

    return-void
.end method

.method public final setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$g;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 901
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    if-nez v1, :cond_0

    .line 902
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object v1

    iput-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/recyclerview/widget/RecyclerView$f;

    const/4 v1, 0x1

    .line 903
    iput-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    .line 905
    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    goto :goto_0

    .line 907
    :cond_1
    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    if-eqz v1, :cond_2

    .line 908
    iget-object v1, p0, Landroidx/viewpager2/widget/ViewPager2;->f:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/recyclerview/widget/RecyclerView$f;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$f;)V

    .line 909
    iput-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->t:Landroidx/recyclerview/widget/RecyclerView$f;

    const/4 v0, 0x0

    .line 910
    iput-boolean v0, p0, Landroidx/viewpager2/widget/ViewPager2;->u:Z

    .line 916
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Landroidx/viewpager2/widget/d;

    .line 6041
    iget-object v0, v0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/ViewPager2$g;

    if-ne p1, v0, :cond_3

    return-void

    .line 919
    :cond_3
    iget-object v0, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Landroidx/viewpager2/widget/d;

    .line 6053
    iput-object p1, v0, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/ViewPager2$g;

    .line 6930
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Landroidx/viewpager2/widget/d;

    .line 7041
    iget-object p1, p1, Landroidx/viewpager2/widget/d;->a:Landroidx/viewpager2/widget/ViewPager2$g;

    if-eqz p1, :cond_4

    .line 6933
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->g:Landroidx/viewpager2/widget/e;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/e;->b()D

    move-result-wide v0

    double-to-int p1, v0

    int-to-double v2, p1

    sub-double/2addr v0, v2

    double-to-float v0, v0

    .line 6936
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 6937
    iget-object v2, p0, Landroidx/viewpager2/widget/ViewPager2;->s:Landroidx/viewpager2/widget/d;

    invoke-virtual {v2, p1, v0, v1}, Landroidx/viewpager2/widget/d;->a(IFI)V

    :cond_4
    return-void
.end method

.method public final setUserInputEnabled(Z)V
    .locals 0

    .line 792
    iput-boolean p1, p0, Landroidx/viewpager2/widget/ViewPager2;->i:Z

    .line 793
    iget-object p1, p0, Landroidx/viewpager2/widget/ViewPager2;->k:Landroidx/viewpager2/widget/ViewPager2$a;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2$a;->f()V

    return-void
.end method
