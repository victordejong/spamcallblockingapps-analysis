.class Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$5;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->showLockedNotificationOnScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/snackbar/Snackbar;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$5;->b:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$5;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 311
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$5;->b:Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;->access$300(Lcom/callapp/contacts/activity/contact/details/ConferenceActivity;Z)V

    .line 312
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ConferenceActivity$5;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    return-void
.end method
