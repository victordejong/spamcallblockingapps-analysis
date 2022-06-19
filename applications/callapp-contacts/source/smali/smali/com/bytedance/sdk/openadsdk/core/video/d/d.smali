.class public Lcom/bytedance/sdk/openadsdk/core/video/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;
.implements Lcom/bytedance/sdk/openadsdk/utils/ah$a;


# static fields
.field private static m:Z = false

.field private static final o:Landroid/util/SparseIntArray;


# instance fields
.field private a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:J

.field private final h:Landroid/os/Handler;

.field private i:Landroid/os/Handler;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private n:Ljava/lang/String;

.field private p:Z

.field private final q:Ljava/lang/Object;

.field private r:Ljava/lang/StringBuilder;

.field private s:Z

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->o:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, -0x1

    .line 126
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;-><init>(Landroid/os/Handler;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 3

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    .line 92
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    const/4 v0, 0x0

    .line 93
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b:Z

    .line 95
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c:Z

    const/16 v1, 0xc9

    .line 99
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const-wide/16 v1, -0x1

    .line 100
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g:J

    .line 117
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    const-string v1, "0"

    .line 121
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->n:Ljava/lang/String;

    .line 936
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->q:Ljava/lang/Object;

    .line 937
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r:Ljava/lang/StringBuilder;

    .line 954
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->s:Z

    const-wide/16 v1, 0x0

    .line 955
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t:J

    .line 956
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    .line 957
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    .line 958
    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    .line 961
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->x:Z

    .line 132
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    .line 134
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    .line 135
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "tt_pangle_thread__VideoManager"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 137
    new-instance p2, Lcom/bytedance/sdk/openadsdk/utils/ah;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/ah;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/openadsdk/utils/ah$a;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    .line 138
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->x:Z

    .line 139
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->q()V

    return-void
.end method

.method private A()I
    .locals 2

    .line 908
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 909
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private B()V
    .locals 2

    .line 918
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->m:Z

    if-eqz v0, :cond_0

    .line 919
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->l:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(IZ)V

    .line 920
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->m:Z

    :cond_0
    return-void
.end method

.method private C()V
    .locals 5

    .line 964
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 965
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    :cond_0
    return-void
.end method

.method private D()V
    .locals 8

    .line 975
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 976
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t:J

    .line 977
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;I)I
    .locals 0

    .line 37
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    return p1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    return-object p0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 1

    const/16 v0, 0x135

    if-ne p1, v0, :cond_0

    .line 669
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->B()V

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 672
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method private a(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 896
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->A()I

    move-result p2

    if-eq p2, p1, :cond_0

    const/4 v0, 0x1

    .line 898
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->m:Z

    .line 899
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->l:I

    .line 902
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object p2

    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 904
    invoke-virtual {p2, v0, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 630
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 631
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Ljava/io/FileDescriptor;)V

    .line 632
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method private a(II)Z
    .locals 2

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnError - Error code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Extra code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSMediaPlayeWrapper"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/video/d/d;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->p:Z

    return p1
.end method

.method private b(II)V
    .locals 6

    const/16 p2, 0x2bd

    if-ne p1, p2, :cond_0

    .line 779
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->D()V

    .line 780
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    return-void

    :cond_0
    const/16 p2, 0x2be

    const-wide/16 v0, 0x0

    if-ne p1, p2, :cond_2

    .line 782
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    .line 785
    :cond_1
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    .line 786
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    sub-long/2addr v2, v4

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    .line 787
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v:J

    return-void

    .line 789
    :cond_2
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->x:Z

    if-eqz p2, :cond_3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 791
    iget-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_3

    .line 792
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->q()V

    return-void
.end method

.method private b(Ljava/lang/Runnable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 886
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->e:Z

    if-nez v0, :cond_1

    .line 887
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 889
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 940
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0xc9

    .line 941
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 943
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->q:Ljava/lang/Object;

    monitor-enter p1

    .line 944
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 945
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r:Ljava/lang/StringBuilder;

    .line 947
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)Lcom/bytedance/sdk/openadsdk/core/video/d/c;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    return-object p0
.end method

.method private q()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-nez v0, :cond_0

    const-string v0, "SSMediaPlayeWrapper"

    const-string v1, "SSMediaPlayerWrapper use System Mediaplayer"

    .line 144
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    const-string v2, "0"

    .line 146
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->n:Ljava/lang/String;

    .line 147
    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;)V

    .line 148
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;)V

    .line 149
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;)V

    .line 150
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;)V

    .line 151
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;)V

    .line 152
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;)V

    .line 153
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;)V

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b:Z

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "setLooping error: "

    .line 157
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c:Z

    :cond_0
    return-void
