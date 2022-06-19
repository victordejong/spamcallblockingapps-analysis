.class public Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;
.super Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;"
    }
.end annotation


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager<",
            "TT;>;"
        }
    .end annotation
.end field

.field private k:Lcom/facebook/rebound/f;

.field private l:Lcom/facebook/rebound/f;

.field private m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

.field private n:D

.field private o:D

.field private p:Landroid/os/Bundle;

.field private q:I

.field private r:Z

.field private s:Lcom/facebook/rebound/i;

.field private t:Lcom/facebook/rebound/i;

.field private u:Z


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V
    .locals 3

    .line 79
    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->c:F

    .line 24
    iput v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->d:F

    const/high16 v0, -0x80000000

    .line 25
    iput v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->e:I

    .line 26
    iput v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->f:I

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->i:Z

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 34
    iput-wide v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->n:D

    .line 35
    iput-wide v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->o:D

    .line 37
    iput v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->q:I

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->r:Z

    .line 40
    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$1;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->s:Lcom/facebook/rebound/i;

    .line 62
    new-instance v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$2;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)V

    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->t:Lcom/facebook/rebound/i;

    .line 80
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    .line 81
    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->c:F

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->c:F

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;F)F
    .locals 0

    .line 16
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->d:F

    return p1
.end method

.method static synthetic b(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)I
    .locals 0

    .line 16
    iget p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->g:I

    return p0
.end method

