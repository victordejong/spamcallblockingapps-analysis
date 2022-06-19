.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;ZLandroid/animation/AnimatorListenerAdapter;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/AnimatorListenerAdapter;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 2968
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$7;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$7;->a:Landroid/animation/AnimatorListenerAdapter;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2971
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2972
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$7;->b:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    iget-object v0, v0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {v0}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->s(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/tabs/TabLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    .line 2973
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$7;->a:Landroid/animation/AnimatorListenerAdapter;

    if-eqz v0, :cond_0

    .line 2974
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
