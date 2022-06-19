.class public Lnb$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnb;->i(Lqb;)Lnb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqb;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lnb;Lqb;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lnb$b;->a:Lqb;

    iput-object p3, p0, Lnb$b;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object p1, p0, Lnb$b;->a:Lqb;

    iget-object v0, p0, Lnb$b;->b:Landroid/view/View;

    invoke-interface {p1, v0}, Lqb;->a(Landroid/view/View;)V

    return-void
.end method
