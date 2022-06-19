.class public final synthetic Ljf0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/ExpansionPanel;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/ExpansionPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljf0;->a:Lcarbon/widget/ExpansionPanel;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Ljf0;->a:Lcarbon/widget/ExpansionPanel;

    invoke-virtual {v0, p1}, Lcarbon/widget/ExpansionPanel;->x(Landroid/animation/ValueAnimator;)V

    return-void
.end method
