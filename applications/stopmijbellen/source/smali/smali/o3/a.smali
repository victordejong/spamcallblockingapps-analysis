.class public final Lo3/a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lo3/d;


# direct methods
.method public constructor <init>(Lo3/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo3/a;->a:Lo3/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo3/a;->a:Lo3/d;

    invoke-interface {p1}, Lo3/d;->a()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lo3/a;->a:Lo3/d;

    invoke-interface {p1}, Lo3/d;->b()V

    return-void
.end method
