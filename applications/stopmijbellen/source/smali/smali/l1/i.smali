.class public Ll1/i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ll1/g;


# direct methods
.method public constructor <init>(Ll1/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll1/i;->a:Ll1/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll1/i;->a:Ll1/g;

    invoke-virtual {v0}, Ll1/g;->m()V

    .line 2
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
