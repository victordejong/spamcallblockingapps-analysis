.class Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->a(Landroid/view/LayoutInflater;Landroid/view/View;Landroid/widget/RadioGroup;[Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;Landroid/view/View;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$1;->b:Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;

    iput-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 109
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$1;->b:Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;

    iget-object p2, p0, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog$1;->a:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;->a(Lcom/callapp/contacts/popup/contact/callrecorder/CallRecorderAdvancedSettingsDialog;Landroid/view/View;)V

    return-void
.end method
