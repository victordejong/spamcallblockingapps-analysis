.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UiChangingEventController"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

.field private b:Ljava/lang/String;

.field private c:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V
    .locals 0

    .line 2744
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$1;)V
    .locals 0

    .line 2744
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 2878
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/CallAppBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CallAppBarManager;->c()V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;)V
    .locals 4

    .line 6908
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/CallAppBarManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f120239

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$4;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$4;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;)V

    const p0, 0x7f0e0009

    invoke-virtual {v0, p0, v1, v2}, Lcom/callapp/contacts/manager/CallAppBarManager;->a(ILjava/lang/String;Lcom/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 6749
    invoke-direct {p0, p1, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V
    .locals 0

    .line 2744
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    return-void
.end method

.method private a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V
    .locals 5

    .line 2753
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2861
    :pswitch_0
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b()V

    .line 2862
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a()V

    .line 2863
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    .line 2864
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b(Z)V

    .line 2865
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/CallAppBarManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/manager/CallAppBarManager;->a(Z)V

    .line 2866
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    .line 2867
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->c()V

    .line 2868
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->A(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    .line 2869
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2870
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d()V

    goto/16 :goto_0

    .line 2855
    :pswitch_1
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b()V

    .line 2856
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    .line 2857
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b(Z)V

    .line 2858
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    goto/16 :goto_0

    .line 2852
    :pswitch_2
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    goto/16 :goto_0

    .line 2849
    :pswitch_3
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b()V

    goto/16 :goto_0

    .line 2846
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b(Z)V

    goto/16 :goto_0

    .line 2843
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b(Z)V

    goto/16 :goto_0

    .line 2833
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    .line 2834
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a()V

    .line 2835
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    .line 2836
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->c()V

    .line 2837
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->A(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    .line 2838
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2839
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->d()V

    goto/16 :goto_0

    .line 2830
    :pswitch_7
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    goto/16 :goto_0

    .line 2824
    :pswitch_8
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b()V

    .line 2825
    invoke-direct {p0, p1, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V

    .line 2826
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b(Z)V

    .line 2827
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Z)V

    goto/16 :goto_0

    .line 2810
    :pswitch_9
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b()V

    .line 2811
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$2;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$2;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;ZLandroid/animation/AnimatorListenerAdapter;)Z

    .line 2818
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Z)V

    .line 2819
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2820
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->c()V

    goto/16 :goto_0

    .line 2793
    :pswitch_a
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0, v3}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    .line 2794
    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$1;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;)V

    invoke-direct {p0, p1, v3, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;ZLandroid/animation/AnimatorListenerAdapter;)Z

    .line 2801
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Z)V

    .line 2802
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b()V

    .line 2803
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->J(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    .line 2804
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2805
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->c()V

    goto/16 :goto_0

    .line 2781
    :pswitch_b
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(I)V

    .line 2782
    invoke-direct {p0, p1, p2, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;ZLandroid/animation/AnimatorListenerAdapter;)Z

    .line 2783
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b(Z)V

    .line 2784
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    .line 2785
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b()V

    .line 2786
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->J(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    .line 2787
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2788
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->z(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/tutorial/TutorialViewController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/widget/tutorial/TutorialViewController;->c()V

    goto/16 :goto_0

    .line 2777
    :pswitch_c
    invoke-direct {p0, p1, v3, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;ZLandroid/animation/AnimatorListenerAdapter;)Z

    goto/16 :goto_0

    .line 2765
    :pswitch_d
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->o(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/ViewUtils;->a(Lcom/google/android/material/appbar/AppBarLayout;Z)V

    .line 2766
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c(I)V

    .line 2767
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->f(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    .line 3882
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/CallAppBarManager;

    move-result-object v0

    .line 4125
    iget-object v0, v0, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/widget/CallAppToolbar;->setVisibility(I)V

    .line 2769
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Z)V

    .line 4993
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->M(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4995
    invoke-static {}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->get()Lcom/callapp/contacts/manager/CallAppClipboardManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/CallAppClipboardManager;->getLatestNumberFromClipboard()Ljava/lang/String;

    move-result-object v0

    .line 4997
    invoke-static {v0}, Lcom/callapp/framework/phone/PhoneNumberUtils;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4998
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/callapp/framework/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5000
    iget-object v4, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v4, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 5001
    iput-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b:Ljava/lang/String;

    .line 5006
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0, v3, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;ZZ)V

    .line 2771
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/CallAppBarManager;

    move-result-object p2

    .line 5106
    iget-object v0, p2, Lcom/callapp/contacts/manager/CallAppBarManager;->c:Lcom/callapp/contacts/widget/CallAppToolbar;

    .line 5305
    invoke-virtual {v0, v2}, Lcom/callapp/contacts/widget/CallAppToolbar;->b(Z)V

    .line 5306
    iget-object v2, v0, Lcom/callapp/contacts/widget/CallAppToolbar;->b:Landroidx/appcompat/widget/SearchView;

    invoke-static {v2}, Lcom/callapp/contacts/util/Activities;->b(Landroid/view/View;)V

    .line 5307
    iget-object v0, v0, Lcom/callapp/contacts/widget/CallAppToolbar;->a:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/Toolbar;->requestFocus()Z

    .line 5107
    invoke-virtual {p2}, Lcom/callapp/contacts/manager/CallAppBarManager;->j()V

    .line 2772
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/CallAppBarManager;

    move-result-object p2

    .line 6134
    iget-object p2, p2, Lcom/callapp/contacts/manager/CallAppBarManager;->a:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2773
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->p(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/callapp/contacts/activity/contact/details/presenter/ContactListCollapsingBottomBarPresenter;->b()V

    .line 2774
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->J(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)V

    goto :goto_0

    .line 2759
    :pswitch_e
    invoke-direct {p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a()V

    .line 2760
    invoke-direct {p0, p1, v3, v1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;ZLandroid/animation/AnimatorListenerAdapter;)Z

    .line 2761
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2, v3}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    .line 2762
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const-string v0, "Keypad close button clicked"

    invoke-static {p2, v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 2755
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b(Z)V

    .line 2756
    iget-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p2, v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;Z)V

    .line 2874
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->c:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 2886
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isActivityVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2887
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->H(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->H(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$3;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$3;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    .line 2895
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->H(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->H(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationY(F)V

    .line 2896
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->H(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method private a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;)Z
    .locals 1

    .line 2930
    sget-object v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$37;->f:[I

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2934
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isActivityVisible()Z

    move-result p1

    return p1
.end method

.method private a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;ZLandroid/animation/AnimatorListenerAdapter;)Z
    .locals 3

    .line 2961
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->b()V

    .line 2962
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isTabsVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2964
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getY()F

    move-result v0

    neg-float v0, v0

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v2}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/CallAppBarManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/callapp/contacts/manager/CallAppBarManager;->getBarHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    if-nez p2, :cond_0

    .line 2966
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2968
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$7;

    invoke-direct {p2, p0, p3}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$7;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Landroid/animation/AnimatorListenerAdapter;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 2979
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setTranslationY(F)V

    .line 2980
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    .line 2982
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2986
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private b()V
    .locals 2

    .line 2901
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "KEYPAD_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    if-eqz v0, :cond_0

    .line 2903
    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;->b()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;)V
    .locals 4

    .line 6919
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->r(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/manager/CallAppBarManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const v2, 0x7f120132

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/Activities;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$5;

    invoke-direct {v2, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$5;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;)V

    const p0, 0x7f0e0008

    invoke-virtual {v0, p0, v1, v2}, Lcom/callapp/contacts/manager/CallAppBarManager;->a(ILjava/lang/String;Lcom/callapp/contacts/manager/CallAppBarManager$OnActionModeClickListener;)V

    return-void
.end method

.method private b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V
    .locals 1

    .line 2940
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->c()V

    .line 2941
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->M(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2942
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-virtual {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->isTabsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 2943
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2944
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$6;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$6;-><init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 2952
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setTranslationY(F)V

    .line 2953
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 2955
    :goto_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->y(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/callapp/contacts/widget/PagingTogglableViewPager;

    move-result-object p1

    sget-object p2, Lcom/callapp/contacts/manager/preferences/Prefs;->t:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p2}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/widget/PagingTogglableViewPager;->setPagingEnabled(Z)V

    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 3010
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;ZZ)V

    return-void
.end method


# virtual methods
.method getPrevEvent()Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;
    .locals 1

    .line 3014
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->c:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;

    return-object v0
.end method
