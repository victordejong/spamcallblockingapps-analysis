.class Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;
.super Lcom/facebook/rebound/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HorizontalMovementSpringListener"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private d:Landroidx/constraintlayout/widget/c;

.field private e:Landroidx/constraintlayout/widget/c;

.field private f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .locals 2

    .line 373
    invoke-direct {p0}, Lcom/facebook/rebound/d;-><init>()V

    .line 374
    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 375
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener$1;-><init>(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 382
    iput p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->a:I

    const/4 p2, 0x0

    .line 383
    iput p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->b:I

    .line 384
    new-instance p2, Landroidx/constraintlayout/widget/c;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/c;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->d:Landroidx/constraintlayout/widget/c;

    .line 385
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d01a3

    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/Context;I)V

    .line 386
    new-instance p2, Landroidx/constraintlayout/widget/c;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/c;-><init>()V

    iput-object p2, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->e:Landroidx/constraintlayout/widget/c;

    .line 387
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d01a4

    invoke-virtual {p2, v0, v1}, Landroidx/constraintlayout/widget/c;->a(Landroid/content/Context;I)V

    const p2, 0x7f0a0288

    .line 388
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->f:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;)I
    .locals 0

    .line 364
    iget p0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->a:I

    return p0
.end method

.method static synthetic a(Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;I)I
    .locals 0

    .line 364
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->a:I

    return p1
.end method


# virtual methods
.method public final a(Lcom/facebook/rebound/e;)V
    .locals 3

    .line 393
    invoke-super {p0, p1}, Lcom/facebook/rebound/d;->a(Lcom/facebook/rebound/e;)V

    .line 1153
    iget-object p1, p1, Lcom/facebook/rebound/e;->d:Lcom/facebook/rebound/e$a;

    iget-wide v0, p1, Lcom/facebook/rebound/e$a;->a:D

    double-to-int p1, v0

    .line 395
    iget v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->a:I

    div-int/lit8 v1, v0, 0x2

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->b:I

    div-int/lit8 v2, v0, 0x2

    if-gt v1, v2, :cond_0

    .line 396
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->e:Landroidx/constraintlayout/widget/c;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_0

    .line 397
    :cond_0
    div-int/lit8 v1, v0, 0x2

    if-gt p1, v1, :cond_1

    iget v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->b:I

    div-int/lit8 v0, v0, 0x2

    if-lt v1, v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->d:Landroidx/constraintlayout/widget/c;

    iget-object v1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/c;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 400
    :cond_1
    :goto_0
    iput p1, p0, Lcom/callapp/contacts/widget/floatingwidget/ui/callapp/CallAppChatHeadManager$HorizontalMovementSpringListener;->b:I

    return-void
.end method
