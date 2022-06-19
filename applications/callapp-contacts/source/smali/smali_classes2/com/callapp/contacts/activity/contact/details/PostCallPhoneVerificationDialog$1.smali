.class Lcom/callapp/contacts/activity/contact/details/PostCallPhoneVerificationDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/contact/details/PostCallPhoneVerificationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/details/PostCallPhoneVerificationDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/details/PostCallPhoneVerificationDialog;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallPhoneVerificationDialog$1;->a:Lcom/callapp/contacts/activity/contact/details/PostCallPhoneVerificationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 61
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hq:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/details/PostCallPhoneVerificationDialog$1;->a:Lcom/callapp/contacts/activity/contact/details/PostCallPhoneVerificationDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/details/PostCallPhoneVerificationDialog;->dismiss()V

    return-void
.end method
