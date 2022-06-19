.class public Lcom/bytedance/sdk/openadsdk/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/utils/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/bytedance/sdk/openadsdk/IListenerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->a:Ljava/util/Map;

    return-void
.end method

.method static synthetic a()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .locals 1

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/g;->b()Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/g$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/g$1;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 53
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/g;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/g$a;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 58
    :cond_2
    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/utils/g$a;->a()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/g$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/g$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    .line 80
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/g;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/g$a;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 84
    :cond_2
    invoke-interface {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/g$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static b()Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .locals 2

    .line 118
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_0

    .line 119
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;

    move-result-object v0

    const/4 v1, 0x4

    .line 120
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a;->a(I)Landroid/os/IBinder;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/a/c;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 124
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->b:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/utils/g$a;
    .locals 1

    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/g;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/utils/g$a;

    return-object p0
.end method
