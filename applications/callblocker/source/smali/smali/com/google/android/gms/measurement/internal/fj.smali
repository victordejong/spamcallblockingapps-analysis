.class public final Lcom/google/android/gms/measurement/internal/fj;
.super Lcom/google/android/gms/measurement/internal/dt;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/jo;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/fj;-><init>(Lcom/google/android/gms/measurement/internal/jo;Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/measurement/internal/jo;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/dt;-><init>()V

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->c:Ljava/lang/String;

    .line 7
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    return-object v0
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 209
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fa;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private final a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Measurement Service called without app package"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Measurement Service called without app package"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    if-eqz p2, :cond_4

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fj;->b:Ljava/lang/Boolean;

    if-nez v2, :cond_3

    .line 110
    const-string/jumbo v2, "com.google.android.gms"

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/fj;->c:Ljava/lang/String;

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 112
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jo;->r()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 113
    invoke-static {v2, v3}, Lcom/google/android/gms/common/util/r;->a(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 114
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jo;->r()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/i;->a(Landroid/content/Context;)Lcom/google/android/gms/common/i;

    move-result-object v2

    .line 115
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/i;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 117
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->b:Ljava/lang/Boolean;

    .line 118
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_6

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->r()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 122
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/common/h;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fj;->c:Ljava/lang/String;

    .line 124
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 125
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Unknown calling package name \'%s\'."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 126
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 130
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Measurement Service called with invalid calling package. appId"

    .line 132
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 133
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    throw v0

    .line 127
    :cond_6
    return-void
.end method

.method private final b(Lcom/google/android/gms/measurement/internal/kb;Z)V
    .locals 4

    .prologue
    .line 98
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/String;Z)V

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->j()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/kb;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/kb;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kb;->v:Ljava/lang/String;

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 103
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/measurement/internal/kb;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/measurement/internal/kb;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/jv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/fj;->b(Lcom/google/android/gms/measurement/internal/kb;Z)V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/fv;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/fv;-><init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 81
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/jx;

    .line 84
    if-nez p2, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jw;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    :cond_1
    new-instance v3, Lcom/google/android/gms/measurement/internal/jv;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Lcom/google/android/gms/measurement/internal/jx;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to get user properties. appId"

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 92
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 93
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    .line 87
    goto :goto_2

    .line 88
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/kb;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/measurement/internal/kb;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/kn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gms/measurement/internal/fj;->b(Lcom/google/android/gms/measurement/internal/kb;Z)V

    .line 188
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 189
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/fm;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/google/android/gms/measurement/internal/fm;-><init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/kb;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 191
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 194
    :goto_0
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to get conditional user properties"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 192
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/kn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/String;Z)V

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 197
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/fp;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/fp;-><init>(Lcom/google/android/gms/measurement/internal/fj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 199
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 205
    :goto_0
    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 202
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to get conditional user properties as"

    .line 204
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 200
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/jv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/String;Z)V

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/fn;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/fn;-><init>(Lcom/google/android/gms/measurement/internal/fj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 174
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/jx;

    .line 177
    if-nez p4, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jw;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    :cond_1
    new-instance v3, Lcom/google/android/gms/measurement/internal/jv;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Lcom/google/android/gms/measurement/internal/jx;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 183
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to get user properties as. appId"

    .line 185
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    .line 180
    goto :goto_2

    .line 181
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/kb;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/measurement/internal/kb;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/jv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p4, v0}, Lcom/google/android/gms/measurement/internal/fj;->b(Lcom/google/android/gms/measurement/internal/kb;Z)V

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/fk;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/fk;-><init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/kb;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 156
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/jx;

    .line 159
    if-nez p3, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/jx;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/jw;->e(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    :cond_1
    new-instance v3, Lcom/google/android/gms/measurement/internal/jv;

    invoke-direct {v3, v0}, Lcom/google/android/gms/measurement/internal/jv;-><init>(Lcom/google/android/gms/measurement/internal/jx;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 165
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to query user properties. appId"

    iget-object v3, p4, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    .line 167
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 168
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    .line 162
    goto :goto_2

    .line 163
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 135
    new-instance v1, Lcom/google/android/gms/measurement/internal/fx;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/fx;-><init>(Lcom/google/android/gms/measurement/internal/fj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/fj;->b(Lcom/google/android/gms/measurement/internal/kb;Z)V

    .line 75
    new-instance v0, Lcom/google/android/gms/measurement/internal/fs;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/fs;-><init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/fj;->b(Lcom/google/android/gms/measurement/internal/kb;Z)V

    .line 96
    new-instance v0, Lcom/google/android/gms/measurement/internal/fu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/fu;-><init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/kn;)V
    .locals 2

    .prologue
    .line 146
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/String;Z)V

    .line 149
    new-instance v0, Lcom/google/android/gms/measurement/internal/kn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/kn;-><init>(Lcom/google/android/gms/measurement/internal/kn;)V

    .line 150
    new-instance v1, Lcom/google/android/gms/measurement/internal/fl;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/fl;-><init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/kn;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 2

    .prologue
    .line 139
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/fj;->b(Lcom/google/android/gms/measurement/internal/kb;Z)V

    .line 142
    new-instance v0, Lcom/google/android/gms/measurement/internal/kn;

    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/kn;-><init>(Lcom/google/android/gms/measurement/internal/kn;)V

    .line 143
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/kn;->a:Ljava/lang/String;

    .line 144
    new-instance v1, Lcom/google/android/gms/measurement/internal/fw;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/gms/measurement/internal/fw;-><init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 1

    .prologue
    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/fj;->b(Lcom/google/android/gms/measurement/internal/kb;Z)V

    .line 13
    new-instance v0, Lcom/google/android/gms/measurement/internal/fr;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/fr;-><init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/Runnable;)V

    .line 14
    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/String;Z)V

    .line 35
    new-instance v0, Lcom/google/android/gms/measurement/internal/fq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/fq;-><init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method public final a(Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)[B
    .locals 9

    .prologue
    const-wide/32 v4, 0xf4240

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/String;Z)V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 41
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Log and bundle. event"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 43
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/jo;->i()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v0

    div-long v2, v0, v4

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 47
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ft;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/measurement/internal/ft;-><init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 49
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 50
    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Log and bundle returned null. appId"

    .line 54
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 57
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 58
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v6, "Log and bundle processed. event, size, time_ms"

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 60
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/jo;->i()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    array-length v8, v0

    .line 61
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sub-long v2, v4, v2

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 63
    invoke-virtual {v1, v6, v7, v8, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 72
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to log and bundle. appId, event, error"

    .line 69
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 70
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/jo;->i()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v4

    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/dw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method final b(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/r;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 15
    .line 16
    const-string/jumbo v1, "_cmp"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->a()I

    move-result v1

    if-nez v1, :cond_1

    .line 28
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Event has been filtered "

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    new-instance v0, Lcom/google/android/gms/measurement/internal/r;

    const-string/jumbo v1, "_cmpx"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/r;->c:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/r;->d:J

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/r;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m;Ljava/lang/String;J)V

    .line 31
    :goto_1
    return-object v0

    .line 19
    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/r;->b:Lcom/google/android/gms/measurement/internal/m;

    const-string/jumbo v2, "_cis"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 21
    const-string/jumbo v2, "referrer broadcast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "referrer API"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jo;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->R:Lcom/google/android/gms/measurement/internal/dr;

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/b;->e(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 31
    goto :goto_1
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/fj;->b(Lcom/google/android/gms/measurement/internal/kb;Z)V

    .line 9
    new-instance v0, Lcom/google/android/gms/measurement/internal/fi;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/fi;-><init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/Runnable;)V

    .line 10
    return-void
.end method

.method public final c(Lcom/google/android/gms/measurement/internal/kb;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/fj;->b(Lcom/google/android/gms/measurement/internal/kb;Z)V

    .line 138
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fj;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/jo;->d(Lcom/google/android/gms/measurement/internal/kb;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/String;Z)V

    .line 207
    new-instance v0, Lcom/google/android/gms/measurement/internal/fo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/fo;-><init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Ljava/lang/Runnable;)V

    .line 208
    return-void
.end method
