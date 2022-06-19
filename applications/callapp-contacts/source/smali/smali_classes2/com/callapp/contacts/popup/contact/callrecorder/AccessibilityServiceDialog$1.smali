.class Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;->a:Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1$1;-><init>(Lcom/callapp/contacts/popup/contact/callrecorder/AccessibilityServiceDialog$1;)V

    invoke-static {p1, v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/PopupDoneListener;)V

    return-void
.end method
