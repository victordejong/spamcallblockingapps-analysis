.class public Lcom/callapp/contacts/manager/FilteredReceiversManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/manager/FilteredReceiversManager$BroadcastReceiverWrapperFilter;
    }
.end annotation


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/BroadcastReceiver;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a:Ljava/util/Map;

    const/4 v0, 0x0

    .line 23
    sput-boolean v0, Lcom/callapp/contacts/manager/FilteredReceiversManager;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 2

    .line 78
    const-class v0, Lcom/callapp/contacts/manager/FilteredReceiversManager;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unregisterReceiver receiver="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    return-object p0

    .line 83
    :cond_0
    sget-object v0, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/BroadcastReceiver;
    .locals 4

    .line 67
    const-class v0, Lcom/callapp/contacts/manager/FilteredReceiversManager;

    invoke-static {v0}, Lcom/callapp/framework/util/StringUtils;->a(Ljava/lang/Class;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerReceiver receiver="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1094
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    new-instance v2, Landroid/util/StringBuilderPrinter;

    invoke-direct {v2, v1}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const-string v3, ""

    .line 1096
    invoke-virtual {p1, v2, v3}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 1097
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    .line 2050
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".callapp."

    .line 2053
    invoke-static {v0, v1}, Lcom/callapp/framework/util/StringUtils;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 2054
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2057
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 2058
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2060
    new-instance v0, Lcom/callapp/contacts/manager/FilteredReceiversManager$BroadcastReceiverWrapperFilter;

    invoke-direct {v0, p1, p0}, Lcom/callapp/contacts/manager/FilteredReceiversManager$BroadcastReceiverWrapperFilter;-><init>(Ljava/util/Set;Landroid/content/BroadcastReceiver;)V

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    if-eq v0, p0, :cond_2

    .line 71
    sget-object p1, Lcom/callapp/contacts/manager/FilteredReceiversManager;->a:Ljava/util/Map;

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .line 101
    sget-boolean v0, Lcom/callapp/contacts/manager/FilteredReceiversManager;->b:Z

    if-nez v0, :cond_0

    .line 103
    :try_start_0
    const-class v0, Landroid/app/KeyguardManager;

    invoke-static {v0}, Lcom/callapp/contacts/util/ReflectionUtils;->b(Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v0, 0x1

    .line 107
    sput-boolean v0, Lcom/callapp/contacts/manager/FilteredReceiversManager;->b:Z

    .line 110
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-nez v0, :cond_1

    return-object v0

    .line 115
    :cond_1
    :try_start_1
    new-instance v1, Landroid/app/a;

    invoke-direct {v1, v0}, Landroid/app/a;-><init>(Landroid/app/KeyguardManager;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v1

    :catchall_1
    return-object v0
.end method
