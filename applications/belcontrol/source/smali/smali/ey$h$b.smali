.class public Ley$h$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ley$h;->d(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ley$h;


# direct methods
.method public constructor <init>(Ley$h;)V
    .locals 0

    iput-object p1, p0, Ley$h$b;->a:Ley$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Ley$h$b;->a:Ley$h;

    iget-object p1, p1, Ley$h;->j:Ley;

    const/4 v0, 0x0

    iput-boolean v0, p1, Ley;->w:Z

    invoke-virtual {p1}, Ley;->p()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Ley$h$b;->a:Ley$h;

    iget-object p1, p1, Ley$h;->j:Ley;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ley;->w:Z

    return-void
.end method
