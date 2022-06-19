.class Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public popupDone(Z)V
    .locals 2

    .line 78
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->isCallAppAccessibilityServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->eP:Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;

    sget-object v1, Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;->VOICE_RECOGNITION:Lcom/callapp/contacts/recorder/enums/RecordConfiguration$AUDIO_SOURCE;

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/manager/preferences/prefs/EnumPref;->set(Ljava/lang/Object;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;->a(Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;

    iget-object v0, v0, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;

    invoke-static {v0}, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;->a(Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;)Lcom/callapp/contacts/manager/popup/PopupDoneListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/callapp/contacts/manager/popup/PopupDoneListener;->popupDone(Z)V

    .line 84
    :cond_1
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;

    iget-object p1, p1, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;->dismiss()V

    return-void
.end method
