.class final Landroidx/transition/ChangeBounds$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/transition/ChangeBounds;->a(Landroid/view/ViewGroup;Landroidx/transition/x;Landroidx/transition/x;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/transition/ChangeBounds$a;

.field final synthetic b:Landroidx/transition/ChangeBounds;

.field private mViewBounds:Landroidx/transition/ChangeBounds$a;


# direct methods
.method constructor <init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$a;)V
    .locals 0

    .line 326
    iput-object p1, p0, Landroidx/transition/ChangeBounds$8;->b:Landroidx/transition/ChangeBounds;

    iput-object p2, p0, Landroidx/transition/ChangeBounds$8;->a:Landroidx/transition/ChangeBounds$a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 329
    iput-object p2, p0, Landroidx/transition/ChangeBounds$8;->mViewBounds:Landroidx/transition/ChangeBounds$a;

    return-void
.end method
