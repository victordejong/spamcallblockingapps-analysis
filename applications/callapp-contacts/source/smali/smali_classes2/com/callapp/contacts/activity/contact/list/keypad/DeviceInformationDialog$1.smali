.class Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->ovViewCreated(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 127
    iget-object p1, p0, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog$1;->a:Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/contact/list/keypad/DeviceInformationDialog;->dismiss()V

    return-void
.end method
