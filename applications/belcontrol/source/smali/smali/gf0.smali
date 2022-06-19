.class public final synthetic Lgf0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcarbon/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcarbon/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgf0;->a:Lcarbon/widget/EditText;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lgf0;->a:Lcarbon/widget/EditText;

    invoke-virtual {v0, p1}, Lcarbon/widget/EditText;->z(Landroid/animation/ValueAnimator;)V

    return-void
.end method
