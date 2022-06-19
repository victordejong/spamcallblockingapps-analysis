.class public Ll1/h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ls/a;

.field public final synthetic b:Ll1/g;


# direct methods
.method public constructor <init>(Ll1/g;Ls/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll1/h;->b:Ll1/g;

    iput-object p2, p0, Ll1/h;->a:Ls/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll1/h;->a:Ls/a;

    invoke-virtual {v0, p1}, Ls/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Ll1/h;->b:Ll1/g;

    iget-object v0, v0, Ll1/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll1/h;->b:Ll1/g;

    iget-object v0, v0, Ll1/g;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
