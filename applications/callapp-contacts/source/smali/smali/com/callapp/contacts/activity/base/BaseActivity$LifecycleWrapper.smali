.class Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;
.super Landroidx/lifecycle/LifecycleRegistry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LifecycleWrapper"
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/LifecycleRegistry;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/callapp/contacts/activity/base/BaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/activity/base/BaseActivity;Landroidx/lifecycle/LifecycleRegistry;)V
    .locals 1

    .line 168
    invoke-direct {p0, p1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/p;)V

    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->b:Ljava/lang/ref/WeakReference;

    .line 170
    iput-object p2, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a:Landroidx/lifecycle/LifecycleRegistry;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/j$a;)V
    .locals 9

    .line 218
    const-class v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "internalHandleLifecycleEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    if-eqz v0, :cond_12

    .line 222
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$000(Lcom/callapp/contacts/activity/base/BaseActivity;)Landroidx/lifecycle/j$a;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 223
    const-class v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "internalHandleLifecycleEvent duplicate event - DO NOTHING: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 227
    :cond_0
    sget-object v1, Lcom/callapp/contacts/activity/base/BaseActivity$5;->a:[I

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, ", Dropping due to same focus state event: "

    const-string v3, ", adding pending event: "

    const-string v4, ", Dropping due to firedEventRelatedToFocus event: "

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v1, v8, :cond_5

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_1

    if-eq v1, v5, :cond_1

    goto/16 :goto_0

    .line 247
    :cond_1
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$200(Lcom/callapp/contacts/activity/base/BaseActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$300(Lcom/callapp/contacts/activity/base/BaseActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    const-class v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 250
    :cond_2
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$400(Lcom/callapp/contacts/activity/base/BaseActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$300(Lcom/callapp/contacts/activity/base/BaseActivity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 251
    const-class v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 253
    :cond_3
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$300(Lcom/callapp/contacts/activity/base/BaseActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    const-class v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 255
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$100(Lcom/callapp/contacts/activity/base/BaseActivity;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 258
    :cond_4
    sget-object v1, Landroidx/lifecycle/j$a;->ON_STOP:Landroidx/lifecycle/j$a;

    if-ne p1, v1, :cond_9

    .line 259
    invoke-static {v0, v8}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$202(Lcom/callapp/contacts/activity/base/BaseActivity;Z)Z

    goto/16 :goto_0

    .line 230
    :cond_5
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$200(Lcom/callapp/contacts/activity/base/BaseActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$300(Lcom/callapp/contacts/activity/base/BaseActivity;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 231
    const-class v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 233
    :cond_6
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$400(Lcom/callapp/contacts/activity/base/BaseActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$300(Lcom/callapp/contacts/activity/base/BaseActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 234
    const-class v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_7
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$300(Lcom/callapp/contacts/activity/base/BaseActivity;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 237
    const-class v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 238
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$100(Lcom/callapp/contacts/activity/base/BaseActivity;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void

    .line 241
    :cond_8
    sget-object v1, Landroidx/lifecycle/j$a;->ON_RESUME:Landroidx/lifecycle/j$a;

    if-ne p1, v1, :cond_9

    .line 242
    invoke-static {v0, v8}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$202(Lcom/callapp/contacts/activity/base/BaseActivity;Z)Z

    .line 264
    :cond_9
    :goto_0
    const-class v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Firing event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 266
    invoke-static {v0, p1}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$002(Lcom/callapp/contacts/activity/base/BaseActivity;Landroidx/lifecycle/j$a;)Landroidx/lifecycle/j$a;

    .line 267
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    .line 269
    sget-object v1, Lcom/callapp/contacts/activity/base/BaseActivity$5;->a:[I

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/16 v1, 0x1d

    if-eq p1, v8, :cond_10

    if-eq p1, v7, :cond_e

    if-eq p1, v6, :cond_c

    if-eq p1, v5, :cond_a

    goto/16 :goto_1

    .line 292
    :cond_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_b

    .line 293
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->j(Landroid/app/Activity;)V

    .line 294
    :cond_b
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->l(Landroid/app/Activity;)V

    .line 295
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_12

    .line 296
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->k(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 285
    :cond_c
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_d

    .line 286
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->g(Landroid/app/Activity;)V

    .line 287
    :cond_d
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->i(Landroid/app/Activity;)V

    .line 288
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_12

    .line 289
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->h(Landroid/app/Activity;)V

    return-void

    .line 278
    :cond_e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_f

    .line 279
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->d(Landroid/app/Activity;)V

    .line 280
    :cond_f
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->f(Landroid/app/Activity;)V

    .line 281
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_12

    .line 282
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->e(Landroid/app/Activity;)V

    return-void

    .line 271
    :cond_10
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_11

    .line 272
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->a(Landroid/app/Activity;)V

    .line 273
    :cond_11
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->c(Landroid/app/Activity;)V

    .line 274
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v1, :cond_12

    .line 275
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/callapp/contacts/CallAppApplication;->getFilteredActivityLifecycleCallback()Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/callapp/contacts/CallAppApplication$FilteredActivityLifecycleCallback;->b(Landroid/app/Activity;)V

    :cond_12
    :goto_1
    return-void
.end method

.method public addObserver(Landroidx/lifecycle/o;)V
    .locals 3

    .line 175
    const-class v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addObserver observer="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->addObserver(Landroidx/lifecycle/o;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 313
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 314
    check-cast p1, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;

    .line 315
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a:Landroidx/lifecycle/LifecycleRegistry;

    iget-object p1, p1, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 316
    :cond_2
    const-class v1, Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 317
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public getCurrentState()Landroidx/lifecycle/j$b;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0}, Landroidx/lifecycle/LifecycleRegistry;->getCurrentState()Landroidx/lifecycle/j$b;

    move-result-object v0

    return-object v0
.end method

.method public getObserverCount()I
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0}, Landroidx/lifecycle/LifecycleRegistry;->getObserverCount()I

    move-result v0

    return v0
.end method

.method public handleLifecycleEvent(Landroidx/lifecycle/j$a;)V
    .locals 4

    .line 200
    const-class v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleLifecycleEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    if-eqz v0, :cond_0

    .line 204
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$000(Lcom/callapp/contacts/activity/base/BaseActivity;)Landroidx/lifecycle/j$a;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 205
    const-class v1, Lcom/callapp/contacts/activity/base/BaseActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleLifecycleEvent firing duplicate event and clearing pendingEvents: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/j$a;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pending: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$100(Lcom/callapp/contacts/activity/base/BaseActivity;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 206
    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->access$100(Lcom/callapp/contacts/activity/base/BaseActivity;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 209
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/j$a;)V

    return-void

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a(Landroidx/lifecycle/j$a;)V

    return-void
.end method

.method public markState(Landroidx/lifecycle/j$b;)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->markState(Landroidx/lifecycle/j$b;)V

    return-void
.end method

.method public removeObserver(Landroidx/lifecycle/o;)V
    .locals 3

    .line 182
    const-class v0, Lcom/callapp/contacts/activity/base/BaseActivity;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "removeObserver observer="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CLog;->a(Ljava/lang/Class;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/callapp/contacts/activity/base/BaseActivity$LifecycleWrapper;->a:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->removeObserver(Landroidx/lifecycle/o;)V

    return-void
.end method
