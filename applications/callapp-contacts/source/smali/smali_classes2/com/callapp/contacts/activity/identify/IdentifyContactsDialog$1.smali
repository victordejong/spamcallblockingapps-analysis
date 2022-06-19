.class final Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 35
    new-instance v0, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;

    invoke-direct {v0}, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog;-><init>()V

    .line 36
    invoke-static {}, Lcom/callapp/contacts/manager/popup/PopupManager;->get()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/activity/identify/IdentifyContactsDialog$1;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    return-void
.end method
