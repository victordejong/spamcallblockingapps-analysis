.class public final Lcom/google/android/gms/internal/ads/efb;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:Z

.field b:Z

.field public final c:Ljava/lang/Object;

.field final d:Lcom/google/android/gms/internal/ads/eey;

.field final e:I

.field final f:I

.field final g:I

.field final h:I

.field final i:I

.field final j:I

.field final k:I

.field final l:Ljava/lang/String;

.field final m:Z

.field final n:Z

.field final o:Z

.field private p:Z

.field private final q:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/eey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eey;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/efb;-><init>(Lcom/google/android/gms/internal/ads/eey;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/eey;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/efb;->a:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/efb;->b:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/efb;->p:Z

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/efb;->d:Lcom/google/android/gms/internal/ads/eey;

    .line 8
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/efb;->c:Ljava/lang/Object;

    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/cj;->d:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/efb;->e:I

    .line 10
    sget-object p1, Lcom/google/android/gms/internal/ads/cj;->a:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/efb;->f:I

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/cj;->e:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/efb;->g:I

    .line 12
    sget-object p1, Lcom/google/android/gms/internal/ads/cj;->c:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/efb;->h:I

    .line 13
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->L:Lcom/google/android/gms/internal/ads/af;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/efb;->i:I

    .line 16
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->M:Lcom/google/android/gms/internal/ads/af;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/efb;->j:I

    .line 19
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->N:Lcom/google/android/gms/internal/ads/af;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/efb;->k:I

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/cj;->f:Lcom/google/android/gms/internal/ads/bz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/bz;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/efb;->q:I

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->P:Lcom/google/android/gms/internal/ads/af;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/efb;->l:Ljava/lang/String;

    .line 26
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->Q:Lcom/google/android/gms/internal/ads/af;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/efb;->m:Z

    .line 29
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->R:Lcom/google/android/gms/internal/ads/af;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/efb;->n:Z

    .line 32
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->S:Lcom/google/android/gms/internal/ads/af;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/efb;->o:Z

    const-string p1, "ContentFetchTask"

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/efb;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private static a()Z
    .locals 7

    const/4 v0, 0x0

    .line 111
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/internal/ads/eex;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/eex;->b()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string v2, "activity"

    .line 115
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const-string v3, "keyguard"

    .line 117
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_5

    if-nez v3, :cond_1

    goto :goto_1

    .line 121
    :cond_1
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    .line 124
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 125
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_3

    .line 127
    iget v2, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v2, v4, :cond_5

    .line 129
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "power"

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_1
    return v0

    :catchall_0
    move-exception v1

    .line 139
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    const-string v3, "ContentFetchTask.isInForeground"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method private final b()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efb;->c:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 211
    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/efb;->b:Z

    const/16 v2, 0x2a

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 213
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method final a(Landroid/view/View;Lcom/google/android/gms/internal/ads/eev;)Lcom/google/android/gms/internal/ads/eff;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 142
    new-instance p1, Lcom/google/android/gms/internal/ads/eff;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/eff;-><init>(Lcom/google/android/gms/internal/ads/efb;II)V

    return-object p1

    .line 143
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 144
    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    .line 145
    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroid/widget/EditText;

    if-nez v1, :cond_2

    .line 146
    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 147
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v7, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float v8, p1

    move-object v2, p2

    .line 1040
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/eev;->b(Ljava/lang/String;ZFFFF)V

    .line 153
    new-instance p1, Lcom/google/android/gms/internal/ads/eff;

    invoke-direct {p1, p0, v9, v0}, Lcom/google/android/gms/internal/ads/eff;-><init>(Lcom/google/android/gms/internal/ads/efb;II)V

    return-object p1

    .line 154
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/eff;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/eff;-><init>(Lcom/google/android/gms/internal/ads/efb;II)V

    return-object p1

    .line 155
    :cond_2
    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_5

    instance-of v1, p1, Lcom/google/android/gms/internal/ads/adt;

    if-nez v1, :cond_5

    .line 156
    check-cast p1, Landroid/webkit/WebView;

    .line 157
    invoke-static {}, Lcom/google/android/gms/common/util/n;->e()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 2031
    :cond_3
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/eev;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2032
    :try_start_0
    iget v2, p2, Lcom/google/android/gms/internal/ads/eev;->d:I

    add-int/2addr v2, v9

    iput v2, p2, Lcom/google/android/gms/internal/ads/eev;->d:I

    .line 2033
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    new-instance v1, Lcom/google/android/gms/internal/ads/efd;

    invoke-direct {v1, p0, p2, p1, v4}, Lcom/google/android/gms/internal/ads/efd;-><init>(Lcom/google/android/gms/internal/ads/efb;Lcom/google/android/gms/internal/ads/eev;Landroid/webkit/WebView;Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_4

    .line 163
    new-instance p1, Lcom/google/android/gms/internal/ads/eff;

    invoke-direct {p1, p0, v0, v9}, Lcom/google/android/gms/internal/ads/eff;-><init>(Lcom/google/android/gms/internal/ads/efb;II)V

    return-object p1

    .line 164
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/eff;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/eff;-><init>(Lcom/google/android/gms/internal/ads/efb;II)V

    return-object p1

    :catchall_0
    move-exception p1

    .line 2033
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 165
    :cond_5
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 166
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 169
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/google/android/gms/internal/ads/efb;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/eev;)Lcom/google/android/gms/internal/ads/eff;

    move-result-object v3

    .line 171
    iget v4, v3, Lcom/google/android/gms/internal/ads/eff;->a:I

    add-int/2addr v1, v4

    .line 172
    iget v3, v3, Lcom/google/android/gms/internal/ads/eff;->b:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 174
    :cond_6
    new-instance p1, Lcom/google/android/gms/internal/ads/eff;

    invoke-direct {p1, p0, v1, v2}, Lcom/google/android/gms/internal/ads/eff;-><init>(Lcom/google/android/gms/internal/ads/efb;II)V

    return-object p1

    .line 175
    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/eff;

    invoke-direct {p1, p0, v0, v0}, Lcom/google/android/gms/internal/ads/eff;-><init>(Lcom/google/android/gms/internal/ads/efb;II)V

    return-object p1
.end method

.method public final run()V
    .locals 4

    .line 45
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/efb;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzky()Lcom/google/android/gms/internal/ads/eex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/eex;->a()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ContentFetchThread: no activity. Sleeping."

    .line 48
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/efb;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 53
    :try_start_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 57
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v2

    const-string v3, "ContentFetchTask.extractContent"

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Failed getting root view of activity. Content not extracted."

    .line 58
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v1, :cond_3

    .line 63
    new-instance v0, Lcom/google/android/gms/internal/ads/efe;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/efe;-><init>(Lcom/google/android/gms/internal/ads/efb;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_2
    const-string v0, "ContentFetchTask: sleeping"

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/efb;->b()V

    .line 69
    :cond_3
    :goto_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/efb;->q:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    .line 75
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkz()Lcom/google/android/gms/internal/ads/yd;

    move-result-object v1

    const-string v2, "ContentFetchTask.run"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/yd;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    .line 72
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/efb;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :catch_3
    :goto_4
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/efb;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    :try_start_4
    const-string v1, "ContentFetchTask: waiting"

    .line 79
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzdz(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/efb;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 84
    :cond_4
    :try_start_5
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method
