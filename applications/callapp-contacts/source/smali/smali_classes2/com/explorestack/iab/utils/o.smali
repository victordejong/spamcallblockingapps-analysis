.class public Lcom/explorestack/iab/utils/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/utils/o$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "o"


# instance fields
.field public final b:Landroid/view/View;

.field public c:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field public d:Landroid/view/View$OnAttachStateChangeListener;

.field public e:Z

.field public f:Z

.field public final g:Ljava/lang/Runnable;

.field private final h:Landroid/graphics/Rect;

.field private final i:Landroid/graphics/Rect;

.field private final j:Landroid/content/Context;

.field private final k:Lcom/explorestack/iab/utils/o$a;

.field private final l:F

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/o$a;)V
    .locals 1

    const v0, 0x3dcccccd    # 0.1f

    .line 47
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/explorestack/iab/utils/o;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/o$a;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/o$a;F)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/utils/o;->h:Landroid/graphics/Rect;

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/utils/o;->i:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/o;->e:Z

    .line 33
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/o;->m:Z

    .line 34
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/o;->f:Z

    .line 36
    new-instance v0, Lcom/explorestack/iab/utils/o$1;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/utils/o$1;-><init>(Lcom/explorestack/iab/utils/o;)V

    iput-object v0, p0, Lcom/explorestack/iab/utils/o;->g:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/explorestack/iab/utils/o;->j:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/explorestack/iab/utils/o;->b:Landroid/view/View;

    .line 56
    iput-object p3, p0, Lcom/explorestack/iab/utils/o;->k:Lcom/explorestack/iab/utils/o$a;

    .line 57
    iput p4, p0, Lcom/explorestack/iab/utils/o;->l:F

    return-void
.end method

.method static synthetic a(Lcom/explorestack/iab/utils/o;)V
    .locals 0

    .line 13
    invoke-virtual {p0}, Lcom/explorestack/iab/utils/o;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .line 166
    iget-boolean v0, p0, Lcom/explorestack/iab/utils/o;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/o;->m:Z

    .line 168
    sget-object v0, Lcom/explorestack/iab/utils/o;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    .line 170
    invoke-direct {p0, p1}, Lcom/explorestack/iab/utils/o;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/explorestack/iab/utils/o;->e:Z

    if-eq v0, p1, :cond_0

    .line 175
    iput-boolean p1, p0, Lcom/explorestack/iab/utils/o;->e:Z

    .line 176
    iget-object p1, p0, Lcom/explorestack/iab/utils/o;->k:Lcom/explorestack/iab/utils/o$a;

    invoke-interface {p1}, Lcom/explorestack/iab/utils/o$a;->a()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/o;->m:Z

    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, v0}, Lcom/explorestack/iab/utils/o;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/explorestack/iab/utils/o;)Z
    .locals 1

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/o;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/explorestack/iab/utils/o;)V
    .locals 1

    .line 1100
    iget-boolean v0, p0, Lcom/explorestack/iab/utils/o;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1103
    iput-boolean v0, p0, Lcom/explorestack/iab/utils/o;->f:Z

    .line 1104
    iget-object p0, p0, Lcom/explorestack/iab/utils/o;->g:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/explorestack/iab/utils/Utils;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/explorestack/iab/utils/o;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Visibility != View.VISIBLE"

    .line 110
    invoke-direct {p0, v0}, Lcom/explorestack/iab/utils/o;->a(Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/explorestack/iab/utils/o;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "No parent"

    .line 114
    invoke-direct {p0, v0}, Lcom/explorestack/iab/utils/o;->a(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/explorestack/iab/utils/o;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/explorestack/iab/utils/o;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Can\'t get global visible rect"

    .line 119
    invoke-direct {p0, v0}, Lcom/explorestack/iab/utils/o;->a(Ljava/lang/String;)V

    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/explorestack/iab/utils/o;->b:Landroid/view/View;

    invoke-static {v0}, Lcom/explorestack/iab/utils/Utils;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "View is transparent (alpha = 0)"

    .line 124
    invoke-direct {p0, v0}, Lcom/explorestack/iab/utils/o;->a(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/explorestack/iab/utils/o;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/explorestack/iab/utils/o;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int v0, v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_4

    const-string v0, "Ad View width or height is zero, show wasn\'t tracked"

    .line 130
    invoke-direct {p0, v0}, Lcom/explorestack/iab/utils/o;->a(Ljava/lang/String;)V

    return-void

    .line 134
    :cond_4
    iget-object v1, p0, Lcom/explorestack/iab/utils/o;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/explorestack/iab/utils/o;->h:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int v1, v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 136
    iget v0, p0, Lcom/explorestack/iab/utils/o;->l:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ad View is not completely visible ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "), show wasn\'t tracked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/explorestack/iab/utils/o;->a(Ljava/lang/String;)V

    return-void

    .line 144
    :cond_5
    iget-object v0, p0, Lcom/explorestack/iab/utils/o;->j:Landroid/content/Context;

    iget-object v1, p0, Lcom/explorestack/iab/utils/o;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/f;->b(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "Can\'t obtain root view"

    .line 146
    invoke-direct {p0, v0}, Lcom/explorestack/iab/utils/o;->a(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_6
    iget-object v1, p0, Lcom/explorestack/iab/utils/o;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 150
    iget-object v0, p0, Lcom/explorestack/iab/utils/o;->h:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/explorestack/iab/utils/o;->i:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Ad View is out of current window, show wasn\'t tracked"

    .line 151
    invoke-direct {p0, v0}, Lcom/explorestack/iab/utils/o;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/iab/utils/o;->b()V

    return-void
.end method
