.class public Lorg/mistergroup/shouldianswer/utils/CoroutineLifecycleListener_LifecycleAdapter;
.super Ljava/lang/Object;
.source "CoroutineLifecycleListener_LifecycleAdapter.java"

# interfaces
.implements Landroidx/lifecycle/e;


# instance fields
.field final a:Lorg/mistergroup/shouldianswer/utils/CoroutineLifecycleListener;


# direct methods
.method constructor <init>(Lorg/mistergroup/shouldianswer/utils/CoroutineLifecycleListener;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/mistergroup/shouldianswer/utils/CoroutineLifecycleListener_LifecycleAdapter;->a:Lorg/mistergroup/shouldianswer/utils/CoroutineLifecycleListener;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/k;Landroidx/lifecycle/g$a;ZLandroidx/lifecycle/o;)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_1

    return-void

    .line 23
    :cond_1
    sget-object p3, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    if-ne p2, p3, :cond_3

    if-eqz v0, :cond_2

    const-string p2, "cancelCoroutine"

    .line 24
    invoke-virtual {p4, p2, p1}, Landroidx/lifecycle/o;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 25
    :cond_2
    iget-object p1, p0, Lorg/mistergroup/shouldianswer/utils/CoroutineLifecycleListener_LifecycleAdapter;->a:Lorg/mistergroup/shouldianswer/utils/CoroutineLifecycleListener;

    invoke-virtual {p1}, Lorg/mistergroup/shouldianswer/utils/CoroutineLifecycleListener;->cancelCoroutine()V

    :cond_3
    return-void
.end method
