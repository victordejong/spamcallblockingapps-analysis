.class Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->toggleDialpad(ZZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/s;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

.field final synthetic c:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;Landroidx/fragment/app/s;Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$7;->c:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$7;->a:Landroidx/fragment/app/s;

    iput-object p3, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$7;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 452
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$7;->a:Landroidx/fragment/app/s;

    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$7;->b:Lcom/callapp/contacts/activity/contact/list/keypad/KeypadFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->c()I

    .line 453
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$7;->c:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->b()Z

    return-void
.end method
