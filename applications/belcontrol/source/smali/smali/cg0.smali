.class public final synthetic Lcg0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/PagerTabStrip$a;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/PagerTabStrip$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcg0;->a:Lcarbon/widget/PagerTabStrip$a;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcg0;->a:Lcarbon/widget/PagerTabStrip$a;

    invoke-virtual {v0, p1}, Lcarbon/widget/PagerTabStrip$a;->b(Landroid/animation/ValueAnimator;)V

    return-void
.end method
