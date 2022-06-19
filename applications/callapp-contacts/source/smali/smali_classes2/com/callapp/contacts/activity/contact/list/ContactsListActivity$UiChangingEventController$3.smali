.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;)V
    .locals 0

    .line 2887
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$3;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2890
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2891
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$3;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    iget-object p1, p1, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;->H(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    return-void
.end method
