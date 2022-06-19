.class public final Lcom/google/android/gms/internal/ads/dui;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private final d:Ljava/lang/Object;

.field private final e:Lcom/google/android/gms/internal/ads/duf;

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:Ljava/lang/String;

.field private final o:Z

.field private final p:Z

.field private final q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/duf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/duf;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dui;-><init>(Lcom/google/android/gms/internal/ads/duf;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/duf;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->a:Z

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->b:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->c:Z

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dui;->e:Lcom/google/android/gms/internal/ads/duf;

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dui;->d:Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/ak;->d:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dui;->g:I

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/ak;->a:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dui;->h:I

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/ak;->e:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dui;->i:I

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/ak;->c:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dui;->j:I

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->I:Lcom/google/android/gms/internal/ads/ect;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dui;->k:I

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->J:Lcom/google/android/gms/internal/ads/ect;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dui;->l:I

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->K:Lcom/google/android/gms/internal/ads/ect;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dui;->m:I

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/ads/ak;->f:Lcom/google/android/gms/internal/ads/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dui;->f:I

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->M:Lcom/google/android/gms/internal/ads/ect;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dui;->n:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->N:Lcom/google/android/gms/internal/ads/ect;

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->o:Z

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->O:Lcom/google/android/gms/internal/ads/ect;

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->p:Z

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->P:Lcom/google/android/gms/internal/ads/ect;

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->q:Z

    .line 35
    const-string/jumbo v0, "ContentFetchTask"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dui;->setName(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private final a(Landroid/view/View;Lcom/google/android/gms/internal/ads/duc;)Lcom/google/android/gms/internal/ads/dum;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 141
    if-nez p1, :cond_0

    .line 142
    new-instance v0, Lcom/google/android/gms/internal/ads/dum;

    invoke-direct {v0, p0, v7, v7}, Lcom/google/android/gms/internal/ads/dum;-><init>(Lcom/google/android/gms/internal/ads/dui;II)V

    .line 175
    :goto_0
    return-object v0

    .line 143
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    .line 145
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    instance-of v0, p1, Landroid/widget/EditText;

    if-nez v0, :cond_2

    move-object v0, p1

    .line 146
    check-cast v0, Landroid/widget/TextView;

    .line 147
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v0, p2

    .line 152
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/duc;->b(Ljava/lang/String;ZFFFF)V

    .line 153
    new-instance v0, Lcom/google/android/gms/internal/ads/dum;

    invoke-direct {v0, p0, v8, v7}, Lcom/google/android/gms/internal/ads/dum;-><init>(Lcom/google/android/gms/internal/ads/dui;II)V

    goto :goto_0

    .line 154
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/dum;

    invoke-direct {v0, p0, v7, v7}, Lcom/google/android/gms/internal/ads/dum;-><init>(Lcom/google/android/gms/internal/ads/dui;II)V

    goto :goto_0

    .line 155
    :cond_2
    instance-of v0, p1, Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/act;

    if-nez v0, :cond_5

    .line 156
    check-cast p1, Landroid/webkit/WebView;

    .line 157
    invoke-static {}, Lcom/google/android/gms/common/util/m;->f()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v7

    .line 162
    :goto_1
    if-eqz v0, :cond_4

    .line 163
    new-instance v0, Lcom/google/android/gms/internal/ads/dum;

    invoke-direct {v0, p0, v7, v8}, Lcom/google/android/gms/internal/ads/dum;-><init>(Lcom/google/android/gms/internal/ads/dui;II)V

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/duc;->g()V

    .line 160
    new-instance v0, Lcom/google/android/gms/internal/ads/duk;

    invoke-direct {v0, p0, p2, p1, v2}, Lcom/google/android/gms/internal/ads/duk;-><init>(Lcom/google/android/gms/internal/ads/dui;Lcom/google/android/gms/internal/ads/duc;Landroid/webkit/WebView;Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    move v0, v8

    .line 161
    goto :goto_1

    .line 164
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/dum;

    invoke-direct {v0, p0, v7, v7}, Lcom/google/android/gms/internal/ads/dum;-><init>(Lcom/google/android/gms/internal/ads/dui;II)V

    goto :goto_0

    .line 165
    :cond_5
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    .line 166
    check-cast p1, Landroid/view/ViewGroup;

    move v0, v7

    move v1, v7

    move v2, v7

    .line 169
    :goto_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/google/android/gms/internal/ads/dui;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/duc;)Lcom/google/android/gms/internal/ads/dum;

    move-result-object v3

    .line 171
    iget v4, v3, Lcom/google/android/gms/internal/ads/dum;->a:I

    add-int/2addr v2, v4

    .line 172
    iget v3, v3, Lcom/google/android/gms/internal/ads/dum;->b:I

    add-int v7, v1, v3

    .line 173
    add-int/lit8 v0, v0, 0x1

    move v1, v7

    goto :goto_2

    .line 174
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/dum;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/internal/ads/dum;-><init>(Lcom/google/android/gms/internal/ads/dui;II)V

    goto/16 :goto_0

    .line 175
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/dum;

    invoke-direct {v0, p0, v7, v7}, Lcom/google/android/gms/internal/ads/dum;-><init>(Lcom/google/android/gms/internal/ads/dui;II)V

    goto/16 :goto_0
.end method

.method private static e()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 111
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->f()Lcom/google/android/gms/internal/ads/due;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/due;->b()Landroid/content/Context;

    move-result-object v3

    .line 112
    if-nez v3, :cond_0

    move v0, v2

    .line 140
    :goto_0
    return v0

    .line 114
    :cond_0
    const-string/jumbo v0, "activity"

    .line 115
    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 116
    const-string/jumbo v1, "keyguard"

    .line 117
    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 118
    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 122
    if-nez v0, :cond_3

    move v0, v2

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 125
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_4

    .line 127
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v0, v4, :cond_6

    .line 129
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 130
    const-string/jumbo v0, "power"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 131
    if-nez v0, :cond_5

    move v0, v2

    .line 134
    :goto_1
    if-eqz v0, :cond_6

    .line 135
    const/4 v0, 0x1

    goto :goto_0

    .line 133
    :cond_5
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :cond_6
    move v0, v2

    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v3, "ContentFetchTask.isInForeground"

    invoke-virtual {v1, v0, v3}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    move v0, v2

    .line 140
    goto :goto_0
.end method

.method private final f()V
    .locals 4

    .prologue
    .line 210
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dui;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->b:Z

    .line 212
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->b:Z

    const/16 v2, 0x2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 213
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dui;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->a:Z

    if-eqz v0, :cond_0

    .line 39
    const-string/jumbo v0, "Content hash thread already started, quiting..."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 40
    monitor-exit v1

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->a:Z

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dui;->start()V

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final a(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 85
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/duc;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dui;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dui;->h:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dui;->i:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dui;->j:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/dui;->k:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/dui;->l:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/dui;->m:I

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/dui;->p:Z

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/duc;-><init>(IIIIIIIZ)V

    .line 86
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->f()Lcom/google/android/gms/internal/ads/due;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/due;->b()Landroid/content/Context;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_1

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dui;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v1, Lcom/google/android/gms/internal/ads/edi;->L:Lcom/google/android/gms/internal/ads/ect;

    .line 92
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v1

    .line 93
    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "id"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 94
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dui;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dui;->a(Landroid/view/View;Lcom/google/android/gms/internal/ads/duc;)Lcom/google/android/gms/internal/ads/dum;

    move-result-object v1

    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duc;->i()V

    .line 99
    iget v2, v1, Lcom/google/android/gms/internal/ads/dum;->a:I

    if-nez v2, :cond_2

    iget v2, v1, Lcom/google/android/gms/internal/ads/dum;->b:I

    if-eqz v2, :cond_0

    .line 101
    :cond_2
    iget v2, v1, Lcom/google/android/gms/internal/ads/dum;->b:I

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/duc;->k()I

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    :cond_3
    iget v1, v1, Lcom/google/android/gms/internal/ads/dum;->b:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dui;->e:Lcom/google/android/gms/internal/ads/duf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/duf;->a(Lcom/google/android/gms/internal/ads/duc;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dui;->e:Lcom/google/android/gms/internal/ads/duf;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/duf;->c(Lcom/google/android/gms/internal/ads/duc;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string/jumbo v1, "Exception in fetchContentOnUIThread"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "ContentFetchTask.fetchContent"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/internal/ads/duc;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/duc;->f()V

    .line 177
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->o:Z

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v3

    .line 184
    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v4

    .line 185
    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    .line 186
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v0, p1

    move v2, p4

    .line 187
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/duc;->a(Ljava/lang/String;ZFFFF)V

    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/duc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dui;->e:Lcom/google/android/gms/internal/ads/duf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/duf;->b(Lcom/google/android/gms/internal/ads/duc;)Z

    .line 203
    :cond_1
    :goto_1
    return-void

    .line 189
    :cond_2
    invoke-virtual {p2}, Landroid/webkit/WebView;->getX()F

    move-result v3

    .line 190
    invoke-virtual {p2}, Landroid/webkit/WebView;->getY()F

    move-result v4

    .line 191
    invoke-virtual {p2}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    .line 192
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    move-object v0, p1

    move v2, p4

    .line 193
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/duc;->a(Ljava/lang/String;ZFFFF)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    const-string/jumbo v0, "Json string may be malformed."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :catch_1
    move-exception v0

    .line 201
    const-string/jumbo v1, "Failed to get webview content."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "ContentFetchTask.processWebViewContent"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/duc;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dui;->e:Lcom/google/android/gms/internal/ads/duf;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/dui;->q:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/duf;->a(Z)Lcom/google/android/gms/internal/ads/duc;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dui;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->b:Z

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dui;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 208
    const-string/jumbo v0, "ContentFetchThread: wakeup"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 209
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->b:Z

    return v0
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 45
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/dui;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->f()Lcom/google/android/gms/internal/ads/due;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/due;->a()Landroid/app/Activity;

    move-result-object v1

    .line 47
    if-nez v1, :cond_1

    .line 48
    const-string/jumbo v0, "ContentFetchThread: no activity. Sleeping."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dui;->f()V

    .line 69
    :cond_0
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dui;->f:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 77
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dui;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :goto_3
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dui;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 79
    :try_start_2
    const-string/jumbo v0, "ContentFetchTask: waiting"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dui;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 83
    :catch_0
    move-exception v0

    goto :goto_3

    .line 51
    :cond_1
    if-eqz v1, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 53
    :try_start_3
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 54
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 59
    :cond_2
    :goto_4
    if-eqz v0, :cond_0

    .line 61
    if-eqz v0, :cond_0

    .line 63
    :try_start_4
    new-instance v1, Lcom/google/android/gms/internal/ads/dul;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/dul;-><init>(Lcom/google/android/gms/internal/ads/dui;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 71
    :catch_1
    move-exception v0

    .line 72
    const-string/jumbo v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 56
    :catch_2
    move-exception v1

    .line 57
    :try_start_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v2

    const-string/jumbo v3, "ContentFetchTask.extractContent"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v1, "Failed getting root view of activity. Content not extracted."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 74
    :catch_3
    move-exception v0

    .line 75
    const-string/jumbo v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->g()Lcom/google/android/gms/internal/ads/ug;

    move-result-object v1

    const-string/jumbo v2, "ContentFetchTask.run"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/ug;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 67
    :cond_3
    :try_start_6
    const-string/jumbo v0, "ContentFetchTask: sleeping"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->b(Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dui;->f()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1

    .line 84
    :cond_4
    :try_start_7
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method
