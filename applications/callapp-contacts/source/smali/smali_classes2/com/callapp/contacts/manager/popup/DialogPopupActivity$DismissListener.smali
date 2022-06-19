.class Lcom/callapp/contacts/manager/popup/DialogPopupActivity$DismissListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/popup/DialogPopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DismissListener"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callapp/contacts/manager/popup/DialogPopupActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopupActivity;)V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity$DismissListener;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/callapp/contacts/manager/popup/DialogPopupActivity;Lcom/callapp/contacts/manager/popup/DialogPopupActivity$1;)V
    .locals 0

    .line 158
    invoke-direct {p0, p1}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity$DismissListener;-><init>(Lcom/callapp/contacts/manager/popup/DialogPopupActivity;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/callapp/contacts/manager/popup/BaseDialogFragment;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity$DismissListener;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;

    .line 170
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity$DismissListener;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v1, 0x0

    .line 171
    iput-object v1, p0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity$DismissListener;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 1137
    iget-object v1, v0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 1138
    :try_start_0
    iget-object v2, v0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->b:Ljava/util/Collection;

    if-eqz v2, :cond_0

    .line 1139
    iget-object v2, v0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->b:Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1145
    :cond_0
    iget-boolean p1, v0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->c:Z

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object p1, v0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->b:Ljava/util/Collection;

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->b:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1146
    :cond_1
    invoke-virtual {v0}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->finish()V

    .line 1147
    invoke-virtual {v0, v2, v2}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->overridePendingTransition(II)V

    .line 1150
    :cond_2
    iput-boolean v2, v0, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->c:Z

    .line 1151
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method
