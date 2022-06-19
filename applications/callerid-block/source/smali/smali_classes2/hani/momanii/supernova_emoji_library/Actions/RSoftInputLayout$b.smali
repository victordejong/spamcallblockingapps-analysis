.class Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->e(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;


# direct methods
.method constructor <init>(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;)V
    .locals 0

    iput-object p1, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$b;->a:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout$b;->a:Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;->a(Lhani/momanii/supernova_emoji_library/Actions/RSoftInputLayout;I)V

    return-void
.end method
