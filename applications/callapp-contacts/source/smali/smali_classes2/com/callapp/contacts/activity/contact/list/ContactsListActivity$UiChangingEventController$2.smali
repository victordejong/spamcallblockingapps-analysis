.class Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->a(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiEvent;Z)V
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

    .line 2811
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 2814
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2815
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController$2;->a:Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;

    invoke-static {p1}, Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;->b(Lcom/callapp/contacts/activity/contact/list/ContactsListActivity$UiChangingEventController;)V

    return-void
.end method
