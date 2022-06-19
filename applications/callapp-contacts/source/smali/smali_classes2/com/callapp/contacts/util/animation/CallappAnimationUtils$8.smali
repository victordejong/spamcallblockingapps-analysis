.class final Lcom/callapp/contacts/util/animation/CallappAnimationUtils$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/animation/CallappAnimationUtils;->a(Ljava/lang/Object;III)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field a:Landroid/graphics/drawable/ColorDrawable;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$8;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$8;->a:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$8;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$8;->a:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 452
    iget-object p1, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$8;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/callapp/contacts/util/animation/CallappAnimationUtils$8;->a:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