.end method

.method private r()V
    .locals 2

    const-string v0, "tag_video_play"

    const-string v1, "[video] MediaPlayerProxy#start first play prepare invoke !"

    .line 261
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private s()V
    .locals 3

    const-string v0, "SSMediaPlayeWrapper"

    .line 636
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-nez v1, :cond_0

    return-void

    .line 638
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "releaseMediaplayer error1: "

    .line 640
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 642
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$b;)V

    .line 643
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$g;)V

    .line 644
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$a;)V

    .line 645
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$d;)V

    .line 646
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$c;)V

    .line 647
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$e;)V

    .line 648
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Lcom/bytedance/sdk/openadsdk/core/video/d/c$f;)V

    .line 650
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    const-string v2, "releaseMediaplayer error2: "

    .line 652
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private t()V
    .locals 3

    const-string v0, "SSMediaPlayeWrapper"

    .line 657
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "onDestory............"

    .line 659
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    const-string v2, "onDestroy error: "

    .line 662
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 4

    .line 688
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->o:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 690
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    .line 692
    :cond_0
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method private v()V
    .locals 5

    .line 825
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->x:Z

    if-nez v0, :cond_0

    .line 826
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    .line 848
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 851
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->d:Z

    .line 852
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 853
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 854
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 857
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->d:Z

    return-void
.end method

.method private x()V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 864
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w()V

    :cond_1
    :goto_0
    return-void
.end method

.method private y()V
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 872
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w()V

    return-void

    .line 869
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t()V

    return-void
.end method

