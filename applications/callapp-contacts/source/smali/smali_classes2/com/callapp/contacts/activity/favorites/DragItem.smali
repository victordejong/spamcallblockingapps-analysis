.class public Lcom/callapp/contacts/activity/favorites/DragItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/view/View;

.field c:F

.field d:F

.field e:F

.field f:F

.field g:F

.field h:F

.field i:Z

.field private j:F

.field private k:F

.field private l:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->l:Z

    .line 44
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->i:Z

    .line 47
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    .line 48
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItem;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->l:Z

    .line 44
    iput-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->i:Z

    const/4 v0, 0x0

    .line 52
    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    .line 53
    invoke-virtual {p0}, Lcom/callapp/contacts/activity/favorites/DragItem;->a()V

    return-void
.end method

.method private b()V
    .locals 3

    .line 206
    iget-boolean v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->l:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    iget v1, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->c:F

    iget v2, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->j:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->g:F

    add-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    iget v1, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->d:F

    iget v2, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->k:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->h:F

    add-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 211
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->b:Landroid/view/View;

    return-void
.end method

.method final a(FF)V
    .locals 1

    .line 194
    iget v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->e:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->c:F

    .line 195
    iget p1, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->f:F

    add-float/2addr p2, p1

    iput p2, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->d:F

    .line 196
    invoke-direct {p0}, Lcom/callapp/contacts/activity/favorites/DragItem;->b()V

    return-void
.end method

.method getDragItemView()Landroid/view/View;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->a:Landroid/view/View;

    return-object v0
.end method

.method getX()F
    .locals 1

    .line 186
    iget v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->c:F

    return v0
.end method

.method getY()F
    .locals 1

    .line 190
    iget v0, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->d:F

    return v0
.end method

.method setAnimationDY(F)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->h:F

    .line 170
    invoke-direct {p0}, Lcom/callapp/contacts/activity/favorites/DragItem;->b()V

    return-void
.end method

.method setAnimationDx(F)V
    .locals 0

    .line 163
    iput p1, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->g:F

    .line 164
    invoke-direct {p0}, Lcom/callapp/contacts/activity/favorites/DragItem;->b()V

    return-void
.end method

.method setCanDragHorizontally(Z)V
    .locals 0

    .line 81
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->l:Z

    return-void
.end method

.method protected setSnapToTouch(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/callapp/contacts/activity/favorites/DragItem;->i:Z

    return-void
.end method
