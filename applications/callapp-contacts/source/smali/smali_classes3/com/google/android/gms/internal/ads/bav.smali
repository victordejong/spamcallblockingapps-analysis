.class public final Lcom/google/android/gms/internal/ads/bav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/aro;
.implements Lcom/google/android/gms/internal/ads/axx;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/wl;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/wo;

.field private final d:Landroid/view/View;

.field private e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/ads/eht$a$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/wl;Landroid/content/Context;Lcom/google/android/gms/internal/ads/wo;Landroid/view/View;Lcom/google/android/gms/internal/ads/eht$a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bav;->a:Lcom/google/android/gms/internal/ads/wl;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bav;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bav;->c:Lcom/google/android/gms/internal/ads/wo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/bav;->d:Landroid/view/View;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/bav;->f:Lcom/google/android/gms/internal/ads/eht$a$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/tp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 21
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bav;->c:Lcom/google/android/gms/internal/ads/wo;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bav;->b:Landroid/content/Context;

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 22
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/bav;->c:Lcom/google/android/gms/internal/ads/wo;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/bav;->b:Landroid/content/Context;

    .line 23
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/wo;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bav;->a:Lcom/google/android/gms/internal/ads/wl;

    .line 2022
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/wl;->a:Ljava/lang/String;

    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/tp;->a()Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/tp;->b()I

    move-result p1

    .line 2186
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2188
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_ai"

    .line 2189
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reward_type"

    .line 2190
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "reward_value"

    .line 2191
    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "_ar"

    .line 2192
    invoke-virtual {p2, p3, v1, v0, v3}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2193
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x4b

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Log a Firebase reward video event, reward type: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", reward value: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote Exception to get reward item."

    .line 30
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final c()V
    .locals 10

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bav;->d:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bav;->e:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/bav;->c:Lcom/google/android/gms/internal/ads/wo;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/bav;->e:Ljava/lang/String;

    .line 1102
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1104
    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 1106
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/wo;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1107
    new-instance v4, Lcom/google/android/gms/internal/ads/wy;

    invoke-direct {v4, v0, v3}, Lcom/google/android/gms/internal/ads/wy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "setScreenName"

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/ads/wo;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/wo$a;)V

    goto :goto_0

    .line 1108
    :cond_0
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/wo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v5, "com.google.firebase.analytics.FirebaseAnalytics"

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v5, v4, v6}, Lcom/google/android/gms/internal/ads/wo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "setCurrentScreen"

    .line 1111
    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/internal/ads/wo;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1112
    :try_start_0
    move-object v7, v0

    check-cast v7, Landroid/app/Activity;

    .line 1113
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/wo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1114
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v6

    aput-object v3, v9, v1

    const/4 v3, 0x2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v3

    .line 1115
    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1118
    :catch_0
    invoke-virtual {v2, v4, v6}, Lcom/google/android/gms/internal/ads/wo;->a(Ljava/lang/String;Z)V

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bav;->a:Lcom/google/android/gms/internal/ads/wl;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wl;->a(Z)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bav;->a:Lcom/google/android/gms/internal/ads/wl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wl;->a(Z)V

    return-void
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 3

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bav;->c:Lcom/google/android/gms/internal/ads/wo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bav;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/wo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bav;->e:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bav;->f:Lcom/google/android/gms/internal/ads/eht$a$a;

    sget-object v2, Lcom/google/android/gms/internal/ads/eht$a$a;->zzbzs:Lcom/google/android/gms/internal/ads/eht$a$a;

    if-ne v1, v2, :cond_0

    const-string v1, "/Rewarded"

    goto :goto_0

    :cond_0
    const-string v1, "/Interstitial"

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/bav;->e:Ljava/lang/String;

    return-void
.end method
