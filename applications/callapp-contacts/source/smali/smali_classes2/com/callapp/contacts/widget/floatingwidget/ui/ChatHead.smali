.class public Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/rebound/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/io/Serializable;",
        ">",
        "Landroid/widget/RelativeLayout;",
        "Lcom/facebook/rebound/i;"
    }
.end annotation


# instance fields
.field final a:I

.field public b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

.field protected c:F

.field protected d:F

.field public e:Lcom/facebook/rebound/e;

.field private final f:I

.field private final g:F

.field private h:Lcom/facebook/rebound/k;

.field private i:Z

.field private j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

.field private k:Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private l:F

.field private m:F

.field private n:Landroid/view/VelocityTracker;

.field private o:Z

.field private p:Lcom/facebook/rebound/e;

.field private q:Lcom/facebook/rebound/e;

.field private r:Landroid/os/Bundle;

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x78

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->a:I

    .line 24
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->f:I

    .line 25
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->g:F

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->i:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 31
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->l:F

    .line 32
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->m:F

    .line 45
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This constructor cannot be used"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x78

    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->a:I

    .line 24
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->f:I

    .line 25
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->g:F

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->i:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 31
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->l:F

    .line 32
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->m:F

    .line 50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This constructor cannot be used"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x78

    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->a:I

    .line 24
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->f:I

    .line 25
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->g:F

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->i:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 31
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->l:F

    .line 32
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->m:F

    .line 55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "This constructor cannot be used"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;Lcom/facebook/rebound/k;Landroid/content/Context;Z)V
    .locals 1

    .line 59
    invoke-direct {p0, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p3

    const/16 v0, 0x78

    invoke-static {p3, v0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->a:I

    .line 24
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->f:I

    .line 25
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getContext()Landroid/content/Context;

    move-result-object p3

    const/16 v0, 0xa

    invoke-static {p3, v0}, Lcom/callapp/contacts/widget/floatingwidget/ChatHeadUtils;->a(Landroid/content/Context;I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->g:F

    const/4 p3, 0x0

    .line 28
    iput-boolean p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->i:Z

    const/high16 p3, -0x40800000    # -1.0f

    .line 31
    iput p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->l:F

    .line 32
    iput p3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->m:F

    .line 60
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    .line 61
    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->h:Lcom/facebook/rebound/k;

    .line 62
    iput-boolean p4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->i:Z

    .line 1095
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$1;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$1;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V

    .line 1102
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->h:Lcom/facebook/rebound/k;

    invoke-virtual {p2}, Lcom/facebook/rebound/k;->a()Lcom/facebook/rebound/e;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->e:Lcom/facebook/rebound/e;

    .line 1103
    invoke-virtual {p2, p1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    .line 1104
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->e:Lcom/facebook/rebound/e;

    invoke-virtual {p1, p0}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    .line 1106
    new-instance p1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$2;

    invoke-direct {p1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$2;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V

    .line 1113
    iget-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->h:Lcom/facebook/rebound/k;

    invoke-virtual {p2}, Lcom/facebook/rebound/k;->a()Lcom/facebook/rebound/e;

    move-result-object p2

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->q:Lcom/facebook/rebound/e;

    .line 1114
    invoke-virtual {p2, p1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    .line 1115
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->q:Lcom/facebook/rebound/e;

    invoke-virtual {p1, p0}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    .line 1117
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->h:Lcom/facebook/rebound/k;

    invoke-virtual {p1}, Lcom/facebook/rebound/k;->a()Lcom/facebook/rebound/e;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->p:Lcom/facebook/rebound/e;

    .line 1118
    new-instance p2, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$3;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$3;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)V

    invoke-virtual {p1, p2}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/i;)Lcom/facebook/rebound/e;

    .line 1127
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->p:Lcom/facebook/rebound/e;

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, p2, p3}, Lcom/facebook/rebound/e;->a(D)Lcom/facebook/rebound/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/rebound/e;->c()Lcom/facebook/rebound/e;

    .line 1128
    sget-object p1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->FREE:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/facebook/rebound/e;)V
    .locals 9

    .line 149
    iget-object v6, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->e:Lcom/facebook/rebound/e;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->q:Lcom/facebook/rebound/e;

    if-eqz v7, :cond_1

    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    return-void

    .line 1217
    :cond_0
    iget-object v0, v6, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->b:D

    .line 2217
    iget-object v2, v7, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, v2, Lcom/facebook/rebound/e$a;->b:D

    .line 154
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-int v8, v0

    .line 155
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getActiveArrangement()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getActiveArrangement()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    move-result-object v0

    iget-boolean v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->o:Z

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxWidth()I

    move-result v3

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getMaxHeight()I

    move-result v4

    move-object v1, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v8}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;ZIILcom/facebook/rebound/e;Lcom/facebook/rebound/e;Lcom/facebook/rebound/e;I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/facebook/rebound/e;Lcom/facebook/rebound/e;)V
    .locals 2

    .line 6153
    iget-object v0, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    double-to-float v0, v0

    .line 295
    iput v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->c:F

    .line 7153
    iget-object v0, p2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    double-to-float v0, v0

    .line 296
    iput v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->d:F

    .line 297
    invoke-virtual {p1}, Lcom/facebook/rebound/e;->c()Lcom/facebook/rebound/e;

    .line 298
    invoke-virtual {p2}, Lcom/facebook/rebound/e;->c()Lcom/facebook/rebound/e;

    return-void
