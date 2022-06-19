.class public Lcom/callapp/contacts/manager/popup/PopupManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/popup/PopupManager$DismissListener;,
        Lcom/callapp/contacts/manager/popup/PopupManager$DialogFragmentDismissListener;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/util/Collection<",
            "Landroidx/fragment/app/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/callapp/contacts/manager/popup/Popup;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->b:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;Z)V
    .locals 3

    if-eqz p1, :cond_3

    .line 63
    instance-of v0, p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 65
    invoke-static {v0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance p1, Lcom/callapp/contacts/manager/popup/PopupManager$1;

    invoke-direct {p1, p0, p2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager$1;-><init>(Lcom/callapp/contacts/manager/popup/PopupManager;Lcom/callapp/contacts/manager/popup/DialogPopup;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 100
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result v0

    if-nez v0, :cond_4

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 102
    invoke-virtual {p0, v0, p2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(ILcom/callapp/contacts/manager/popup/Popup;)V

    .line 104
    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    const-class v2, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;

    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "EXTRA_POPUP_ID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    if-eqz p3, :cond_2

    .line 106
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    .line 108
    :cond_2
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/Activities;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    .line 112
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "Got null as a context to popup manager"

    invoke-static {p1, p2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/popup/PopupManager;Landroid/app/Activity;Lcom/callapp/contacts/manager/popup/BaseDialogFragment;)V
    .locals 2

    .line 3183
    instance-of v0, p1, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;

    if-eqz v0, :cond_0

    .line 3184
    check-cast p1, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;

    invoke-virtual {p1, p2}, Lcom/callapp/contacts/manager/popup/DialogPopupActivity;->a(Lcom/callapp/contacts/manager/popup/BaseDialogFragment;)V

    return-void

    .line 3188
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    monitor-enter v0

    .line 3190
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 3191
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-nez v1, :cond_1

    .line 3193
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Lcom/callapp/common/util/Sets;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 3194
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3197
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3198
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/callapp/contacts/manager/popup/PopupManager;Ljava/lang/Class;Lcom/callapp/contacts/manager/popup/BaseDialogFragment;)V
    .locals 2

    .line 3202
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    monitor-enter v0

    .line 3203
    :try_start_0
    iget-object p0, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 3204
    invoke-static {p0}, Lcom/callapp/framework/util/CollectionUtils;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3205
    invoke-interface {p0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3207
    invoke-virtual {p2}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 4127
    iget-boolean v1, p2, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->c:Z

    if-eqz v1, :cond_0

    .line 3209
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-nez p0, :cond_0

    instance-of p0, p1, Lcom/callapp/contacts/util/BaseTransparentActivity;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/callapp/contacts/util/BaseTransparentActivity;

    .line 3211
    invoke-virtual {p1}, Lcom/callapp/contacts/util/BaseTransparentActivity;->finishActivityOnLastPopupCanceled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3213
    invoke-virtual {p2}, Lcom/callapp/contacts/manager/popup/BaseDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 3216
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Landroidx/fragment/app/FragmentActivity;)Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 118
    invoke-static {p0}, Lcom/callapp/contacts/util/Activities;->a(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2169
    iget-boolean p0, v0, Landroidx/fragment/app/FragmentManager;->v:Z

    if-nez p0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->f()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private c()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 231
    new-instance v3, Ljava/util/WeakHashMap;

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v3}, Lcom/callapp/common/util/Sets;->a(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v3

    .line 232
    invoke-interface {v3, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 234
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/c;

    .line 235
    invoke-virtual {p0, v3}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroidx/fragment/app/c;)V

    goto :goto_0

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 240
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static get()Lcom/callapp/contacts/manager/popup/PopupManager;
    .locals 1

    .line 310
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getPopupManager()Lcom/callapp/contacts/manager/popup/PopupManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/Intent;)Lcom/callapp/contacts/manager/popup/Popup;
    .locals 1

    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "EXTRA_POPUP_ID"

    .line 293
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 295
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Ljava/lang/Integer;)Lcom/callapp/contacts/manager/popup/Popup;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method final a(Ljava/lang/Integer;)Lcom/callapp/contacts/manager/popup/Popup;
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/callapp/contacts/manager/popup/Popup;

    if-nez p1, :cond_0

    .line 283
    invoke-static {}, Lcom/callapp/contacts/manager/FeedbackManager;->get()Lcom/callapp/contacts/manager/FeedbackManager;

    move-result-object v0

    const/16 v1, 0x50

    const-string v2, "PopupManager.getPopup returning null"

    .line 2206
    invoke-virtual {v0, v2, v1}, Lcom/callapp/contacts/manager/FeedbackManager;->a(Ljava/lang/String;I)V

    .line 284
    const-class v0, Lcom/callapp/contacts/manager/popup/PopupManager;

    invoke-static {v0, v2}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public final a()V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/PopupManager;->b()V

    .line 221
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/PopupManager;->c()V

    return-void
.end method

.method protected final a(ILcom/callapp/contacts/manager/popup/Popup;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 1

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, p1, p2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;I)V

    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/ResultPopup;I)V
    .locals 2

    .line 156
    iget-object p3, p0, Lcom/callapp/contacts/manager/popup/PopupManager;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    .line 157
    iput p3, p2, Lcom/callapp/contacts/manager/popup/ResultPopup;->e:I

    .line 158
    invoke-virtual {p0, p3, p2}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(ILcom/callapp/contacts/manager/popup/Popup;)V

    .line 160
    new-instance p2, Landroid/content/Intent;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-class v1, Lcom/callapp/contacts/manager/popup/ResultPopupActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/callapp/contacts/util/Activities;->getIntentFlagForNewDocument()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "EXTRA_POPUP_ID"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "IS_USING_TRANSITION"

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    .line 163
    instance-of p3, p1, Landroid/app/Activity;

    if-nez p3, :cond_0

    .line 164
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 165
    move-object p3, p1

    check-cast p3, Landroid/content/ContextWrapper;

    invoke-virtual {p3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    instance-of p3, p3, Landroid/app/Activity;

    :cond_0
    if-nez p3, :cond_1

    const/high16 p3, 0x10000000

    .line 169
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    :cond_1
    invoke-static {}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->get()Lcom/callapp/contacts/manager/phone/PhoneStateManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/callapp/contacts/manager/phone/PhoneStateManager;->isIncomingCallRingingState()Z

    move-result p3

    if-nez p3, :cond_2

    .line 177
    invoke-static {p1, p2}, Lcom/callapp/contacts/util/Activities;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_2
    return-void
.end method

.method public a(Landroidx/fragment/app/c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {p1}, Landroidx/fragment/app/c;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    :try_start_0
    invoke-virtual {p1}, Landroidx/fragment/app/c;->b()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->b(Ljava/lang/Class;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/callapp/contacts/manager/popup/PopupManager;->a(Landroid/content/Context;Lcom/callapp/contacts/manager/popup/DialogPopup;Z)V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 276
    invoke-direct {p0}, Lcom/callapp/contacts/manager/popup/PopupManager;->b()V

    return-void
.end method

.method public init()V
    .locals 0

    return-void
.end method
