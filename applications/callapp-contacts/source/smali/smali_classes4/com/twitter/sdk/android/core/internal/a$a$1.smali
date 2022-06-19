.class public final Lcom/twitter/sdk/android/core/internal/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/sdk/android/core/internal/a$b;

.field final synthetic b:Lcom/twitter/sdk/android/core/internal/a$a;


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/a$a;Lcom/twitter/sdk/android/core/internal/a$b;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/a$a$1;->b:Lcom/twitter/sdk/android/core/internal/a$a;

    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/a$a$1;->a:Lcom/twitter/sdk/android/core/internal/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/twitter/sdk/android/core/internal/a$a$1;->a:Lcom/twitter/sdk/android/core/internal/a$b;

    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/internal/a$b;->a()V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
