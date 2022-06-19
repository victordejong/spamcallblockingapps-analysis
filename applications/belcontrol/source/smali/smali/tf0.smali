.class public final synthetic Ltf0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltf0;->a:Lcarbon/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Ltf0;->a:Lcarbon/widget/ImageView;

    invoke-virtual {v0, p1}, Lcarbon/widget/ImageView;->m(Landroid/animation/ValueAnimator;)V

    return-void
.end method