.end method

.method public a(Lcom/facebook/rebound/e;Lcom/facebook/rebound/e;FF)V
    .locals 2

    .line 285
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->c:F

    add-float/2addr v0, p3

    float-to-double v0, v0

    const/4 p3, 0x1

    .line 5113
    invoke-virtual {p1, v0, v1, p3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 286
    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->d:F

    add-float/2addr p1, p4

    float-to-double v0, p1

    .line 6113
    invoke-virtual {p2, v0, v1, p3}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    return-void
.end method

.method public b()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->e:Lcom/facebook/rebound/e;

    invoke-virtual {v0}, Lcom/facebook/rebound/e;->c()Lcom/facebook/rebound/e;

    .line 303
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->e:Lcom/facebook/rebound/e;

    invoke-virtual {v0}, Lcom/facebook/rebound/e;->d()Lcom/facebook/rebound/e;

    .line 304
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->e:Lcom/facebook/rebound/e;

    invoke-virtual {v0}, Lcom/facebook/rebound/e;->a()V

    const/4 v0, 0x0

    .line 305
    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->e:Lcom/facebook/rebound/e;

    .line 306
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->q:Lcom/facebook/rebound/e;

    invoke-virtual {v1}, Lcom/facebook/rebound/e;->c()Lcom/facebook/rebound/e;

    .line 307
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->q:Lcom/facebook/rebound/e;

    invoke-virtual {v1}, Lcom/facebook/rebound/e;->d()Lcom/facebook/rebound/e;

    .line 308
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->q:Lcom/facebook/rebound/e;

    invoke-virtual {v1}, Lcom/facebook/rebound/e;->a()V

    .line 309
    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->q:Lcom/facebook/rebound/e;

    .line 310
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->d()V

    return-void
.end method

.method public b(Lcom/facebook/rebound/e;)V
    .locals 4

    .line 163
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object v0

    .line 3153
    iget-object v0, v0, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, v0, Lcom/facebook/rebound/e$a;->a:D

    .line 163
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object v2

    .line 4153
    iget-object v2, v2, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v2, v2, Lcom/facebook/rebound/e$a;->a:D

    .line 163
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->a(DD)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final c(Lcom/facebook/rebound/e;)V
    .locals 0

    return-void
.end method

.method protected final d()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->p:Lcom/facebook/rebound/e;

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lcom/facebook/rebound/e;->c()Lcom/facebook/rebound/e;

    .line 343
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->p:Lcom/facebook/rebound/e;

    invoke-virtual {v0}, Lcom/facebook/rebound/e;->d()Lcom/facebook/rebound/e;

    .line 344
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->p:Lcom/facebook/rebound/e;

    invoke-virtual {v0}, Lcom/facebook/rebound/e;->a()V

    const/4 v0, 0x0

    .line 345
    iput-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->p:Lcom/facebook/rebound/e;

    :cond_0
    return-void
.end method

.method public final d(Lcom/facebook/rebound/e;)V
    .locals 0

    return-void
.end method

.method public getHorizontalSpring()Lcom/facebook/rebound/e;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->e:Lcom/facebook/rebound/e;

    return-object v0
.end method

.method public getKey()Ljava/io/Serializable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->k:Ljava/io/Serializable;

    return-object v0
.end method

.method public getState()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    return-object v0
.end method

.method public getVerticalSpring()Lcom/facebook/rebound/e;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->q:Lcom/facebook/rebound/e;

    return-object v0
.end method

.method public isDragging()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->o:Z

    return v0
.end method

.method public isHero()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->s:Z

    return v0
.end method

.method public isSticky()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->i:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    .line 176
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 178
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->e:Lcom/facebook/rebound/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->q:Lcom/facebook/rebound/e;

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 186
    iget v6, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->l:F

    sub-float v6, v4, v6

    .line 187
    iget v7, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->m:F

    sub-float v7, v5, v7

    .line 188
    iget-object v8, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v8}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getActiveArrangement()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;->b()Z

    move-result v8

    .line 189
    iget-object v9, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v9}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getChatHeadContainer()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    move-result-object v9

    invoke-interface {v9, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->a(Landroid/view/View;)I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v10}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getChatHeadContainer()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;

    move-result-object v10

    invoke-interface {v10, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadContainer;->b(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/4 v9, 0x1

    if-nez v3, :cond_3

    .line 191
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->n:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 192
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->n:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 196
    :goto_0
    sget-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 197
    sget-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v2, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 198
    sget-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->FREE:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    invoke-virtual {p0, v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setState(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;)V

    .line 199
    iput v4, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->l:F

    .line 200
    iput v5, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->m:F

    .line 201
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->p:Lcom/facebook/rebound/e;

    if-eqz v1, :cond_2

    const-wide v3, 0x3fecccccc0000000L    # 0.8999999761581421

    .line 202
    invoke-virtual {v1, v3, v4}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 204
    :cond_2
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 205
    invoke-virtual {p0, v0, v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->a(Lcom/facebook/rebound/e;Lcom/facebook/rebound/e;)V

    goto/16 :goto_2

    :cond_3
    const/4 v10, 0x2

    if-ne v3, v10, :cond_7

    float-to-double v10, v6

    float-to-double v12, v7

    .line 207
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    iget v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->f:I

    int-to-double v12, v3

    cmpl-double v3, v10, v12

    if-lez v3, :cond_4

    .line 208
    iput-boolean v9, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->o:Z

    if-eqz v8, :cond_4

    .line 210
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a()V

    .line 211
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a()V

    .line 214
    :cond_4
    iget-object v3, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 215
    iget-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->o:Z

    if-eqz p1, :cond_b

    .line 216
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a(FF)V

    .line 217
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->a(FF)V

    .line 218
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getActiveArrangement()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    .line 219
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1, v4, v5}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->b(FF)D

    move-result-wide v10

    .line 220
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1, v4, v5}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->a(FF)D

    move-result-wide v3

    .line 221
    iget p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->a:I

    int-to-double v12, p1

    cmpg-double v5, v3, v12

    if-gez v5, :cond_5

    if-eqz v8, :cond_5

    .line 222
    sget-object p1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->CAPTURED_LEFT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setState(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;)V

    .line 223
    sget-object p1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v0, p1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 224
    sget-object p1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v2, p1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 225
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->c(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)[I

    move-result-object p1

    .line 226
    aget v1, p1, v1

    int-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 227
    aget p1, p1, v9

    int-to-double v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 228
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->b()V

    goto :goto_1

    :cond_5
    int-to-double v3, p1

    cmpg-double p1, v10, v3

    if-gez p1, :cond_6

    if-eqz v8, :cond_6

    .line 230
    sget-object p1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->CAPTURED_RIGHT:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setState(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;)V

    .line 231
    sget-object p1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v0, p1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 232
    sget-object p1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->a:Lcom/facebook/rebound/g;

    invoke-virtual {v2, p1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 233
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1, p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->d(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;)[I

    move-result-object p1

    .line 234
    aget v1, p1, v1

    int-to-double v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 235
    aget p1, p1, v9

    int-to-double v0, p1

    invoke-virtual {v2, v0, v1}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 236
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->b()V

    goto :goto_1

    .line 238
    :cond_6
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->g()V

    .line 239
    sget-object p1, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;->FREE:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->setState(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;)V

    .line 240
    sget-object p1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->c:Lcom/facebook/rebound/g;

    invoke-virtual {v0, p1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 241
    sget-object p1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->c:Lcom/facebook/rebound/g;

    invoke-virtual {v2, p1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 242
    invoke-virtual {p0, v0, v2, v6, v7}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->a(Lcom/facebook/rebound/e;Lcom/facebook/rebound/e;FF)V

    .line 243
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getLeftCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->d()V

    .line 244
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getRightCloseButton()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadCloseButton;->d()V

    .line 247
    :goto_1
    iget-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->n:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    goto :goto_2

    :cond_7
    if-eq v3, v9, :cond_8

    const/4 p1, 0x3

    if-ne v3, p1, :cond_b

    .line 254
    :cond_8
    iget-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->o:Z

    .line 255
    iput-boolean v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->o:Z

    if-eqz p1, :cond_9

    .line 257
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->a()V

    .line 258
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->h()V

    .line 260
    :cond_9
    sget-object v1, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->c:Lcom/facebook/rebound/g;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 261
    sget-object v0, Lcom/callapp/contacts/widget/floatingwidget/ui/SpringConfigsHolder;->c:Lcom/facebook/rebound/g;

    invoke-virtual {v2, v0}, Lcom/facebook/rebound/e;->a(Lcom/facebook/rebound/g;)Lcom/facebook/rebound/e;

    .line 262
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->p:Lcom/facebook/rebound/e;

    if-eqz v0, :cond_a

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 263
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/e;->b(D)Lcom/facebook/rebound/e;

    .line 265
    :cond_a
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 266
    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 267
    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->n:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    .line 268
    iput-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->n:Landroid/view/VelocityTracker;

    .line 269
    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->e:Lcom/facebook/rebound/e;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->q:Lcom/facebook/rebound/e;

    if-eqz v2, :cond_b

    .line 270
    iget-object v2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v2}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getActiveArrangement()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;

    move-result-object v2

    .line 271
    invoke-virtual {v2, p0, v0, v1, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadArrangement;->a(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;IIZ)Z

    :cond_b
    :goto_2
    return v9

    :cond_c
    :goto_3
    return v1
.end method

.method public setChatHeadToDefaultPosition(Z)V
    .locals 3

    .line 323
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getVerticalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadHeight()I

    move-result v1

    neg-int v1, v1

    int-to-double v1, v1

    .line 8113
    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->getHorizontalSpring()Lcom/facebook/rebound/e;

    move-result-object p1

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->b:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;

    invoke-interface {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadManager;->getConfig()Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHeadConfig;->getHeadWidth()I

    move-result v1

    neg-int v1, v1

    int-to-double v1, v1

    .line 9113
    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/rebound/e;->a(DZ)Lcom/facebook/rebound/e;

    :cond_1
    return-void
.end method

.method public setChatHeadView(Landroid/view/View;)V
    .locals 0

    .line 314
    invoke-virtual {p0}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->removeAllViews()V

    .line 315
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->r:Landroid/os/Bundle;

    return-void
.end method

.method public setHero(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->s:Z

    return-void
.end method

.method public setKey(Ljava/io/Serializable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->k:Ljava/io/Serializable;

    return-void
.end method

.method public setState(Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead;->j:Lcom/callapp/contacts/widget/floatingwidget/ui/ChatHead$State;

    return-void
.end method
