.class public final Lcom/google/firebase/remoteconfig/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B


# instance fields
.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lcom/google/firebase/remoteconfig/internal/a;

.field public final d:Lcom/google/firebase/remoteconfig/internal/a;

.field final e:Lcom/google/firebase/remoteconfig/internal/a;

.field public final f:Lcom/google/firebase/remoteconfig/internal/l;

.field private final g:Landroid/content/Context;

.field private final h:Lcom/google/firebase/b;

.field private final i:Lcom/google/firebase/abt/b;

.field private final j:Lcom/google/firebase/remoteconfig/internal/g;

.field private final k:Lcom/google/firebase/remoteconfig/internal/n;

.field private final l:Lcom/google/firebase/installations/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 101
    sput-object v0, Lcom/google/firebase/remoteconfig/a;->a:[B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/b;Lcom/google/firebase/installations/h;Lcom/google/firebase/abt/b;Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/a;Lcom/google/firebase/remoteconfig/internal/g;Lcom/google/firebase/remoteconfig/internal/l;Lcom/google/firebase/remoteconfig/internal/n;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/google/firebase/remoteconfig/a;->g:Landroid/content/Context;

    .line 173
    iput-object p2, p0, Lcom/google/firebase/remoteconfig/a;->h:Lcom/google/firebase/b;

    .line 174
    iput-object p3, p0, Lcom/google/firebase/remoteconfig/a;->l:Lcom/google/firebase/installations/h;

    .line 175
    iput-object p4, p0, Lcom/google/firebase/remoteconfig/a;->i:Lcom/google/firebase/abt/b;

    .line 176
    iput-object p5, p0, Lcom/google/firebase/remoteconfig/a;->b:Ljava/util/concurrent/Executor;

    .line 177
    iput-object p6, p0, Lcom/google/firebase/remoteconfig/a;->c:Lcom/google/firebase/remoteconfig/internal/a;

    .line 178
    iput-object p7, p0, Lcom/google/firebase/remoteconfig/a;->d:Lcom/google/firebase/remoteconfig/internal/a;

    .line 179
    iput-object p8, p0, Lcom/google/firebase/remoteconfig/a;->e:Lcom/google/firebase/remoteconfig/internal/a;

    .line 180
    iput-object p9, p0, Lcom/google/firebase/remoteconfig/a;->j:Lcom/google/firebase/remoteconfig/internal/g;

    .line 181
    iput-object p10, p0, Lcom/google/firebase/remoteconfig/a;->f:Lcom/google/firebase/remoteconfig/internal/l;

    .line 182
    iput-object p11, p0, Lcom/google/firebase/remoteconfig/a;->k:Lcom/google/firebase/remoteconfig/internal/n;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/remoteconfig/a;Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/tasks/h;)Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 243
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 246
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/f;

    .line 249
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/remoteconfig/internal/f;

    if-eqz p2, :cond_2

    .line 5117
    iget-object v0, p1, Lcom/google/firebase/remoteconfig/internal/f;->b:Ljava/util/Date;

    .line 6117
    iget-object p2, p2, Lcom/google/firebase/remoteconfig/internal/f;->b:Ljava/util/Date;

    .line 4662
    invoke-virtual {v0, p2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-nez p2, :cond_3

    .line 252
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0

    .line 256
    :cond_3
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/a;->d:Lcom/google/firebase/remoteconfig/internal/a;

    .line 7116
    invoke-virtual {p2, p1}, Lcom/google/firebase/remoteconfig/internal/a;->a(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    .line 257
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/a;->b:Ljava/util/concurrent/Executor;

    .line 8000
    new-instance v0, Lcom/google/firebase/remoteconfig/b;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/b;-><init>(Lcom/google/firebase/remoteconfig/a;)V

    .line 258
    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/tasks/h;->a(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/b;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0

    .line 244
    :cond_4
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/firebase/b;)Lcom/google/firebase/remoteconfig/a;
    .locals 1

    .line 86
    const-class v0, Lcom/google/firebase/remoteconfig/g;

    invoke-virtual {p0, v0}, Lcom/google/firebase/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/remoteconfig/g;

    const-string v0, "firebase"

    .line 1137
    invoke-virtual {p0, v0}, Lcom/google/firebase/remoteconfig/g;->a(Ljava/lang/String;)Lcom/google/firebase/remoteconfig/a;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/google/android/gms/tasks/h;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "Lcom/google/firebase/remoteconfig/internal/f;",
            ">;)Z"
        }
    .end annotation

    .line 564
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 565
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->c:Lcom/google/firebase/remoteconfig/internal/a;

    .line 1175
    monitor-enter v0

    const/4 v2, 0x0

    .line 1181
    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object v2

    iput-object v2, v0, Lcom/google/firebase/remoteconfig/internal/a;->b:Lcom/google/android/gms/tasks/h;

    .line 1182
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1183
    iget-object v0, v0, Lcom/google/firebase/remoteconfig/internal/a;->a:Lcom/google/firebase/remoteconfig/internal/o;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/o;->b()Ljava/lang/Void;

    .line 570
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/h;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/remoteconfig/internal/f;

    .line 2121
    iget-object p1, p1, Lcom/google/firebase/remoteconfig/internal/f;->c:Lorg/json/JSONArray;

    .line 2610
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->i:Lcom/google/firebase/abt/b;

    if-eqz v0, :cond_3

    .line 2643
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2644
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2645
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2647
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 2648
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 2649
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2650
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2651
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2654
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2619
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/a;->i:Lcom/google/firebase/abt/b;

    .line 3121
    invoke-virtual {p1}, Lcom/google/firebase/abt/b;->a()V

    .line 3127
    invoke-static {v0}, Lcom/google/firebase/abt/b;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/abt/b;->a(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/firebase/abt/AbtException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "Could not update ABT experiments."

    .line 2625
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p1

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "Could not parse ABT experiments from the JSON response."

    .line 2621
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    const-string p1, "FirebaseRemoteConfig"

    const-string v0, "Activated configs written to disk are null."

    .line 574
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 1182
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return v1
.end method

.method static synthetic a(Lcom/google/firebase/remoteconfig/a;Lcom/google/android/gms/tasks/h;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/a;->a(Lcom/google/android/gms/tasks/h;)Z

    move-result p0

    return p0
.end method

.method static synthetic c()Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 598
    invoke-static {v0}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d()Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 314
    invoke-static {v0}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Lcom/google/android/gms/tasks/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 287
    invoke-static {v0}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->j:Lcom/google/firebase/remoteconfig/internal/g;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/g;->a()Lcom/google/android/gms/tasks/h;

    move-result-object v0

    .line 287
    invoke-static {}, Lcom/google/firebase/remoteconfig/d;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/util/Map;)Lcom/google/android/gms/tasks/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 590
    :try_start_0
    invoke-static {}, Lcom/google/firebase/remoteconfig/internal/f;->a()Lcom/google/firebase/remoteconfig/internal/f$a;

    move-result-object v0

    .line 3173
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lcom/google/firebase/remoteconfig/internal/f$a;->a:Lorg/json/JSONObject;

    .line 590
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/f$a;->a()Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->e:Lcom/google/firebase/remoteconfig/internal/a;

    .line 4116
    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/a;->a(Lcom/google/firebase/remoteconfig/internal/f;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    .line 598
    invoke-static {}, Lcom/google/firebase/remoteconfig/f;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "FirebaseRemoteConfig"

    const-string v1, "The provided defaults map could not be processed."

    .line 592
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 593
    invoke-static {p1}, Lcom/google/android/gms/tasks/k;->a(Ljava/lang/Object;)Lcom/google/android/gms/tasks/h;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->f:Lcom/google/firebase/remoteconfig/internal/l;

    invoke-virtual {v0, p1}, Lcom/google/firebase/remoteconfig/internal/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lcom/google/android/gms/tasks/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/a;->j:Lcom/google/firebase/remoteconfig/internal/g;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/remoteconfig/internal/g;->a(J)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    .line 314
    invoke-static {}, Lcom/google/firebase/remoteconfig/e;->a()Lcom/google/android/gms/tasks/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/h;->a(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/h;

    move-result-object v0

    return-object v0
.end method
