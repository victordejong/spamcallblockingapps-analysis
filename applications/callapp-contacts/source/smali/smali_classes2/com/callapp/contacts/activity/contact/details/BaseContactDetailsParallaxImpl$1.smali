.class Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(IFI)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Lcom/google/android/material/appbar/AppBarLayout$Behavior;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$1;->a:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$1;->b:Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;

    iget-object v1, p0, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl$1;->a:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;->a(Lcom/callapp/contacts/activity/contact/details/BaseContactDetailsParallaxImpl;Lcom/google/android/material/appbar/AppBarLayout$Behavior;I)I

    return-void
.end method
