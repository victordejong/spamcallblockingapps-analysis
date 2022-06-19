.class public Lcom/callapp/contacts/util/video/VideoCacheManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/ManagedLifecycle;


# instance fields
.field private a:Lcom/google/android/exoplayer2/upstream/cache/n;

.field private b:Lcom/google/android/exoplayer2/source/x$a;

.field private c:Lcom/google/android/exoplayer2/source/x$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/callapp/contacts/util/video/VideoCacheManager;
    .locals 1

    .line 56
    invoke-static {}, Lcom/callapp/contacts/manager/Singletons;->get()Lcom/callapp/contacts/manager/Singletons;

    move-result-object v0

    invoke-virtual {v0}, Lcom/callapp/contacts/manager/Singletons;->getVideoCacheManager()Lcom/callapp/contacts/util/video/VideoCacheManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/r;
    .locals 1

    .line 60
    invoke-static {p1}, Lcom/callapp/framework/util/StringUtils;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoCacheManager;->b:Lcom/google/android/exoplayer2/source/x$a;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/x$a;->a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/x;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoCacheManager;->c:Lcom/google/android/exoplayer2/source/x$a;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/x$a;->a(Landroid/net/Uri;)Lcom/google/android/exoplayer2/source/x;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/callapp/contacts/util/video/VideoCacheManager;->a:Lcom/google/android/exoplayer2/upstream/cache/n;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/cache/n;->b()V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 5

    .line 37
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/callapp/contacts/CallAppApplication;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "media"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    new-instance v1, Lcom/google/android/exoplayer2/upstream/cache/m;

    const-wide/32 v2, 0xfa00000

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/cache/m;-><init>(J)V

    .line 39
    new-instance v2, Lcom/google/android/exoplayer2/upstream/cache/n;

    new-instance v3, Lcom/google/android/exoplayer2/database/b;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/database/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/upstream/cache/n;-><init>(Ljava/io/File;Lcom/google/android/exoplayer2/upstream/cache/c;Lcom/google/android/exoplayer2/database/a;)V

    iput-object v2, p0, Lcom/callapp/contacts/util/video/VideoCacheManager;->a:Lcom/google/android/exoplayer2/upstream/cache/n;

    .line 40
    new-instance v0, Lcom/google/android/exoplayer2/upstream/cache/b;

    new-instance v1, Lcom/google/android/exoplayer2/c/a/b;

    invoke-static {}, Lcom/callapp/contacts/util/http/HttpUtils;->getExternalClient()Lokhttp3/OkHttpClient;

    move-result-object v3

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/callapp/contacts/util/http/HttpUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/google/android/exoplayer2/c/a/b;-><init>(Lokhttp3/Call$Factory;Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/exoplayer2/upstream/cache/b;-><init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/h$a;I)V

    .line 42
    new-instance v1, Lcom/google/android/exoplayer2/upstream/n;

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v2

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v3

    invoke-static {}, Lcom/callapp/contacts/CallAppApplication;->get()Lcom/callapp/contacts/CallAppApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/callapp/contacts/CallAppApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    new-instance v2, Lcom/google/android/exoplayer2/source/x$a;

    invoke-direct {v2, v0}, Lcom/google/android/exoplayer2/source/x$a;-><init>(Lcom/google/android/exoplayer2/upstream/h$a;)V

    iput-object v2, p0, Lcom/callapp/contacts/util/video/VideoCacheManager;->b:Lcom/google/android/exoplayer2/source/x$a;

    .line 44
    new-instance v0, Lcom/google/android/exoplayer2/source/x$a;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/x$a;-><init>(Lcom/google/android/exoplayer2/upstream/h$a;)V

    iput-object v0, p0, Lcom/callapp/contacts/util/video/VideoCacheManager;->c:Lcom/google/android/exoplayer2/source/x$a;

    return-void
.end method
