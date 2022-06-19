.class Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->dismiss(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;

.field final synthetic val$dismissRight:Z

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;Landroid/view/View;IZ)V
    .locals 0

    .line 277
    iput-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$1;->this$0:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;

    iput-object p2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$1;->val$view:Landroid/view/View;

    iput p3, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$1;->val$position:I

    iput-boolean p4, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$1;->val$dismissRight:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 280
    iget-object p1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$1;->this$0:Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;

    iget-object v0, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$1;->val$view:Landroid/view/View;

    iget v1, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$1;->val$position:I

    iget-boolean v2, p0, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener$1;->val$dismissRight:Z

    invoke-static {p1, v0, v1, v2}, Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;->access$000(Lit/gmariotti/cardslib/library/prototypes/SwipeDismissListItemViewTouchListener;Landroid/view/View;IZ)V

    return-void
.end method
