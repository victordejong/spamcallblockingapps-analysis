.class public final Lcom/google/android/gms/measurement/internal/dy;
.super Lcom/google/android/gms/measurement/internal/fy;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private a:C

.field private b:J

.field private c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/measurement/internal/ea;

.field private final e:Lcom/google/android/gms/measurement/internal/ea;

.field private final f:Lcom/google/android/gms/measurement/internal/ea;

.field private final g:Lcom/google/android/gms/measurement/internal/ea;

.field private final h:Lcom/google/android/gms/measurement/internal/ea;

.field private final i:Lcom/google/android/gms/measurement/internal/ea;

.field private final j:Lcom/google/android/gms/measurement/internal/ea;

.field private final k:Lcom/google/android/gms/measurement/internal/ea;

.field private final l:Lcom/google/android/gms/measurement/internal/ea;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/fy;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 2
    iput-char v2, p0, Lcom/google/android/gms/measurement/internal/dy;->a:C

    .line 3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/dy;->b:J

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/ea;

    invoke-direct {v0, p0, v5, v2, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/dy;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->d:Lcom/google/android/gms/measurement/internal/ea;

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/ea;

    invoke-direct {v0, p0, v5, v3, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/dy;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->e:Lcom/google/android/gms/measurement/internal/ea;

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/ea;

    invoke-direct {v0, p0, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/dy;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->f:Lcom/google/android/gms/measurement/internal/ea;

    .line 7
    new-instance v0, Lcom/google/android/gms/measurement/internal/ea;

    invoke-direct {v0, p0, v4, v2, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/dy;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->g:Lcom/google/android/gms/measurement/internal/ea;

    .line 8
    new-instance v0, Lcom/google/android/gms/measurement/internal/ea;

    invoke-direct {v0, p0, v4, v3, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/dy;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->h:Lcom/google/android/gms/measurement/internal/ea;

    .line 9
    new-instance v0, Lcom/google/android/gms/measurement/internal/ea;

    invoke-direct {v0, p0, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/dy;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->i:Lcom/google/android/gms/measurement/internal/ea;

    .line 10
    new-instance v0, Lcom/google/android/gms/measurement/internal/ea;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/dy;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->j:Lcom/google/android/gms/measurement/internal/ea;

    .line 11
    new-instance v0, Lcom/google/android/gms/measurement/internal/ea;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/dy;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->k:Lcom/google/android/gms/measurement/internal/ea;

    .line 12
    new-instance v0, Lcom/google/android/gms/measurement/internal/ea;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, v2, v2}, Lcom/google/android/gms/measurement/internal/ea;-><init>(Lcom/google/android/gms/measurement/internal/dy;IZZ)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->l:Lcom/google/android/gms/measurement/internal/ea;

    .line 13
    return-void
.end method

.method private final D()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->o()Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    .line 58
    :goto_0
    iput-object v0, v1, Lcom/google/android/gms/measurement/internal/dy;->c:Ljava/lang/String;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->c:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 57
    const-string/jumbo v0, "FA"

    move-object v1, p0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/dy;)C
    .locals 1

    .prologue
    .line 145
    iget-char v0, p0, Lcom/google/android/gms/measurement/internal/dy;->a:C

    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/dy;C)C
    .locals 0

    .prologue
    .line 146
    iput-char p1, p0, Lcom/google/android/gms/measurement/internal/dy;->a:C

    return p1
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/dy;J)J
    .locals 1

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/dy;->b:J

    return-wide p1
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 26
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/ed;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ed;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(ZLjava/lang/Object;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v2, 0x0

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    .line 83
    if-nez p1, :cond_0

    .line 84
    const-string/jumbo v0, ""

    .line 120
    :goto_0
    return-object v0

    .line 85
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 86
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 87
    :goto_1
    instance-of v0, v1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 88
    if-nez p0, :cond_1

    .line 89
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 90
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x64

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    .line 91
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2d

    if-ne v0, v2, :cond_3

    const-string/jumbo v0, "-"

    .line 93
    :goto_2
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 96
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v4, v1

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v1, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 92
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_2

    .line 98
    :cond_4
    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 99
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 100
    :cond_5
    instance-of v0, v1, Ljava/lang/Throwable;

    if-eqz v0, :cond_9

    .line 101
    check-cast v1, Ljava/lang/Throwable;

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    if-eqz p0, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    const-class v0, Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/dy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v5, v1

    move v0, v2

    :goto_4
    if-ge v0, v5, :cond_6

    aget-object v2, v1, v0

    .line 106
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v6

    if-nez v6, :cond_8

    .line 107
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 108
    if-eqz v6, :cond_8

    .line 109
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/dy;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 111
    const-string/jumbo v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 103
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 114
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 116
    :cond_9
    instance-of v0, v1, Lcom/google/android/gms/measurement/internal/ed;

    if-eqz v0, :cond_a

    .line 117
    check-cast v1, Lcom/google/android/gms/measurement/internal/ed;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/ed;->a(Lcom/google/android/gms/measurement/internal/ed;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 118
    :cond_a
    if-eqz p0, :cond_b

    .line 119
    const-string/jumbo v0, "-"

    goto/16 :goto_0

    .line 120
    :cond_b
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_c
    move-object v1, p1

    goto/16 :goto_1
.end method

.method static a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string/jumbo p1, ""

    .line 63
    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/measurement/internal/dy;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {p0, p3}, Lcom/google/android/gms/measurement/internal/dy;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {p0, p4}, Lcom/google/android/gms/measurement/internal/dy;->a(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string/jumbo v0, ""

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 69
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string/jumbo v0, ": "

    .line 71
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 72
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string/jumbo v0, ", "

    .line 75
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 76
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string/jumbo v0, ", "

    .line 79
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/dy;)J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/dy;->b:J

    return-wide v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const-string/jumbo p0, ""

    .line 126
    :cond_0
    :goto_0
    return-object p0

    .line 123
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 124
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 126
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method protected final a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/dy;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method

.method protected final a(IZZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 27
    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/dy;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {v2, p4, p5, p6, p7}, Lcom/google/android/gms/measurement/internal/dy;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/dy;->a(ILjava/lang/String;)V

    .line 30
    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    .line 32
    invoke-static {p4}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->z:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->g()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v7

    .line 34
    if-nez v7, :cond_2

    .line 35
    const-string/jumbo v0, "Scheduler not set. Not logging error/warn"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/dy;->a(ILjava/lang/String;)V

    .line 46
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/fy;->z()Z

    move-result v0

    if-nez v0, :cond_3

    .line 38
    const-string/jumbo v0, "Scheduler not initialized. Not logging error/warn"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/measurement/internal/dy;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_3
    if-gez p1, :cond_5

    .line 42
    :goto_1
    const/16 v0, 0x9

    if-lt v2, v0, :cond_4

    .line 43
    const/16 v2, 0x8

    .line 45
    :cond_4
    new-instance v0, Lcom/google/android/gms/measurement/internal/eb;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/eb;-><init>(Lcom/google/android/gms/measurement/internal/dy;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_5
    move v2, p1

    goto :goto_1
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method protected final a(I)Z
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/dy;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/ea;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->e:Lcom/google/android/gms/measurement/internal/ea;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/measurement/internal/ea;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->f:Lcom/google/android/gms/measurement/internal/ea;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/measurement/internal/ea;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->g:Lcom/google/android/gms/measurement/internal/ea;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/measurement/internal/ea;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->h:Lcom/google/android/gms/measurement/internal/ea;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/measurement/internal/ea;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->i:Lcom/google/android/gms/measurement/internal/ea;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/measurement/internal/ea;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->j:Lcom/google/android/gms/measurement/internal/ea;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/measurement/internal/ea;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->k:Lcom/google/android/gms/measurement/internal/ea;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/measurement/internal/ea;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->l:Lcom/google/android/gms/measurement/internal/ea;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/el;->b:Lcom/google/android/gms/measurement/internal/es;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/es;->a()Landroid/util/Pair;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/measurement/internal/el;->a:Landroid/util/Pair;

    if-ne v0, v1, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic l()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->l()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 132
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    .prologue
    .line 133
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->n()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->o()V

    return-void
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final x_()Lcom/google/android/gms/measurement/internal/ea;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dy;->d:Lcom/google/android/gms/measurement/internal/ea;

    return-object v0
.end method

.method public final bridge synthetic y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/fy;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method
