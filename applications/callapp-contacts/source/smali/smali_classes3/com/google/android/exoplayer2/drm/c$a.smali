.class public final Lcom/google/android/exoplayer2/drm/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/c$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/r$a;

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/drm/c$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 100
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/drm/c$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/r$a;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/r$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/drm/c$a$a;",
            ">;I",
            "Lcom/google/android/exoplayer2/source/r$a;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/c$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 111
    iput p2, p0, Lcom/google/android/exoplayer2/drm/c$a;->a:I

    .line 112
    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/c$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    return-void
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/drm/c;)V
    .locals 2

    .line 207
    iget v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/c$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/c;->e(ILcom/google/android/exoplayer2/source/r$a;)V

    return-void
.end method

.method private synthetic a(Lcom/google/android/exoplayer2/drm/c;Ljava/lang/Exception;)V
    .locals 2

    .line 177
    iget v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/c$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/drm/c;->a(ILcom/google/android/exoplayer2/source/r$a;Ljava/lang/Exception;)V

    return-void
.end method

.method private synthetic b(Lcom/google/android/exoplayer2/drm/c;)V
    .locals 2

    .line 197
    iget v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/c$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/c;->d(ILcom/google/android/exoplayer2/source/r$a;)V

    return-void
.end method

.method private synthetic c(Lcom/google/android/exoplayer2/drm/c;)V
    .locals 2

    .line 187
    iget v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/c$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/c;->c(ILcom/google/android/exoplayer2/source/r$a;)V

    return-void
.end method

.method private synthetic d(Lcom/google/android/exoplayer2/drm/c;)V
    .locals 2

    .line 167
    iget v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/c$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/c;->b(ILcom/google/android/exoplayer2/source/r$a;)V

    return-void
.end method

.method private synthetic e(Lcom/google/android/exoplayer2/drm/c;)V
    .locals 2

    .line 158
    iget v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->a:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/c$a;->b:Lcom/google/android/exoplayer2/source/r$a;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/drm/c;->a(ILcom/google/android/exoplayer2/source/r$a;)V

    return-void
.end method

.method public static synthetic lambda$04GcogedEUb2CvSWjusVuJhzeh8(Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/drm/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/c$a;->c(Lcom/google/android/exoplayer2/drm/c;)V

    return-void
.end method

.method public static synthetic lambda$3XW80SE7nF2xZQkloGDxKyF0_jU(Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/drm/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/c$a;->b(Lcom/google/android/exoplayer2/drm/c;)V

    return-void
.end method

.method public static synthetic lambda$q8M4mxe6b4tm3DTvKgHTeK_1Mhg(Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/drm/c;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/c$a;->a(Lcom/google/android/exoplayer2/drm/c;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic lambda$up52avUaT9X1ehp2mXY-yQ_dMPA(Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/drm/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/c$a;->e(Lcom/google/android/exoplayer2/drm/c;)V

    return-void
.end method

.method public static synthetic lambda$wKNWQw3KOO5FAkx-ga61EjJqBIo(Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/drm/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/c$a;->a(Lcom/google/android/exoplayer2/drm/c;)V

    return-void
.end method

.method public static synthetic lambda$z7jDPGaJ8i2s3C5k7bBkTGKM_Hk(Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/drm/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/c$a;->d(Lcom/google/android/exoplayer2/drm/c;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/exoplayer2/source/r$a;)Lcom/google/android/exoplayer2/drm/c$a;
    .locals 2

    .line 124
    new-instance v0, Lcom/google/android/exoplayer2/drm/c$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/c$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/drm/c$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/r$a;)V

    return-object v0
.end method

.method public final a()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/c$a$a;

    .line 155
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/c$a$a;->b:Lcom/google/android/exoplayer2/drm/c;

    .line 156
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/c$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/-$$Lambda$c$a$up52avUaT9X1ehp2mXY-yQ_dMPA;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/-$$Lambda$c$a$up52avUaT9X1ehp2mXY-yQ_dMPA;-><init>(Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/drm/c;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/c;)V
    .locals 2

    .line 134
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/google/android/exoplayer2/drm/c$a$a;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/drm/c$a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/c;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/c$a$a;

    .line 174
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/c$a$a;->b:Lcom/google/android/exoplayer2/drm/c;

    .line 175
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/c$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/-$$Lambda$c$a$q8M4mxe6b4tm3DTvKgHTeK_1Mhg;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/exoplayer2/drm/-$$Lambda$c$a$q8M4mxe6b4tm3DTvKgHTeK_1Mhg;-><init>(Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/drm/c;Ljava/lang/Exception;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/c$a$a;

    .line 165
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/c$a$a;->b:Lcom/google/android/exoplayer2/drm/c;

    .line 166
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/c$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/-$$Lambda$c$a$z7jDPGaJ8i2s3C5k7bBkTGKM_Hk;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/-$$Lambda$c$a$z7jDPGaJ8i2s3C5k7bBkTGKM_Hk;-><init>(Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/drm/c;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/c$a$a;

    .line 184
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/c$a$a;->b:Lcom/google/android/exoplayer2/drm/c;

    .line 185
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/c$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/-$$Lambda$c$a$04GcogedEUb2CvSWjusVuJhzeh8;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/-$$Lambda$c$a$04GcogedEUb2CvSWjusVuJhzeh8;-><init>(Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/drm/c;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/c$a$a;

    .line 194
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/c$a$a;->b:Lcom/google/android/exoplayer2/drm/c;

    .line 195
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/c$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/-$$Lambda$c$a$3XW80SE7nF2xZQkloGDxKyF0_jU;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/-$$Lambda$c$a$3XW80SE7nF2xZQkloGDxKyF0_jU;-><init>(Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/drm/c;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 4

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/c$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/c$a$a;

    .line 204
    iget-object v2, v1, Lcom/google/android/exoplayer2/drm/c$a$a;->b:Lcom/google/android/exoplayer2/drm/c;

    .line 205
    iget-object v1, v1, Lcom/google/android/exoplayer2/drm/c$a$a;->a:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplayer2/drm/-$$Lambda$c$a$wKNWQw3KOO5FAkx-ga61EjJqBIo;

    invoke-direct {v3, p0, v2}, Lcom/google/android/exoplayer2/drm/-$$Lambda$c$a$wKNWQw3KOO5FAkx-ga61EjJqBIo;-><init>(Lcom/google/android/exoplayer2/drm/c$a;Lcom/google/android/exoplayer2/drm/c;)V

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
