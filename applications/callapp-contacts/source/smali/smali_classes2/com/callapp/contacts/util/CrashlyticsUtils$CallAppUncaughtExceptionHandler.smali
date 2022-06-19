.class Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/util/CrashlyticsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallAppUncaughtExceptionHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->b:Ljava/lang/ref/WeakReference;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->c:Ljava/util/HashMap;

    .line 67
    iput-object p2, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 70
    new-instance p2, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler$1;

    invoke-direct {p2, p0}, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler$1;-><init>(Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;)V

    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->b:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic a(Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;)Ljava/util/HashMap;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->c:Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public getLastActivity()Landroid/app/Activity;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    .line 153
    :goto_0
    const-class p1, Lcom/callapp/contacts/util/CrashlyticsUtils;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CRASH"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    invoke-virtual {p0}, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->getLastActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1169
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 2142
    iget-object p1, p0, Lcom/callapp/contacts/util/CrashlyticsUtils$CallAppUncaughtExceptionHandler;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1173
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/16 p1, 0xa

    .line 1174
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
