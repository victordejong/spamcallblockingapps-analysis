.class public Landroidx/constraintlayout/motion/widget/h;
.super Landroidx/constraintlayout/motion/widget/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/h$a;
    }
.end annotation


# instance fields
.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:F

.field k:F

.field l:F

.field m:F

.field n:F

.field o:F

.field p:I

.field private r:F

.field private s:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/i;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/h;->g:Ljava/lang/String;

    .line 44
    sget v0, Landroidx/constraintlayout/motion/widget/h;->a:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->h:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->i:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 46
    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->j:F

    .line 47
    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->k:F

    .line 48
    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->l:F

    .line 49
    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->m:F

    .line 50
    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->n:F

    .line 51
    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->o:F

    .line 55
    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->p:I

    .line 57
    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->r:F

    .line 58
    iput v1, p0, Landroidx/constraintlayout/motion/widget/h;->s:F

    const/4 v0, 0x2

    .line 62
    iput v0, p0, Landroidx/constraintlayout/motion/widget/h;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    sget-object v0, Landroidx/constraintlayout/widget/e$b;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/h$a;->a(Landroidx/constraintlayout/motion/widget/h;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/q;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
