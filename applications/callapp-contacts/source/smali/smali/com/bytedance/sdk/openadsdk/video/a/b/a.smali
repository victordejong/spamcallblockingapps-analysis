.class public Lcom/bytedance/sdk/openadsdk/video/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/video/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/video/a/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/video/a/b/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/video/a/b/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 0

    .line 59
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/video/d/c;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/video/b/a;)V
    .locals 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 26
    sget-object v0, Lcom/bytedance/sdk/openadsdk/video/a/b/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/video/a/c/a;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/video/b/a;->c()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/video/b/a;I)V

    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/video/a/c/a;->b()V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "preloadVideo:  cache size = "

    aput-object v1, p0, v0

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/video/b/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/video/b/a;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "VideoFileManager"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
