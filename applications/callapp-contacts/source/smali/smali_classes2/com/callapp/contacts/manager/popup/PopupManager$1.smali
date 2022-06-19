.class Lcom/callapp/contacts/manager/popup/PopupManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/manager/popup/DialogPopup;

.field final synthetic b:Landroidx/fragment/app/FragmentActivity;

.field final synthetic c:Lcom/callapp/contacts/manager/popup/PopupManager;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/manager/popup/PopupManager;Lcom/callapp/contacts/manager/popup/DialogPopup;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->c:Lcom/callapp/contacts/manager/popup/PopupManager;

    iput-object p2, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    iput-object p3, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "dialog"

    .line 70
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    if-eqz v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->a()Landroidx/fragment/app/s;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/fragment/app/FragmentManager;->a(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v1, v2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    .line 81
    :cond_0
    invoke-virtual {v1}, Landroidx/fragment/app/s;->c()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 83
    const-class v2, Lcom/callapp/contacts/manager/popup/PopupManager;

    invoke-static {v2, v1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    iget-object v2, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Lcom/callapp/contacts/manager/popup/DialogPopup;->shouldCanceledOnTouchOutside()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/callapp/contacts/manager/popup/DialogPopup;->createDialogFragment(Landroid/app/Activity;Z)Lcom/callapp/contacts/manager/popup/BaseDialogFragment;

    move-result-object v1

    .line 87
    new-instance v2, Lcom/callapp/contacts/manager/popup/PopupManager$DismissListener;

    iget-object v3, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->c:Lcom/callapp/contacts/manager/popup/PopupManager;

    iget-object v4, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/callapp/contacts/manager/popup/PopupManager$DismissListener;-><init>(Lcom/callapp/contacts/manager/popup/PopupManager;Ljava/lang/Class;Lcom/callapp/contacts/manager/popup/PopupManager$1;)V

    invoke-virtual {v1, v2}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->a(Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;)V

    .line 88
    iget-object v2, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->c:Lcom/callapp/contacts/manager/popup/PopupManager;

    iget-object v2, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->b:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, v2, v1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Lcom/callapp/contacts/manager/popup/PopupManager;Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/BaseDialogFragment;)V

    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->c:Lcom/callapp/contacts/manager/popup/PopupManager;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/callapp/contacts/manager/popup/PopupManager$1;->a:Lcom/callapp/contacts/manager/popup/DialogPopup;

    invoke-virtual {v0, v1, v2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V

    :cond_2
    return-void
.end method
