.class Lcom/callapp/contacts/activity/settings/PrivateModeDialog$2;
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

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$2;->a:Lcom/callapp/contacts/activity/settings/PrivateModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 73
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$2;->a:Lcom/callapp/contacts/activity/settings/PrivateModeDialog;

    invoke-static {p1}, Lcom/callapp/contacts/activity/settings/PrivateModeDialog;->a(Lcom/callapp/contacts/activity/settings/PrivateModeDialog;)Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;

    move-result-object p1

    invoke-interface {p1}, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$IPrivateMode;->a()V

    .line 74
    iget-object p1, p0, Lcom/callapp/contacts/activity/settings/PrivateModeDialog$2;->a:Lcom/callapp/contacts/activity/settings/PrivateModeDialog;

    invoke-virtual {p1}, Lcom/callapp/contacts/activity/settings/PrivateModeDialog;->dismiss()V

    return-void
.end method
