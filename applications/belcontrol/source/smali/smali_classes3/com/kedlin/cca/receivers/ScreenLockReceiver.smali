.class public Lcom/kedlin/cca/receivers/ScreenLockReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# static fields
.field public static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Landroid/app/Activity;
    .locals 6

    sget-object v0, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    instance-of v5, v4, Lcom/flexaspect/android/everycallcontrol/ui/activities/MainActivity;

    if-eqz v5, :cond_0

    check-cast v4, Landroid/app/Activity;

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public static b(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-object p1, Lcom/kedlin/cca/receivers/ScreenLockReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p1, v0

    instance-of v2, v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    :goto_1
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_0
    instance-of v2, v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;

    invoke-virtual {v1}, Lcom/flexaspect/android/everycallcontrol/ui/activities/ComposeActivity;->k()V

    goto :goto_2

    :cond_1
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/app/Activity;

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lka1;->e()V

    return-void
.end method
