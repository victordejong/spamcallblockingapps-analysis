.class public final Lcom/google/firebase/remoteconfig/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field static final b:Ljava/util/regex/Pattern;

.field static final c:Ljava/util/regex/Pattern;


# instance fields
.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/util/d<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/remoteconfig/internal/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lcom/google/firebase/remoteconfig/internal/a;

.field public final f:Lcom/google/firebase/remoteconfig/internal/a;

.field private final g:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    .line 66
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/l;->a:Ljava/nio/charset/Charset;

    const-string v0, "^(1|true|t|yes|y|on)$"

    const/4 v1, 0x2

    .line 69
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/l;->b:Ljava/util/regex/Pattern;

    const-string v0, "^(0|false|f|no|n|off|)$"

    .line 72
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/l;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/a;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/l;->d:Ljava/util/Set;

    .line 84
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/l;->g:Ljava/util/concurrent/Executor;

    .line 85
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/l;->e:Lcom/google/firebase/remoteconfig/internal/a;

    .line 86
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/l;->f:Lcom/google/firebase/remoteconfig/internal/a;

    return-void
.end method

.method public static a(Lcom/google/firebase/remoteconfig/internal/a;)Lcom/google/firebase/remoteconfig/internal/f;
    .locals 0

    .line 5089
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/a;->a()Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/firebase/remoteconfig/internal/a;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    .line 4089
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/a;->a()Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 4109
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/f;->a:Lorg/json/JSONObject;

    .line 425
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/util/d;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 0

    .line 369
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/common/util/d;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "No value of type \'%s\' exists for parameter key \'%s\'."

    .line 458
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FirebaseRemoteConfig"

    .line 457
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static b(Lcom/google/firebase/remoteconfig/internal/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3089
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/a;->a()Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3109
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/firebase/remoteconfig/internal/f;->a:Lorg/json/JSONObject;

    .line 389
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/l;->e:Lcom/google/firebase/remoteconfig/internal/a;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/l;->b(Lcom/google/firebase/remoteconfig/internal/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/l;->e:Lcom/google/firebase/remoteconfig/internal/a;

    .line 2089
    invoke-virtual {v1}, Lcom/google/firebase/remoteconfig/internal/a;->a()Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object v1

    .line 105
    invoke-virtual {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/l;->a(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/l;->f:Lcom/google/firebase/remoteconfig/internal/a;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/l;->b(Lcom/google/firebase/remoteconfig/internal/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "String"

    .line 114
    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/l;->d:Ljava/util/Set;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/l;->d:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/util/d;

    .line 369
    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/l;->g:Ljava/util/concurrent/Executor;

    invoke-static {v2, p1, p2}, Lcom/google/firebase/remoteconfig/internal/m;->a(Lcom/google/android/gms/common/util/d;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 371
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
