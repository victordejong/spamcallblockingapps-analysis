.class public final Landroidx/transition/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/view/ViewGroup;

.field b:Ljava/lang/Runnable;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/transition/q;->d:I

    .line 90
    iput-object p1, p0, Landroidx/transition/q;->a:Landroid/view/ViewGroup;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/transition/q;->d:I

    .line 109
    iput-object p3, p0, Landroidx/transition/q;->c:Landroid/content/Context;

    .line 110
    iput-object p1, p0, Landroidx/transition/q;->a:Landroid/view/ViewGroup;

    .line 111
    iput p2, p0, Landroidx/transition/q;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/transition/q;->d:I

    .line 125
    iput-object p1, p0, Landroidx/transition/q;->a:Landroid/view/ViewGroup;

    .line 126
    iput-object p2, p0, Landroidx/transition/q;->e:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Landroidx/transition/q;
    .locals 1

    .line 209
    sget v0, Landroidx/transition/o$a;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/transition/q;

    return-object p0
.end method
