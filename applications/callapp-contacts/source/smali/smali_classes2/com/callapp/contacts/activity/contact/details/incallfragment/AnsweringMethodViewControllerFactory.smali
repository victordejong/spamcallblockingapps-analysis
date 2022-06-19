.class Lcom/callapp/contacts/activity/contact/details/incallfragment/AnsweringMethodViewControllerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ILcom/callapp/contacts/activity/marketplace/ButtonSet;Landroid/view/ViewGroup;Lcom/callapp/contacts/widget/DrawingViewWithCallback;Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;)Lcom/callapp/contacts/activity/contact/details/incallfragment/BaseAnsweringMethodViewController;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 23
    new-instance p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;

    invoke-direct {p0, p2, p1, p4}, Lcom/callapp/contacts/activity/contact/details/incallfragment/SlideAnsweringMethodViewController;-><init>(Landroid/view/ViewGroup;Lcom/callapp/contacts/activity/marketplace/ButtonSet;Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;)V

    return-object p0

    .line 20
    :cond_0
    new-instance p0, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/callapp/contacts/activity/contact/details/incallfragment/TwoButtonAnsweringMethodViewController;-><init>(Landroid/view/ViewGroup;Lcom/callapp/contacts/activity/marketplace/ButtonSet;Lcom/callapp/contacts/widget/DrawingViewWithCallback;Lcom/callapp/contacts/activity/contact/details/incallfragment/InCallActionFragment$InCallActionFragmentInterface;)V

    return-object p0
.end method
