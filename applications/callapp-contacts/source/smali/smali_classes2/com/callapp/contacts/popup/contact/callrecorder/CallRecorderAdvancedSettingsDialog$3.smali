.class Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->a(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$3;->a:Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 137
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$3;->a:Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;

    invoke-static {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->a(Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;)V

    .line 138
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$3;->a:Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->dismiss()V

    return-void
.end method