.method private z()V
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroid/media/MediaPlayer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-eqz v0, :cond_0

    .line 166
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->e()Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(J)V
    .locals 2

    .line 286
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->D()V

    .line 287
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_0

    const/16 v1, 0xce

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_1

    .line 289
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;J)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 301
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$5;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "/"

    .line 400
    iget v3, v0, Landroid/os/Message;->what:I

    const-string v4, "tag_video_play"

    const-string v5, "[video]  execute , mCurrentState = "

    .line 401
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    const/4 v7, 0x1

    if-eqz v5, :cond_14

    .line 403
    iget v5, v0, Landroid/os/Message;->what:I

    const/16 v9, 0xa

    const-string v10, "[video] OP_RELEASE execute , releaseMediaplayer !"

    const/16 v11, 0xcb

    const/16 v12, 0xc9

    const/16 v13, 0xca

    const-string v15, "NativeVideoController"

    const-wide/16 v16, 0x0

    const/16 v6, 0xcf

    const/16 v14, 0xce

    const-string v8, "SSMediaPlayeWrapper"

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_7

    .line 552
    :pswitch_0
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v2, v4, :cond_0

    .line 553
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/SurfaceTexture;

    .line 554
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v2, v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Landroid/view/Surface;)V

    .line 556
    :cond_0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Z)V

    .line 557
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Landroid/content/Context;I)V

    .line 558
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->x()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    const-string v2, "OP_SET_SURFACE error: "

    .line 560
    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 565
    :pswitch_1
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceHolder;

    .line 566
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Landroid/view/SurfaceHolder;)V

    .line 567
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 568
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, v9}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Landroid/content/Context;I)V

    .line 570
    :cond_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    const-string v2, "OP_SET_DISPLAY error: "

    .line 573
    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 602
    :pswitch_2
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    if-eq v0, v14, :cond_2

    if-ne v0, v6, :cond_3

    .line 604
    :cond_2
    :try_start_2
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->i()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    const-string v2, "OP_REQUEST_CUR_POSITION error: "

    .line 606
    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-wide/from16 v4, v16

    :goto_0
    cmp-long v0, v4, v16

    if-lez v0, :cond_14

    const/16 v0, 0x6d

    .line 610
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 591
    :pswitch_3
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    if-eq v0, v14, :cond_4

    if-ne v0, v6, :cond_5

    .line 593
    :cond_4
    :try_start_3
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->j()J

    move-result-wide v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    const-string v2, "OP_REQUEST_DURATION error: "

    .line 595
    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    const/16 v0, 0x6c

    .line 598
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 501
    :pswitch_4
    iget v4, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    if-eq v4, v12, :cond_6

    if-ne v4, v11, :cond_f

    .line 503
    :cond_6
    :try_start_4
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;

    .line 504
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a:Ljava/lang/String;

    .line 506
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    return-void

    .line 509
    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    iget v5, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->c:I

    if-ne v5, v7, :cond_8

    goto/16 :goto_2

    .line 519
    :cond_8
    new-instance v2, Lcom/bytedance/sdk/openadsdk/k/f/b;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/k/f/b;-><init>()V

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->a:Ljava/lang/String;

    .line 520
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/k/f/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/f/b;

    move-result-object v2

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->d:Ljava/lang/String;

    .line 521
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/k/f/b;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/k/f/b;

    move-result-object v2

    .line 523
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_9

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 524
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/video/a/a;->d:Ljava/lang/String;

    invoke-interface {v2, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 526
    :cond_9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/k/f/a;->a()Lcom/bytedance/sdk/openadsdk/k/f/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/k/f/a;->b(Lcom/bytedance/sdk/openadsdk/k/f/b;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "cache009"

    const-string/jumbo v4, "\u4f7f\u7528Video\u7f13\u5b58-OP_SET_DATASOURCE-proxyurl="

    .line 527
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_a

    .line 528
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "file"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 529
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "cache010"

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u4f7f\u7528uri parse ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 534
    :cond_a
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 511
    :cond_b
    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 513
    invoke-direct {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 515
    :cond_c
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(Ljava/lang/String;)V

    .line 538
    :goto_3
    iput v13, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 540
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_14

    const/16 v2, 0x13a

    .line 541
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/16 :goto_7

    :catchall_4
    move-exception v0

    const-string v2, "OP_SET_DATASOURCE error: "

    .line 544
    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 489
    :pswitch_5
    iget v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    if-eq v2, v14, :cond_d

    if-eq v2, v6, :cond_d

    const/16 v4, 0xd1

    if-ne v2, v4, :cond_f

    .line 492
    :cond_d
    :try_start_5
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/16 :goto_7

    :catchall_5
    move-exception v0

    const-string v2, "OP_SEEKTO error: "

    .line 494
    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 577
    :pswitch_6
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_e

    if-eq v0, v14, :cond_e

    const/16 v2, 0xd0

    if-eq v0, v2, :cond_e

    if-eq v0, v6, :cond_e

    const/16 v2, 0xd1

    if-ne v0, v2, :cond_f

    .line 580
    :cond_e
    :try_start_6
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->g()V

    const/16 v0, 0xd0

    .line 581
    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto/16 :goto_7

    :catchall_6
    move-exception v0

    const-string v2, "OP_STOP error: "

    .line 583
    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 446
    :pswitch_7
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    if-eq v0, v13, :cond_10

    const/16 v2, 0xd0

    if-ne v0, v2, :cond_f

    goto :goto_4

    :cond_f
    const/4 v6, 0x1

    goto/16 :goto_9

    .line 448
    :cond_10
    :goto_4
    :try_start_7
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/d/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/b;->e()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    const-string v0, "[video] OP_PREPARE_ASYNC execute , mMediaPlayer real prepareAsync !"

    .line 449
    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_14

    const-wide/16 v4, 0x2710

    const/16 v2, 0x138

    .line 451
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto/16 :goto_7

    :catchall_7
    move-exception v0

    const-string v2, "OP_PREPARE_ASYNC error: "

    .line 456
    invoke-static {v15, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 464
    :pswitch_8
    :try_start_8
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->s()V

    .line 465
    invoke-static {v4, v10}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_5

    :catchall_8
    move-exception v0

    const-string v2, "OP_RELEASE error: "

    .line 467
    invoke-static {v15, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    const/4 v2, 0x0

    .line 469
    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->e:Z

    const/16 v0, 0x135

    const/4 v2, 0x0

    .line 470
    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ILjava/lang/Object;)V

    .line 471
    iput v11, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 472
    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    .line 476
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->y()V

    goto/16 :goto_7

    .line 481
    :pswitch_9
    :try_start_9
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->l()V

    .line 482
    invoke-static {v4, v10}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iput v12, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto/16 :goto_7

    :catchall_9
    move-exception v0

    const-string v2, "OP_RESET error: "

    .line 485
    invoke-static {v8, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 432
    :pswitch_a
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    if-eq v0, v14, :cond_11

    if-eq v0, v6, :cond_11

    const/16 v2, 0xd1

    if-ne v0, v2, :cond_f

    .line 435
    :cond_11
    :try_start_a
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->h()V

    .line 436
    iput v6, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_b

    const/4 v2, 0x0

    .line 437
    :try_start_b
    iput-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->p:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    goto :goto_8

    :catchall_a
    move-exception v0

    goto :goto_6

    :catchall_b
    move-exception v0

    const/4 v2, 0x0

    :goto_6
    const-string v4, "OP_PAUSE error: "

    .line 439
    invoke-static {v15, v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :pswitch_b
    const/4 v2, 0x0

    .line 405
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v5, 0xcd

    if-eq v0, v5, :cond_12

    if-eq v0, v14, :cond_12

    if-eq v0, v6, :cond_12

    const/16 v5, 0xd1

    if-ne v0, v5, :cond_f

    .line 408
    :cond_12
    :try_start_c
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->f()V

    const-string v0, "[video] OP_START execute , mMediaPlayer real start !"

    .line 409
    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iput v14, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 412
    iget-wide v5, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g:J

    cmp-long v0, v5, v16

    if-ltz v0, :cond_13

    .line 413
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {v0, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(J)V

    const-wide/16 v5, -0x1

    .line 414
    iput-wide v5, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g:J

    .line 417
    :cond_13
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_15

    const/16 v5, 0x138

    .line 418
    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    const/16 v5, 0x139

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    goto :goto_8

    :catchall_c
    move-exception v0

    const-string v5, "OP_START error: "

    .line 423
    invoke-static {v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_14
    :goto_7
    const/4 v2, 0x0

    :cond_15
    :goto_8
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_16

    const/16 v0, 0xc8

    .line 621
    iput v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 622
    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c:Z

    if-nez v0, :cond_16

    const/16 v0, 0x134

    .line 623
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ILjava/lang/Object;)V

    .line 624
    iput-boolean v7, v1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c:Z

    :cond_16
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 321
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$6;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V
    .locals 1

    .line 353
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$7;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;Lcom/bytedance/sdk/openadsdk/core/video/a/a;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
    .locals 1

    .line 698
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b:Z

    if-nez p1, :cond_0

    const/16 p1, 0xd1

    goto :goto_0

    :cond_0
    const/16 p1, 0xce

    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 699
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->o:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 700
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x12e

    .line 701
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    const-string p1, "completion"

    .line 704
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/String;)V

    .line 705
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->D()V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;I)V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-eq v0, p1, :cond_0

    return-void

    .line 681
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x12d

    .line 682
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;IIII)V
    .locals 0

    .line 1012
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 p4, 0x137

    .line 1013
    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 927
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(FF)V

    return-void

    .line 929
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->a(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "SSMediaPlayeWrapper"

    const-string v1, "setQuietPlay error: "

    .line 932
    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(ZJZ)V
    .locals 4

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[video] MediaPlayerProxy#start firstSeekToPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",firstPlay :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isPauseOtherMusicVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tag_video_play"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->p:Z

    if-nez p4, :cond_0

    .line 176
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    .line 177
    invoke-virtual {p0, p4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Z)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-eqz p4, :cond_1

    .line 181
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(Z)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 186
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->r()V

    .line 187
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g:J

    return-void

    .line 189
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->C()V

    .line 190
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-eqz p1, :cond_4

    .line 192
    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->i()J

    move-result-wide v2

    cmp-long p1, p2, v2

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/c;->i()J

    move-result-wide p2

    :goto_1
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "[video] MediaPlayerProxy#start  error: getCurrentPosition :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_4
    :goto_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/d/d$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/video/d/c;II)Z
    .locals 2

    .line 710
    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "what="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "extra="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SSMediaPlayeWrapper"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u()V

    const/16 p1, 0xc8

    .line 716
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 717
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x12f

    .line 718
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 720
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x6c

    .line 721
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 722
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v0, 0x6d

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    const/16 p1, 0x134

    .line 725
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ILjava/lang/Object;)V

    .line 726
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->c:Z

    .line 728
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 729
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t()V

    :cond_3
    return v0
.end method

.method public b()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->p:Z

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 215
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->D()V

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
    .locals 2

    const/16 p1, 0xcd

    .line 799
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 801
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->p:Z

    if-eqz p1, :cond_0

    .line 802
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$8;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 815
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v0, 0x64

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 817
    :goto_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->o:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 818
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x131

    .line 819
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 821
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->v()V

    return-void
.end method

.method public b(Lcom/bytedance/sdk/openadsdk/core/video/d/c;II)Z
    .locals 2

    .line 763
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "what,extra:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SSMediaPlayeWrapper"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    .line 767
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/16 v0, 0x130

    .line 768
    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/16 p1, -0x3ec

    if-ne p3, p1, :cond_1

    .line 770
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    const/16 v0, 0x12f

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 773
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(II)V

    return v1
.end method

.method public c()V
    .locals 3

    const/16 v0, 0xcb

    .line 232
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    .line 233
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->D()V

    .line 237
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->z()V

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "release"

    .line 240
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a:Lcom/bytedance/sdk/openadsdk/core/video/d/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->e:Z

    .line 244
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 247
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t()V

    const-string v1, "SSMediaPlayeWrapper"

    const-string v2, "release error: "

    .line 248
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public c(Lcom/bytedance/sdk/openadsdk/core/video/d/c;)V
    .locals 1

    .line 835
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/16 v0, 0x132

    .line 836
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 275
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/d/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 334
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x6d

    .line 340
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 2

    .line 369
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->p:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 373
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public i()Z
    .locals 2

    .line 377
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->p:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->h:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 2

    .line 381
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v1, 0xcb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 2

    .line 385
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v1, 0xcd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 2

    .line 389
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public m()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 970
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t:J

    .line 971
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    return-void
.end method

.method public n()J
    .locals 2

    .line 985
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->w:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    .line 989
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->D()V

    .line 990
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t:J

    return-wide v0
.end method

.method public p()J
    .locals 6

    .line 994
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 995
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t:J

    .line 996
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->u:J

    .line 998
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->t:J

    return-wide v0
.end method
