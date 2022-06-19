.class public final synthetic Lqg0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/ScrollView;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqg0;->a:Lcarbon/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lqg0;->a:Lcarbon/widget/ScrollView;

    invoke-virtual {v0, p1}, Lcarbon/widget/ScrollView;->e(Landroid/animation/ValueAnimator;)V

    return-void
.end method
