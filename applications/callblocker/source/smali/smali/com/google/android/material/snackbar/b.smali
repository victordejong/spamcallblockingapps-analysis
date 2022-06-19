.class Lcom/google/android/material/snackbar/b;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/b$b;,
        Lcom/google/android/material/snackbar/b$a;
    }
.end annotation


# static fields
.field private static a:Lcom/google/android/material/snackbar/b;


# instance fields
.field private final b:Ljava/lang/Object;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/google/android/material/snackbar/b$b;

.field private e:Lcom/google/android/material/snackbar/b$b;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    .line 51
    new-instance v0, Landroid/os/Handler;

    .line 53
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/b$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/b$1;-><init>(Lcom/google/android/material/snackbar/b;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/b;->c:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static a()Lcom/google/android/material/snackbar/b;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/android/material/snackbar/b;->a:Lcom/google/android/material/snackbar/b;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/google/android/material/snackbar/b;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/b;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/b;->a:Lcom/google/android/material/snackbar/b;

    .line 40
    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/b;->a:Lcom/google/android/material/snackbar/b;

    return-object v0
.end method

.method private a(Lcom/google/android/material/snackbar/b$b;I)Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p1, Lcom/google/android/material/snackbar/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/b$a;

    .line 206
    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 209
    invoke-interface {v0, p2}, Lcom/google/android/material/snackbar/b$a;->a(I)V

    .line 210
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 190
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$b;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$b;

    iput-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    .line 192
    iput-object v1, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$b;

    .line 194
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    iget-object v0, v0, Lcom/google/android/material/snackbar/b$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/b$a;

    .line 195
    if-eqz v0, :cond_1

    .line 196
    invoke-interface {v0}, Lcom/google/android/material/snackbar/b$a;->a()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iput-object v1, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    goto :goto_0
.end method

.method private b(Lcom/google/android/material/snackbar/b$b;)V
    .locals 6

    .prologue
    .line 224
    iget v0, p1, Lcom/google/android/material/snackbar/b$b;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 237
    :goto_0
    return-void

    .line 229
    :cond_0
    const/16 v0, 0xabe

    .line 230
    iget v1, p1, Lcom/google/android/material/snackbar/b$b;->b:I

    if-lez v1, :cond_2

    .line 231
    iget v0, p1, Lcom/google/android/material/snackbar/b$b;->b:I

    .line 235
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->c:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 236
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/material/snackbar/b;->c:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 232
    :cond_2
    iget v1, p1, Lcom/google/android/material/snackbar/b$b;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 233
    const/16 v0, 0x5dc

    goto :goto_1
.end method

.method private f(Lcom/google/android/material/snackbar/b$a;)Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/b$b;->a(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Lcom/google/android/material/snackbar/b$a;)Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/b$b;->a(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILcom/google/android/material/snackbar/b$a;)V
    .locals 3

    .prologue
    .line 75
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    iput p1, v0, Lcom/google/android/material/snackbar/b$b;->b:I

    .line 82
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/b;->b(Lcom/google/android/material/snackbar/b$b;)V

    .line 84
    monitor-exit v1

    .line 104
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/material/snackbar/b;->g(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$b;

    iput p1, v0, Lcom/google/android/material/snackbar/b$b;->b:I

    .line 93
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    const/4 v2, 0x4

    .line 94
    invoke-direct {p0, v0, v2}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$b;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    monitor-exit v1

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 90
    :cond_1
    :try_start_1
    new-instance v0, Lcom/google/android/material/snackbar/b$b;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/snackbar/b$b;-><init>(ILcom/google/android/material/snackbar/b$a;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$b;

    goto :goto_1

    .line 99
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    .line 101
    invoke-direct {p0}, Lcom/google/android/material/snackbar/b;->b()V

    .line 103
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public a(Lcom/google/android/material/snackbar/b$a;)V
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    .line 125
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$b;

    if-eqz v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/google/android/material/snackbar/b;->b()V

    .line 129
    :cond_0
    monitor-exit v1

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/google/android/material/snackbar/b$a;I)V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    invoke-direct {p0, v0, p2}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$b;I)Z

    .line 113
    :cond_0
    :goto_0
    monitor-exit v1

    .line 114
    return-void

    .line 110
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->g(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$b;

    invoke-direct {p0, v0, p2}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$b;I)Z

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/google/android/material/snackbar/b$b;)V
    .locals 2

    .prologue
    .line 240
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->e:Lcom/google/android/material/snackbar/b$b;

    if-ne v0, p1, :cond_1

    .line 242
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$b;I)Z

    .line 244
    :cond_1
    monitor-exit v1

    .line 245
    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/google/android/material/snackbar/b$a;)V
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/b;->b(Lcom/google/android/material/snackbar/b$b;)V

    .line 141
    :cond_0
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/google/android/material/snackbar/b$a;)V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    iget-boolean v0, v0, Lcom/google/android/material/snackbar/b$b;->c:Z

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/material/snackbar/b$b;->c:Z

    .line 148
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 150
    :cond_0
    monitor-exit v1

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Lcom/google/android/material/snackbar/b$a;)V
    .locals 3

    .prologue
    .line 154
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    iget-boolean v0, v0, Lcom/google/android/material/snackbar/b$b;->c:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/material/snackbar/b$b;->c:Z

    .line 157
    iget-object v0, p0, Lcom/google/android/material/snackbar/b;->d:Lcom/google/android/material/snackbar/b$b;

    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/b;->b(Lcom/google/android/material/snackbar/b$b;)V

    .line 159
    :cond_0
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Lcom/google/android/material/snackbar/b$a;)Z
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/google/android/material/snackbar/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/b;->g(Lcom/google/android/material/snackbar/b$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
