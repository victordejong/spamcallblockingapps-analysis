.class public Landroidx/transition/Transition$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Ljava/lang/String;

.field public c:Lx20;

.field public d:Ls30;

.field public e:Landroidx/transition/Transition;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Ls30;Lx20;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/Transition$d;->a:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/Transition$d;->b:Ljava/lang/String;

    iput-object p5, p0, Landroidx/transition/Transition$d;->c:Lx20;

    iput-object p4, p0, Landroidx/transition/Transition$d;->d:Ls30;

    iput-object p3, p0, Landroidx/transition/Transition$d;->e:Landroidx/transition/Transition;

    return-void
.end method
