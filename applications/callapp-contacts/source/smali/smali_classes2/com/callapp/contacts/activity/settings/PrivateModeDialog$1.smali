.class Lcom/callapp/contacts/activity/settings/PrivateModeDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/settings/PrivateModeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/settings/PrivateModeDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/settings/PrivateModeDialog;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$1;->a:Lcom/callapp/contacts/activity/settings/PrivateModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 62
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$1;->a:Lcom/callapp/contacts/activity/settings/PrivateModeDialog;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/PrivateModeDialog;->a(Lcom/callapp/contacts/activity/settings/PrivateModeDialog;)Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    sget-object p1, Lcom/callapp/contacts/manager/preferences/Prefs;->hA:Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;

    invoke-virtual {p1}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/manager/preferences/prefs/BooleanPref;->set(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$1;->a:Lcom/callapp/contacts/activity/settings/PrivateModeDialog;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/PrivateModeDialog;->a(Lcom/callapp/contacts/activity/settings/PrivateModeDialog;)Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;->a()V

    .line 65
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$1;->a:Lcom/callapp/contacts/activity/settings/PrivateModeDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/PrivateModeDialog;->dismiss()V

    :cond_0
    return-void
.end method
