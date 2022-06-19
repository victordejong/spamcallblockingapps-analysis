.class Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$42;
.super Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;
.source "SourceFile"


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

    .line 2745
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$42;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    iput-object p2, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$42;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-direct {p0}, Lcom/callapp/contacts/util/DefaultInterfaceImplUtils$ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .line 2748
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$42;->b:Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;->access$5600(Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity;Z)V

    .line 2749
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/ContactDetailsActivity$42;->a:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->d()V

    return-void
.end method
