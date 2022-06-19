.class public abstract Lcom/callapp/contacts/widget/BaseItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/BaseItemView$CheckableType;
    }
.end annotation


# static fields
.field protected static e:Ljava/lang/Boolean;


# instance fields
.field protected a:F

.field protected final b:I

.field protected c:I

.field protected d:Landroid/view/GestureDetector;

.field protected f:Z

.field protected g:Z

.field protected h:Z

.field protected i:Lcom/callapp/contacts/util/LazyInflatedViews;

.field protected j:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnLongClickListener;

.field private n:Landroid/view/View$OnLongClickListener;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/FrameLayout;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Lcom/callapp/contacts/widget/ProfilePictureView;

.field private v:Landroid/view/View$OnClickListener;

.field private w:Landroid/view/View$OnLongClickListener;

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->t:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/callapp/contacts/widget/BaseItemView;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/widget/BaseItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/widget/BaseItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x1f4

    .line 47
    iput p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->b:I

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->k:Landroid/view/View$OnClickListener;

    .line 52
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->l:Landroid/view/View$OnClickListener;

    .line 53
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->m:Landroid/view/View$OnLongClickListener;

    .line 54
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->n:Landroid/view/View$OnLongClickListener;

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->f:Z

    .line 66
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->g:Z

    .line 67
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->h:Z

    .line 69
    sget-object p1, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;->IMAGE_FLIP:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->j:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    .line 481
    new-instance p1, Lcom/callapp/contacts/widget/BaseItemView$4;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/BaseItemView$4;-><init>(Lcom/callapp/contacts/widget/BaseItemView;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->v:Landroid/view/View$OnClickListener;

    .line 491
    new-instance p1, Lcom/callapp/contacts/widget/BaseItemView$5;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/BaseItemView$5;-><init>(Lcom/callapp/contacts/widget/BaseItemView;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->w:Landroid/view/View$OnLongClickListener;

    .line 503
    new-instance p1, Lcom/callapp/contacts/widget/BaseItemView$6;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/BaseItemView$6;-><init>(Lcom/callapp/contacts/widget/BaseItemView;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->x:Landroid/view/View$OnClickListener;

    .line 513
    new-instance p1, Lcom/callapp/contacts/widget/BaseItemView$7;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/BaseItemView$7;-><init>(Lcom/callapp/contacts/widget/BaseItemView;)V

    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->y:Landroid/view/View$OnLongClickListener;

    .line 90
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/BaseItemView;->a()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/callapp/contacts/widget/BaseItemView;->s:Landroid/view/View;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/callapp/contacts/widget/BaseItemView;->r:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/callapp/contacts/widget/BaseItemView;->o:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/callapp/contacts/widget/BaseItemView;->p:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/widget/BaseItemView;)V
    .locals 4

    .line 2450
    sget-object v0, Lcom/callapp/contacts/widget/BaseItemView;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2455
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->p:Landroid/widget/LinearLayout;

    const v1, 0x7f08051c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2456
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 2457
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->p:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 2459
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/BaseItemView$3;

    invoke-direct {v1, p0}, Lcom/callapp/contacts/widget/BaseItemView$3;-><init>(Lcom/callapp/contacts/widget/BaseItemView;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/callapp/contacts/widget/BaseItemView;->l:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/callapp/contacts/widget/BaseItemView;->m:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic h(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/callapp/contacts/widget/BaseItemView;->k:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic i(Lcom/callapp/contacts/widget/BaseItemView;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/callapp/contacts/widget/BaseItemView;->n:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private setupSwitchButton(Landroid/view/View;)V
    .locals 9

    const v0, 0x7f0a08ca

    .line 393
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    .line 394
    new-instance v0, Landroid/content/res/ColorStateList;

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    const v6, -0x10100a0

    aput v6, v4, v5

    aput-object v4, v2, v5

    new-array v4, v3, [I

    const v7, 0x10100a0

    aput v7, v4, v5

    aput-object v4, v2, v3

    new-array v4, v1, [I

    const v8, 0x7f0600f2

    .line 400
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    aput v8, v4, v5

    const v8, 0x7f060088

    .line 401
    invoke-static {v8}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v8

    aput v8, v4, v3

    invoke-direct {v0, v2, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 405
    new-instance v2, Landroid/content/res/ColorStateList;

    new-array v4, v1, [[I

    new-array v8, v3, [I

    aput v6, v8, v5

    aput-object v8, v4, v5

    new-array v6, v3, [I

    aput v7, v6, v5

    aput-object v6, v4, v3

    new-array v1, v1, [I

    const v6, 0x7f0600f3

    .line 411
    invoke-static {v6}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v6

    aput v6, v1, v5

    const v5, 0x7f06008a

    .line 412
    invoke-static {v5}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v5

    aput v5, v1, v3

    invoke-direct {v2, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 416
    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/SwitchCompat;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    .line 417
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    .line 95
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/BaseItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d02db

    invoke-static {v0, v1, p0}, Lcom/callapp/contacts/widget/BaseItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a02a2

    .line 96
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02a3

    .line 97
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02a6

    .line 98
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->q:Landroid/widget/FrameLayout;

    .line 99
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/BaseItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/BaseItemView;->getLayoutResId()I

    move-result v1

    iget-object v2, p0, Lcom/callapp/contacts/widget/BaseItemView;->q:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 101
    new-instance v0, Lcom/callapp/contacts/util/LazyInflatedViews;

    invoke-direct {v0}, Lcom/callapp/contacts/util/LazyInflatedViews;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->i:Lcom/callapp/contacts/util/LazyInflatedViews;

    .line 102
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/BaseItemView;->b()V

    const v0, 0x7f060088

    .line 103
    invoke-static {v0}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->c:I

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->setLongClickable(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/BaseItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070374

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->a:F

    .line 107
    iget-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->p:Landroid/widget/LinearLayout;

    const v2, 0x7f060026

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 108
    iget-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->p:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/callapp/contacts/widget/BaseItemView;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->p:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/callapp/contacts/widget/BaseItemView;->y:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v1, 0x7f0a056f

    .line 111
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/BaseItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->r:Landroid/view/View;

    const v1, 0x7f0a0763

    .line 112
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/BaseItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->s:Landroid/view/View;

    const v1, 0x7f0a0201

    .line 113
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/BaseItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->t:Landroid/view/View;

    const v1, 0x7f0a06ed

    .line 115
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/BaseItemView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/ProfilePictureView;

    iput-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    .line 116
    iget-object v2, p0, Lcom/callapp/contacts/widget/BaseItemView;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    iget-object v2, p0, Lcom/callapp/contacts/widget/BaseItemView;->w:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/widget/ProfilePictureView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 119
    iget-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->r:Landroid/view/View;

    const v2, 0x7f0805c0

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->s:Landroid/view/View;

    const v2, 0x7f0805c2

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 122
    sget-object v1, Lcom/callapp/contacts/widget/BaseItemView;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->p:Landroid/widget/LinearLayout;

    const v1, 0x7f0805a5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void

    :cond_0
    const v1, 0x7f0a0193

    .line 125
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0600f3

    .line 126
    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const v2, 0x7f0a083f

    .line 128
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/callapp/contacts/widget/BaseItemView;->c:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v2, 0x7f0a01a6

    .line 129
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    iget v4, p0, Lcom/callapp/contacts/widget/BaseItemView;->c:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const v2, 0x7f0a0a86

    .line 131
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0805dc

    invoke-static {v3}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0a059e

    .line 132
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0805d9

    invoke-static {v2}, Lcom/callapp/contacts/util/ThemeUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1161
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/BaseItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/callapp/contacts/widget/BaseItemView$1;

    sget-object v4, Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;->LOW:Lcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;

    invoke-direct {v3, p0, v0, v4}, Lcom/callapp/contacts/widget/BaseItemView$1;-><init>(Lcom/callapp/contacts/widget/BaseItemView;ZLcom/callapp/contacts/widget/SwipeGestureListener$Sensitivity;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->d:Landroid/view/GestureDetector;

    return-void
.end method

.method protected final a(I)V
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->i:Lcom/callapp/contacts/util/LazyInflatedViews;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/LazyInflatedViews;->a(I)V

    return-void
.end method

.method protected b()V
    .locals 1

    const v0, 0x7f0a01a2

    .line 138
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->a(I)V

    const v0, 0x7f0a008a

    .line 139
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->a(I)V

    const v0, 0x7f0a008b

    .line 140
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->a(I)V

    const v0, 0x7f0a0762

    .line 141
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->a(I)V

    const v0, 0x7f0a08cc

    .line 142
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->a(I)V

    const v0, 0x7f0a075b

    .line 143
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->a(I)V

    const v0, 0x7f0a0201

    .line 144
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->a(I)V

    const v0, 0x7f0a0193

    .line 145
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->a(I)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 280
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/BaseItemView;->isSwipeable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 286
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v3, p0, Lcom/callapp/contacts/widget/BaseItemView;->a:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    return v1

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->d:Landroid/view/GestureDetector;

    if-eqz v0, :cond_3

    .line 291
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 294
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->g:Z

    if-eqz v0, :cond_2

    .line 296
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 297
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->getScreenWidth(I)I

    .line 307
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 1321
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->o:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    new-array v3, v3, [F

    int-to-float p1, p1

    aput p1, v3, v1

    const/4 p1, 0x0

    aput p1, v3, v2

    const-string p1, "translationX"

    invoke-static {v0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    .line 1322
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1323
    new-instance v0, Lcom/callapp/contacts/widget/BaseItemView$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/BaseItemView$2;-><init>(Lcom/callapp/contacts/widget/BaseItemView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1344
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1345
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return v2

    .line 312
    :cond_2
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->g:Z

    if-eqz v0, :cond_3

    return v2

    .line 317
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected abstract getLayoutResId()I
.end method

.method protected getLazyView(I)Landroid/view/View;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->i:Lcom/callapp/contacts/util/LazyInflatedViews;

    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/util/LazyInflatedViews;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected abstract isSwipeable()Z
.end method

.method protected isViewInflated(I)Z
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->i:Lcom/callapp/contacts/util/LazyInflatedViews;

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/LazyInflatedViews;->isViewInflated(I)Z

    move-result p1

    return p1
.end method

.method public setActionButton1(Landroid/view/View$OnClickListener;)V
    .locals 2

    const v0, 0x7f0a008a

    if-eqz p1, :cond_0

    .line 554
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 555
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 557
    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->isViewInflated(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 558
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setActionButton2(Landroid/view/View$OnClickListener;)V
    .locals 2

    const v0, 0x7f0a008b

    if-eqz p1, :cond_0

    .line 566
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 569
    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->isViewInflated(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 570
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setActionRadioButton(Landroid/view/View$OnClickListener;)V
    .locals 3

    const v0, 0x7f0a0726

    const v1, 0x7f0a0762

    if-eqz p1, :cond_0

    .line 470
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 471
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 472
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 474
    :cond_0
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/BaseItemView;->isViewInflated(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 475
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setCallButton(Landroid/view/View$OnClickListener;)V
    .locals 3

    const v0, 0x7f0a01a2

    if-eqz p1, :cond_0

    .line 537
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 539
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->c:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    .line 541
    :cond_0
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->isViewInflated(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 542
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setCheckable(Z)V
    .locals 4

    .line 353
    sget-object v0, Lcom/callapp/contacts/widget/BaseItemView$8;->a:[I

    iget-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->j:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0a08cc

    if-eqz p1, :cond_1

    .line 380
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    .line 381
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 382
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/BaseItemView;->setupSwitchButton(Landroid/view/View;)V

    return-void

    .line 384
    :cond_1
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->isViewInflated(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 385
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0a075b

    if-eqz p1, :cond_3

    .line 368
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 371
    :cond_3
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->isViewInflated(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 372
    invoke-virtual {p0, v0}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    if-eqz p1, :cond_6

    .line 356
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->t:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewStub;

    if-eqz v0, :cond_5

    .line 357
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->t:Landroid/view/View;

    .line 359
    :cond_5
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->t:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 361
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->t:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewStub;

    if-nez v0, :cond_7

    .line 362
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setCheckableType(Lcom/callapp/contacts/widget/BaseItemView$CheckableType;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->j:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2

    .line 421
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->h:Z

    if-eq v0, p1, :cond_4

    .line 422
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->h:Z

    .line 423
    sget-object v0, Lcom/callapp/contacts/widget/BaseItemView$8;->a:[I

    iget-object v1, p0, Lcom/callapp/contacts/widget/BaseItemView;->j:Lcom/callapp/contacts/widget/BaseItemView$CheckableType;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/BaseItemView$CheckableType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p2, 0x4

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x7f0a08cc

    .line 434
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a08ca

    .line 435
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Checkable;

    invoke-interface {p2, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_0

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->u:Lcom/callapp/contacts/widget/ProfilePictureView;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/widget/ProfilePictureView;->b(ZZ)V

    return-void

    :cond_2
    const p2, 0x7f0a075b

    .line 428
    invoke-virtual {p0, p2}, Lcom/callapp/contacts/widget/BaseItemView;->getLazyView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Checkable;

    invoke-interface {p2, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void

    .line 425
    :cond_3
    iget-object p2, p0, Lcom/callapp/contacts/widget/BaseItemView;->t:Landroid/view/View;

    check-cast p2, Landroid/widget/Checkable;

    invoke-interface {p2, p1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->o:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/ViewUtils;->g(Landroid/view/View;I)V

    return-void
.end method

.method protected final setLazyDrawable$4868d30e(II)V
    .locals 3

    .line 617
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->i:Lcom/callapp/contacts/util/LazyInflatedViews;

    const v1, 0x7f0a075e

    if-nez p1, :cond_0

    .line 2078
    invoke-virtual {v0, v1}, Lcom/callapp/contacts/util/LazyInflatedViews;->isViewInflated(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2083
    :cond_0
    invoke-virtual {v0, p0, v1}, Lcom/callapp/contacts/util/LazyInflatedViews;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2084
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {v0, p1, v1}, Lcom/callapp/contacts/util/ImageUtils;->a(Landroid/widget/ImageView;ILandroid/graphics/ColorFilter;)V

    if-nez p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2085
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected setLazyTag(ILjava/lang/Object;)V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->i:Lcom/callapp/contacts/util/LazyInflatedViews;

    invoke-virtual {v0, p1, p2}, Lcom/callapp/contacts/util/LazyInflatedViews;->setLazyTag(ILjava/lang/Object;)V

    return-void
.end method

.method protected setLazyText(ILjava/lang/CharSequence;)V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->i:Lcom/callapp/contacts/util/LazyInflatedViews;

    .line 2057
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/LazyInflatedViews;->isViewInflated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2062
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/util/LazyInflatedViews;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2063
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2064
    invoke-static {p2}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected setLazyTextColor(II)V
    .locals 2

    .line 609
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->i:Lcom/callapp/contacts/util/LazyInflatedViews;

    if-nez p2, :cond_0

    .line 2068
    invoke-virtual {v0, p1}, Lcom/callapp/contacts/util/LazyInflatedViews;->isViewInflated(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2073
    :cond_0
    invoke-virtual {v0, p0, p1}, Lcom/callapp/contacts/util/LazyInflatedViews;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 2074
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->k:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->n:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnProfileClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/callapp/contacts/widget/BaseItemView;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .line 578
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 580
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->q:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 581
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 582
    iget-object v0, p0, Lcom/callapp/contacts/widget/BaseItemView;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a01a2

    .line 584
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/BaseItemView;->setLazyTag(ILjava/lang/Object;)V

    const v0, 0x7f0a008a

    .line 585
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/BaseItemView;->setLazyTag(ILjava/lang/Object;)V

    const v0, 0x7f0a008b

    .line 586
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/BaseItemView;->setLazyTag(ILjava/lang/Object;)V

    const v0, 0x7f0a075b

    .line 587
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/BaseItemView;->setLazyTag(ILjava/lang/Object;)V

    const v0, 0x7f0a0762

    .line 588
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/BaseItemView;->setLazyTag(ILjava/lang/Object;)V

    const v0, 0x7f0a08cc

    .line 589
    invoke-virtual {p0, v0, p1}, Lcom/callapp/contacts/widget/BaseItemView;->setLazyTag(ILjava/lang/Object;)V

    return-void
.end method