.method static synthetic c(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Lcom/facebook/rebound/f;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->k:Lcom/facebook/rebound/f;

    return-object p0
.end method

.method private c(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Ljava/lang/Integer;
    .locals 4

    .line 368
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getChatHeads()Ljava/util/List;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    if-ne p1, v3, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->u:Z

    return p0
.end method

.method static synthetic e(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Z
    .locals 1

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->u:Z

    return v0
.end method

.method static synthetic f(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)Lcom/facebook/rebound/f;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->l:Lcom/facebook/rebound/f;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)F
    .locals 0

    .line 16
    iget p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->d:F

    return p0
.end method

.method private getBundle(I)Landroid/os/Bundle;
    .locals 6

    .line 344
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    if-eqz p1, :cond_0

    .line 345
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    .line 17153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, p1, Lcom/facebook/rebound/e$a;->a:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    .line 345
    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->g:I

    int-to-double v4, p1

    div-double/2addr v0, v4

    iput-wide v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->n:D

    .line 346
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    .line 18153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, p1, Lcom/facebook/rebound/e$a;->a:D

    mul-double v0, v0, v2

    .line 346
    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->h:I

    int-to-double v2, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->o:D

    .line 349
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->p:Landroid/os/Bundle;

    if-nez p1, :cond_1

    .line 351
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 353
    :cond_1
    iget-wide v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->n:D

    const-string v2, "hero_relative_x"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 354
    iget-wide v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->o:D

    const-string v2, "hero_relative_y"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object p1
.end method

.method private getBundleWithHero()Landroid/os/Bundle;
    .locals 1

    .line 340
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->getHeroIndex()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->getBundle(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->i:Z

    .line 254
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    if-eqz v0, :cond_1

    .line 255
    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->s:Lcom/facebook/rebound/i;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->b(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->t:Lcom/facebook/rebound/i;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->b(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->k:Lcom/facebook/rebound/f;

    if-eqz v0, :cond_2

    .line 12154
    iget-object v0, v0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/e;

    .line 265
    invoke-virtual {v1}, Lcom/facebook/rebound/e;->a()V

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->l:Lcom/facebook/rebound/f;

    if-eqz v0, :cond_3

    .line 13154
    iget-object v0, v0, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/e;

    .line 271
    invoke-virtual {v1}, Lcom/facebook/rebound/e;->a()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->k:Lcom/facebook/rebound/f;

    .line 276
    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->l:Lcom/facebook/rebound/f;

    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V
    .locals 6

    .line 233
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    const/4 v2, 0x0

    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->g:I

    iget v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->h:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Landroid/os/Bundle;IIZ)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;Z)V
    .locals 10

    .line 223
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v1

    .line 10153
    iget-object v1, v1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, v1, Lcom/facebook/rebound/e$a;->a:D

    .line 224
    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->d:F

    float-to-double v3, v3

    sub-double/2addr v1, v3

    const/4 v3, 0x1

    .line 11113
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 225
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 11153
    iget-object v0, v0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 12113
    invoke-virtual {p1, v0, v1, v3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 228
    :cond_0
    iget-object v5, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->getRetainBundle()Landroid/os/Bundle;

    move-result-object v6

    iget v7, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->g:I

    iget v8, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->h:I

    move-object v4, p0

    move v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Landroid/os/Bundle;IIZ)V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;ZIILcom/facebook/rebound/e;Lcom/facebook/rebound/e;Lcom/facebook/rebound/e;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    if-nez p2, :cond_4

    .line 409
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sget v8, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->b:I

    if-ge v7, v8, :cond_4

    iget-object v7, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    if-ne v1, v7, :cond_4

    .line 411
    invoke-static/range {p8 .. p8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sget v8, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->a:I

    if-ge v7, v8, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getState()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    move-result-object v7

    sget-object v8, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->FREE:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    if-ne v7, v8, :cond_0

    iget-boolean v7, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->i:Z

    if-eqz v7, :cond_0

    .line 20153
    iget-object v7, v5, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v7, v7, Lcom/facebook/rebound/e$a;->a:D

    double-to-int v7, v7

    .line 412
    invoke-virtual {p0, v7}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->setIdleStateX(I)V

    .line 21153
    iget-object v7, v6, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v7, v7, Lcom/facebook/rebound/e$a;->a:D

    double-to-int v7, v7

    .line 413
    invoke-virtual {p0, v7}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->setIdleStateY(I)V

    :cond_0
    const-wide/16 v7, 0x0

    if-ne v4, v5, :cond_2

    .line 22153
    iget-object v3, v5, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v3, v3, Lcom/facebook/rebound/e$a;->a:D

    .line 418
    iget-object v9, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v9}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v9

    int-to-double v9, v9

    add-double/2addr v9, v3

    iget v11, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->q:I

    int-to-double v11, v11

    add-double/2addr v9, v11

    int-to-double v11, v2

    cmpl-double v13, v9, v11

    if-lez v13, :cond_1

    .line 22217
    iget-object v9, v5, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v9, v9, Lcom/facebook/rebound/e$a;->b:D

    cmpl-double v11, v9, v7

    if-lez v11, :cond_1

    .line 421
    iget-object v3, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->q:I

    sub-int/2addr v2, v3

    .line 422
    sget-object v3, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v5, v3}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    int-to-double v2, v2

    .line 423
    invoke-virtual {v5, v2, v3}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    goto :goto_0

    :cond_1
    cmpg-double v2, v3, v7

    if-gez v2, :cond_4

    .line 23217
    iget-object v2, v5, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, v2, Lcom/facebook/rebound/e$a;->b:D

    cmpg-double v4, v2, v7

    if-gez v4, :cond_4

    .line 427
    sget-object v2, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v5, v2}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 428
    invoke-virtual {v5, v7, v8}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    goto :goto_0

    :cond_2
    if-ne v4, v6, :cond_4

    .line 24153
    iget-object v2, v6, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v9, v2, Lcom/facebook/rebound/e$a;->a:D

    .line 437
    iget-object v2, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v2

    int-to-double v11, v2

    add-double/2addr v11, v9

    int-to-double v13, v3

    cmpl-double v2, v11, v13

    if-lez v2, :cond_3

    .line 24217
    iget-object v2, v6, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v11, v2, Lcom/facebook/rebound/e$a;->b:D

    cmpl-double v2, v11, v7

    if-lez v2, :cond_3

    .line 441
    sget-object v2, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v6, v2}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 442
    iget-object v2, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadHeight()I

    move-result v2

    sub-int v2, v3, v2

    int-to-double v2, v2

    invoke-virtual {v6, v2, v3}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    goto :goto_0

    :cond_3
    cmpg-double v2, v9, v7

    if-gez v2, :cond_4

    .line 25217
    iget-object v2, v6, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, v2, Lcom/facebook/rebound/e$a;->b:D

    cmpg-double v4, v2, v7

    if-gez v4, :cond_4

    .line 447
    sget-object v2, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v6, v2}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 448
    invoke-virtual {v6, v7, v8}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    :cond_4
    :goto_0
    if-nez p2, :cond_11

    .line 457
    iget-object v2, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    if-ne v1, v2, :cond_11

    .line 463
    iget-object v2, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->c(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)[I

    move-result-object v2

    .line 464
    iget-object v3, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v3, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->d(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)[I

    move-result-object v3

    .line 465
    iget-object v4, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    .line 26153
    iget-object v7, v5, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v7, v7, Lcom/facebook/rebound/e$a;->a:D

    double-to-float v7, v7

    .line 465
    iget-object v8, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v8}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 27153
    iget-object v8, v6, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v8, v8, Lcom/facebook/rebound/e$a;->a:D

    double-to-float v8, v8

    .line 465
    iget-object v9, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v9}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-interface {v4, v7, v8}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->a(FF)D

    move-result-wide v7

    .line 466
    iget-object v4, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    .line 28153
    iget-object v9, v5, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v9, v9, Lcom/facebook/rebound/e$a;->a:D

    double-to-float v9, v9

    .line 466
    iget-object v10, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v10}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 29153
    iget-object v10, v6, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v10, v10, Lcom/facebook/rebound/e$a;->a:D

    double-to-float v10, v10

    .line 466
    iget-object v11, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v11}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-interface {v4, v9, v10}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->b(FF)D

    move-result-wide v9

    .line 468
    iget v4, v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->a:I

    int-to-double v11, v4

    const/4 v4, 0x1

    const/4 v13, 0x0

    cmpg-double v14, v7, v11

    if-gez v14, :cond_5

    .line 30101
    iget-object v7, v5, Lcom/facebook/rebound/e;->a:Lcom/facebook/rebound/g;

    .line 468
    sget-object v8, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->c:Lcom/facebook/rebound/g;

    if-ne v7, v8, :cond_5

    .line 31101
    iget-object v7, v6, Lcom/facebook/rebound/e;->a:Lcom/facebook/rebound/g;

    .line 468
    sget-object v8, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->c:Lcom/facebook/rebound/g;

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    .line 469
    :goto_1
    iget v8, v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->a:I

    int-to-double v11, v8

    cmpg-double v8, v9, v11

    if-gez v8, :cond_6

    .line 32101
    iget-object v8, v5, Lcom/facebook/rebound/e;->a:Lcom/facebook/rebound/g;

    .line 469
    sget-object v9, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->c:Lcom/facebook/rebound/g;

    if-ne v8, v9, :cond_6

    .line 33101
    iget-object v8, v6, Lcom/facebook/rebound/e;->a:Lcom/facebook/rebound/g;

    .line 469
    sget-object v9, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->c:Lcom/facebook/rebound/g;

    if-ne v8, v9, :cond_6

    const/4 v8, 0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    .line 470
    :goto_2
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/rebound/e;->b()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual/range {p7 .. p7}, Lcom/facebook/rebound/e;->b()Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v7, :cond_7

    if-eqz v8, :cond_9

    .line 472
    :cond_7
    sget-object v8, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v5, v8}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 473
    sget-object v8, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v6, v8}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    if-eqz v7, :cond_8

    .line 474
    sget-object v8, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->CAPTURED_LEFT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    goto :goto_3

    :cond_8
    sget-object v8, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->CAPTURED_RIGHT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    :goto_3
    invoke-virtual {v1, v8}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setState(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;)V

    .line 476
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getState()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    move-result-object v8

    sget-object v9, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->CAPTURED_LEFT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    if-eq v8, v9, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getState()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    move-result-object v8

    sget-object v9, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->CAPTURED_RIGHT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    if-ne v8, v9, :cond_c

    .line 34101
    :cond_a
    iget-object v8, v5, Lcom/facebook/rebound/e;->a:Lcom/facebook/rebound/g;

    .line 476
    sget-object v9, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->b:Lcom/facebook/rebound/g;

    if-eq v8, v9, :cond_c

    .line 477
    invoke-virtual/range {p6 .. p6}, Lcom/facebook/rebound/e;->c()Lcom/facebook/rebound/e;

    .line 478
    invoke-virtual/range {p7 .. p7}, Lcom/facebook/rebound/e;->c()Lcom/facebook/rebound/e;

    .line 479
    sget-object v8, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->b:Lcom/facebook/rebound/g;

    invoke-virtual {v5, v8}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 480
    sget-object v8, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->b:Lcom/facebook/rebound/g;

    invoke-virtual {v6, v8}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    if-eqz v7, :cond_b

    goto :goto_4

    :cond_b
    move-object v2, v3

    .line 482
    :goto_4
    aget v3, v2, v13

    int-to-double v7, v3

    invoke-virtual {v5, v7, v8}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 483
    aget v2, v2, v4

    int-to-double v2, v2

    invoke-virtual {v6, v2, v3}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 485
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getState()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->CAPTURED_LEFT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    if-eq v2, v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getState()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    move-result-object v2

    sget-object v3, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->CAPTURED_RIGHT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    if-ne v2, v3, :cond_f

    .line 486
    :cond_d
    invoke-virtual/range {p7 .. p7}, Lcom/facebook/rebound/e;->b()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 487
    iget-object v2, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a(Z)V

    .line 488
    iget-object v2, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a(Z)V

    .line 489
    iget-object v2, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-virtual/range {p1 .. p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getState()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    move-result-object v1

    sget-object v3, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->CAPTURED_LEFT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    if-ne v1, v3, :cond_e

    iget-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v1

    goto :goto_5

    :cond_e
    iget-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v1

    :goto_5
    invoke-interface {v2, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;)V

    .line 491
    :cond_f
    invoke-virtual/range {p7 .. p7}, Lcom/facebook/rebound/e;->b()Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->u:Z

    if-nez v1, :cond_10

    .line 492
    iget-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a()V

    .line 493
    iget-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a()V

    return-void

    .line 495
    :cond_10
    iget-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a(Z)V

    .line 496
    iget-object v1, v0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a(Z)V

    :cond_11
    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;)V
    .locals 0

    .line 243
    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->e()V

    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Landroid/os/Bundle;IIZ)V
    .locals 9

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->u:Z

    .line 104
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->k:Lcom/facebook/rebound/f;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->l:Lcom/facebook/rebound/f;

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->a()V

    .line 108
    :cond_1
    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v2, 0x258

    invoke-static {v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/util/DisplayMetrics;I)I

    move-result v1

    sput v1, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->b:I

    .line 109
    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/util/DisplayMetrics;I)I

    move-result v1

    sput v1, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->a:I

    .line 111
    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->p:Landroid/os/Bundle;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    const/4 v4, -0x1

    const-string v5, "hero_index"

    .line 113
    invoke-virtual {p2, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "hero_relative_x"

    .line 114
    invoke-virtual {p2, v5, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->n:D

    const-string v5, "hero_relative_y"

    .line 115
    invoke-virtual {p2, v5, v1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->o:D

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 117
    :goto_0
    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getChatHeads()Ljava/util/List;

    move-result-object p2

    if-ltz v4, :cond_3

    .line 118
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v0

    if-le v4, v5, :cond_4

    :cond_3
    const/4 v4, 0x0

    .line 122
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_f

    .line 123
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    iput-object v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 124
    invoke-virtual {v4, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setHero(Z)V

    .line 125
    invoke-static {}, Lcom/facebook/rebound/f;->a()Lcom/facebook/rebound/f;

    move-result-object v4

    iput-object v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->k:Lcom/facebook/rebound/f;

    .line 126
    invoke-static {}, Lcom/facebook/rebound/f;->a()Lcom/facebook/rebound/f;

    move-result-object v4

    iput-object v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->l:Lcom/facebook/rebound/f;

    const/4 v4, 0x0

    .line 127
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 128
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 129
    iget-object v6, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    if-eq v5, v6, :cond_5

    .line 130
    invoke-virtual {v5, v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setHero(Z)V

    .line 131
    iget-object v6, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->k:Lcom/facebook/rebound/f;

    new-instance v7, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$3;

    invoke-direct {v7, p0, v5}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$3;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V

    invoke-virtual {v6, v7}, Lcom/facebook/rebound/f;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/f;

    .line 139
    iget-object v6, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->k:Lcom/facebook/rebound/f;

    .line 1154
    iget-object v6, v6, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 139
    iget-object v7, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->k:Lcom/facebook/rebound/f;

    .line 2154
    iget-object v7, v7, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 139
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/rebound/e;

    .line 140
    invoke-virtual {v5}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v7

    .line 3153
    iget-object v7, v7, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v7, v7, Lcom/facebook/rebound/e$a;->a:D

    .line 4113
    invoke-virtual {v6, v7, v8, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 141
    iget-object v6, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->l:Lcom/facebook/rebound/f;

    new-instance v7, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$4;

    invoke-direct {v7, p0, v5}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$4;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V

    invoke-virtual {v6, v7}, Lcom/facebook/rebound/f;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/f;

    .line 147
    iget-object v6, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->l:Lcom/facebook/rebound/f;

    .line 4154
    iget-object v6, v6, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 147
    iget-object v7, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->l:Lcom/facebook/rebound/f;

    .line 5154
    iget-object v7, v7, Lcom/facebook/rebound/f;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 147
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/rebound/e;

    .line 148
    invoke-virtual {v5}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v7

    .line 6153
    iget-object v7, v7, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v7, v7, Lcom/facebook/rebound/e$a;->a:D

    .line 7113
    invoke-virtual {v6, v7, v8, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 149
    iget-object v6, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v6}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getChatHeadContainer()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->c(Landroid/view/View;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    :cond_6
    iget-wide v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->n:D

    cmpl-double v6, v4, v1

    if-nez v6, :cond_7

    .line 154
    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getInitialPosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->e:I

    goto :goto_2

    :cond_7
    int-to-double v6, p3

    mul-double v4, v4, v6

    double-to-int v4, v4

    .line 156
    iput v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->e:I

    .line 158
    :goto_2
    iget-wide v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->o:D

    cmpl-double v6, v4, v1

    if-nez v6, :cond_8

    .line 159
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getInitialPosition()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->b(I)I

    move-result v1

    iput v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->f:I

    goto :goto_3

    :cond_8
    int-to-double v1, p4

    mul-double v4, v4, v1

    double-to-int v1, v4

    .line 161
    iput v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->f:I

    .line 164
    :goto_3
    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->e:I

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    sub-int v4, p3, v1

    if-ge v4, v1, :cond_9

    .line 7215
    invoke-virtual {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getMeasuredWidth()I

    move-result v1

    sub-int v3, p3, v1

    .line 164
    :cond_9
    iput v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->e:I

    .line 166
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 167
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getChatHeadContainer()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-interface {v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->c(Landroid/view/View;)V

    .line 168
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->k:Lcom/facebook/rebound/f;

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$5;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$5;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)V

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/f;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/f;

    .line 170
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->l:Lcom/facebook/rebound/f;

    new-instance v2, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$6;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement$6;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;)V

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/f;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/f;

    .line 172
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->k:Lcom/facebook/rebound/f;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/facebook/rebound/f;->a(I)Lcom/facebook/rebound/f;

    .line 173
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->l:Lcom/facebook/rebound/f;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Lcom/facebook/rebound/f;->a(I)Lcom/facebook/rebound/f;

    .line 175
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->s:Lcom/facebook/rebound/i;

    invoke-virtual {p2, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    .line 176
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->t:Lcom/facebook/rebound/i;

    invoke-virtual {p2, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    .line 178
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    sget-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {p2, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 179
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    .line 8153
    iget-object p2, p2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, p2, Lcom/facebook/rebound/e$a;->a:D

    .line 179
    iget p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->e:I

    int-to-double v3, p2

    cmpl-double p2, v1, v3

    if-nez p2, :cond_a

    .line 181
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->e:I

    sub-int/2addr v1, v0

    int-to-double v1, v1

    invoke-virtual {p2, v1, v2, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    :cond_a
    if-eqz p5, :cond_b

    .line 185
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->e:I

    int-to-double v1, v1

    invoke-virtual {p2, v1, v2}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    goto :goto_4

    .line 187
    :cond_b
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->e:I

    int-to-double v1, v1

    invoke-virtual {p2, v1, v2, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 190
    :goto_4
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    sget-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {p2, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 191
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    .line 9153
    iget-object p2, p2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v1, p2, Lcom/facebook/rebound/e$a;->a:D

    .line 191
    iget p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->f:I

    int-to-double v3, p2

    cmpl-double p2, v1, v3

    if-nez p2, :cond_c

    .line 193
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->f:I

    sub-int/2addr v1, v0

    int-to-double v1, v1

    invoke-virtual {p2, v1, v2, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    :cond_c
    if-eqz p5, :cond_d

    .line 196
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    iget p5, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->f:I

    int-to-double v1, p5

    invoke-virtual {p2, v1, v2}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    goto :goto_5

    .line 198
    :cond_d
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p2

    iget p5, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->f:I

    int-to-double v1, p5

    invoke-virtual {p2, v1, v2, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 204
    :cond_e
    :goto_5
    iput p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->g:I

    .line 205
    iput p4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->h:I

    .line 206
    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setEnabled(Z)V

    .line 207
    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->setEnabled(Z)V

    .line 209
    :cond_f
    iput-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->i:Z

    return-void
.end method

.method public final a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;IIZ)Z
    .locals 8

    if-nez p4, :cond_0

    .line 284
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p2, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->b(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Z

    move-result p1

    return p1

    .line 13295
    :cond_0
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p4

    .line 13296
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 13297
    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getState()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    move-result-object v1

    sget-object v2, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->FREE:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_8

    .line 13298
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/util/DisplayMetrics;I)I

    move-result v1

    const/4 v2, -0x1

    if-ge p1, v1, :cond_2

    .line 14153
    iget-object p1, p4, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide p1, p1, Lcom/facebook/rebound/e$a;->a:D

    .line 13299
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-double/2addr p1, v4

    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->q:I

    int-to-double v4, v1

    add-double/2addr p1, v4

    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->g:I

    int-to-double v4, v1

    div-double/2addr v4, v6

    cmpg-double v1, p1, v4

    if-gez v1, :cond_1

    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :cond_2
    :goto_0
    if-gez p2, :cond_3

    .line 15153
    iget-object p1, p4, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v4, p1, Lcom/facebook/rebound/e$a;->a:D

    neg-double v4, v4

    .line 13306
    sget-object p1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->c:Lcom/facebook/rebound/g;

    iget-wide v6, p1, Lcom/facebook/rebound/g;->a:D

    mul-double v4, v4, v6

    double-to-int p1, v4

    if-le p2, p1, :cond_4

    goto :goto_1

    :cond_3
    if-lez p2, :cond_4

    .line 13311
    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->g:I

    int-to-double v4, p1

    .line 16153
    iget-object p1, p4, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v6, p1, Lcom/facebook/rebound/e$a;->a:D

    sub-double/2addr v4, v6

    .line 13311
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result p1

    int-to-double v6, p1

    sub-double/2addr v4, v6

    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->q:I

    int-to-double v6, p1

    sub-double/2addr v4, v6

    sget-object p1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->c:Lcom/facebook/rebound/g;

    iget-wide v6, p1, Lcom/facebook/rebound/g;->a:D

    mul-double v4, v4, v6

    double-to-int p1, v4

    if-le p1, p2, :cond_4

    :goto_1
    move p2, p1

    .line 13317
    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-gt p1, v3, :cond_6

    if-gez p2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    move v2, p2

    :goto_2
    if-nez p3, :cond_7

    const/4 p3, 0x1

    :cond_7
    int-to-double p1, v2

    .line 13329
    invoke-virtual {p4, p1, p2}, Lcom/facebook/rebound/e;->c(D)Lcom/facebook/rebound/e;

    int-to-double p1, p3

    .line 13330
    invoke-virtual {v0, p1, p2}, Lcom/facebook/rebound/e;->c(D)Lcom/facebook/rebound/e;

    goto :goto_4

    .line 13332
    :cond_8
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a(Z)V

    .line 13333
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a(Z)V

    .line 13334
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getState()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    move-result-object p1

    sget-object p3, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->CAPTURED_LEFT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    if-ne p1, p3, :cond_9

    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    :goto_3
    invoke-interface {p2, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;)V

    .line 289
    :goto_4
    iput-boolean v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->u:Z

    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V
    .locals 6

    .line 505
    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->c(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->getBundle(I)Landroid/os/Bundle;

    move-result-object v2

    .line 506
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v3

    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxHeight()I

    move-result v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Landroid/os/Bundle;IIZ)V

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->r:Z

    return v0
.end method

.method public final c()V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getChatHeads()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    .line 397
    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->isSticky()Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getKey()Ljava/io/Serializable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->a(Ljava/io/Serializable;)Z

    :cond_1
    return-void
.end method

.method public getHeroIndex()Ljava/lang/Integer;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->m:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;

    invoke-direct {p0, v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->c(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRetainBundle()Landroid/os/Bundle;
    .locals 1

    .line 386
    invoke-direct {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->getBundleWithHero()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public setIdleStateX(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->e:I

    return-void
.end method

.method public setIdleStateY(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/MinimizedArrangement;->f:I

    return-void
.end method
