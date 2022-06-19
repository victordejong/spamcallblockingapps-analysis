.class Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;-><init>(Landroid/app/Application;Ljava/lang/Thread$UncaughtExceptionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler$1;->a:Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 97
    sget-object v0, Lcom/callapp/contacts/manager/preferences/Prefs;->n:Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/preferences/prefs/CachedPref;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "activity"

    .line 1120
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mContext"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1124
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    or-int/lit8 v2, v1, 0x8

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    .line 1127
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v1, 0x0

    .line 1129
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1130
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 103
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler$1;->a:Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;

    invoke-static {v0}, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->a(Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object p1, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler$1;->a:Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;

    invoke-static {p1}, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->a(Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/callapp/framework/util/CollectionUtils;->a(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    invoke-static {}, Lcom/callapp/contacts/util/Activities;->c()V

    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler$1;->a:Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->a(Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 76
    iget-object v0, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler$1;->a:Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;

    invoke-static {v0}, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->a(Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
