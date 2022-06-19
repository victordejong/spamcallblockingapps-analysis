.class public final synthetic Lue0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lue0;->a:Lcarbon/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lue0;->a:Lcarbon/widget/TextView;

    invoke-static {v0, p1}, Lcarbon/widget/BottomBar;->v(Lcarbon/widget/TextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
