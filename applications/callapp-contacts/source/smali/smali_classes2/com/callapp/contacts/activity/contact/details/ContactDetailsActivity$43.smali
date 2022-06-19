.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->showLockedNotificationOnScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/snackbar/Snackbar;

.field final synthetic b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Lcom/google/android/material/snackbar/Snackbar;)V
    .locals 0

    .line 2754
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$43;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$43;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2757
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$43;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2758
    iget-object v0, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$43;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    :cond_0
    return-void
.end method
