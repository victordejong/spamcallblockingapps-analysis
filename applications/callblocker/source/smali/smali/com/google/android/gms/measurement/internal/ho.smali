.class public final Lcom/google/android/gms/measurement/internal/ho;
.super Lcom/google/android/gms/measurement/internal/de;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field protected a:Lcom/google/android/gms/measurement/internal/hp;

.field private volatile b:Lcom/google/android/gms/measurement/internal/hp;

.field private c:Lcom/google/android/gms/measurement/internal/hp;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/measurement/internal/hp;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/app/Activity;

.field private volatile f:Lcom/google/android/gms/measurement/internal/hp;

.field private g:Lcom/google/android/gms/measurement/internal/hp;

.field private h:Z

.field private final i:Ljava/lang/Object;

.field private j:Lcom/google/android/gms/measurement/internal/hp;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/de;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->i:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->d:Ljava/util/Map;

    .line 4
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/ho;)Lcom/google/android/gms/measurement/internal/hp;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->g:Lcom/google/android/gms/measurement/internal/hp;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/ho;Lcom/google/android/gms/measurement/internal/hp;)Lcom/google/android/gms/measurement/internal/hp;
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->g:Lcom/google/android/gms/measurement/internal/hp;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 144
    const-string/jumbo v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 145
    array-length v1, v0

    if-lez v1, :cond_1

    .line 146
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 148
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 150
    :cond_0
    return-object v0

    .line 147
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private final a(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/hp;Z)V
    .locals 9

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->b:Lcom/google/android/gms/measurement/internal/hp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->c:Lcom/google/android/gms/measurement/internal/hp;

    move-object v7, v0

    .line 60
    :goto_0
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/hp;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 61
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ho;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    :goto_1
    new-instance v1, Lcom/google/android/gms/measurement/internal/hp;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/hp;->a:Ljava/lang/String;

    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/hp;->c:J

    iget-boolean v6, p2, Lcom/google/android/gms/measurement/internal/hp;->e:Z

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/hp;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object v2, v1

    .line 64
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->b:Lcom/google/android/gms/measurement/internal/hp;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->c:Lcom/google/android/gms/measurement/internal/hp;

    .line 65
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/ho;->b:Lcom/google/android/gms/measurement/internal/hp;

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v4

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v8

    new-instance v0, Lcom/google/android/gms/measurement/internal/hr;

    move-object v1, p0

    move-object v3, v7

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/hr;-><init>(Lcom/google/android/gms/measurement/internal/ho;Lcom/google/android/gms/measurement/internal/hp;Lcom/google/android/gms/measurement/internal/hp;JZ)V

    .line 68
    invoke-virtual {v8, v0}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 69
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->b:Lcom/google/android/gms/measurement/internal/hp;

    move-object v7, v0

    goto :goto_0

    .line 61
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move-object v2, p2

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/ho;Lcom/google/android/gms/measurement/internal/hp;Lcom/google/android/gms/measurement/internal/hp;JZLandroid/os/Bundle;)V
    .locals 9

    .prologue
    .line 259
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/ho;->a(Lcom/google/android/gms/measurement/internal/hp;Lcom/google/android/gms/measurement/internal/hp;JZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/ho;Lcom/google/android/gms/measurement/internal/hp;ZJ)V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/google/android/gms/measurement/internal/ho;->a(Lcom/google/android/gms/measurement/internal/hp;ZJ)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/measurement/internal/hp;Landroid/os/Bundle;Z)V
    .locals 4

    .prologue
    .line 124
    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    const-string/jumbo v0, "_sc"

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_4

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hp;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 127
    const-string/jumbo v0, "_sn"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hp;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hp;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 130
    const-string/jumbo v0, "_sc"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_1
    const-string/jumbo v0, "_si"

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/hp;->c:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 137
    :cond_1
    :goto_2
    return-void

    .line 128
    :cond_2
    const-string/jumbo v0, "_sn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_3
    const-string/jumbo v0, "_sc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 133
    :cond_4
    if-eqz p1, :cond_1

    if-nez p0, :cond_1

    if-eqz p2, :cond_1

    .line 134
    const-string/jumbo v0, "_sn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 135
    const-string/jumbo v0, "_sc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v0, "_si"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private final a(Lcom/google/android/gms/measurement/internal/hp;Lcom/google/android/gms/measurement/internal/hp;JZLandroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 70
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->T:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 73
    if-eqz p5, :cond_c

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ho;->a:Lcom/google/android/gms/measurement/internal/hp;

    if-eqz v2, :cond_c

    move v2, v1

    .line 74
    :goto_0
    if-eqz v2, :cond_0

    .line 75
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/ho;->a:Lcom/google/android/gms/measurement/internal/hp;

    invoke-direct {p0, v3, v1, p3, p4}, Lcom/google/android/gms/measurement/internal/ho;->a(Lcom/google/android/gms/measurement/internal/hp;ZJ)V

    .line 78
    :cond_0
    :goto_1
    if-eqz p2, :cond_1

    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/hp;->c:J

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/hp;->c:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/hp;->b:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/hp;->b:Ljava/lang/String;

    .line 79
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/hp;->a:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/hp;->a:Ljava/lang/String;

    .line 80
    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v0, v1

    .line 81
    :cond_2
    if-eqz v0, :cond_a

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->aD:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    :cond_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/ho;->a(Lcom/google/android/gms/measurement/internal/hp;Landroid/os/Bundle;Z)V

    .line 86
    if-eqz p2, :cond_6

    .line 87
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/hp;->a:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 88
    const-string/jumbo v1, "_pn"

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/hp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_4
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/hp;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 90
    const-string/jumbo v1, "_pc"

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/hp;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_5
    const-string/jumbo v1, "_pi"

    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/hp;->c:J

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 92
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->T:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 93
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jr;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 94
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->V:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 95
    invoke-static {}, Lcom/google/android/gms/internal/measurement/jg;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aA:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v1

    .line 100
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/jf;

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/jf;->c(J)J

    move-result-wide v2

    .line 105
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/os/Bundle;J)V

    .line 107
    :cond_7
    const-string/jumbo v1, "auto"

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/t;->aD:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    .line 110
    const-string/jumbo v1, "_mt"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 111
    :cond_8
    iget-boolean v1, p1, Lcom/google/android/gms/measurement/internal/hp;->e:Z

    if-eqz v1, :cond_10

    const-string/jumbo v1, "app"

    .line 112
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->b()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v2

    const-string/jumbo v3, "_vs"

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/gms/measurement/internal/gk;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ho;->a:Lcom/google/android/gms/measurement/internal/hp;

    .line 114
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aD:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/hp;->e:Z

    if-eqz v0, :cond_b

    .line 115
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ho;->g:Lcom/google/android/gms/measurement/internal/hp;

    .line 116
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/hp;)V

    .line 117
    return-void

    :cond_c
    move v2, v0

    .line 73
    goto/16 :goto_0

    .line 76
    :cond_d
    if-eqz p5, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ho;->a:Lcom/google/android/gms/measurement/internal/hp;

    if-eqz v2, :cond_e

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ho;->a:Lcom/google/android/gms/measurement/internal/hp;

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/google/android/gms/measurement/internal/ho;->a(Lcom/google/android/gms/measurement/internal/hp;ZJ)V

    :cond_e
    move v2, v0

    goto/16 :goto_1

    .line 102
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v1

    .line 103
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/iz;->b:Lcom/google/android/gms/measurement/internal/jf;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jf;->b()J

    move-result-wide v2

    goto :goto_2

    .line 111
    :cond_10
    const-string/jumbo v1, "auto"

    goto :goto_3
.end method

.method private final a(Lcom/google/android/gms/measurement/internal/hp;ZJ)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->a()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ab;->a(J)V

    .line 119
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/hp;->d:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 120
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v2

    .line 121
    invoke-virtual {v2, v0, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/iz;->a(ZZJ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 122
    iput-boolean v1, p1, Lcom/google/android/gms/measurement/internal/hp;->d:Z

    .line 123
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 119
    goto :goto_0
.end method

.method private final d(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/hp;
    .locals 6

    .prologue
    .line 151
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/hp;

    .line 153
    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ho;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v0, Lcom/google/android/gms/measurement/internal/hp;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/jw;->c()J

    move-result-wide v4

    invoke-direct {v0, v2, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/hp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 156
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ho;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aD:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ho;->f:Lcom/google/android/gms/measurement/internal/hp;

    goto :goto_0
.end method


# virtual methods
.method public final B()Lcom/google/android/gms/measurement/internal/hp;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->b:Lcom/google/android/gms/measurement/internal/hp;

    return-object v0
.end method

.method public final bridge synthetic a()Lcom/google/android/gms/measurement/internal/ab;
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->a()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Lcom/google/android/gms/measurement/internal/hp;
    .locals 2

    .prologue
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aD:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->a:Lcom/google/android/gms/measurement/internal/hp;

    .line 10
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->a:Lcom/google/android/gms/measurement/internal/hp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->a:Lcom/google/android/gms/measurement/internal/hp;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->g:Lcom/google/android/gms/measurement/internal/hp;

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aD:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ho;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ho;->h:Z

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->e:Landroid/app/Activity;

    if-eq p1, v0, :cond_0

    .line 178
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/ho;->i:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ho;->e:Landroid/app/Activity;

    .line 180
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/measurement/internal/t;->aC:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->f:Lcom/google/android/gms/measurement/internal/hp;

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/measurement/internal/hv;

    invoke-direct {v2, p0}, Lcom/google/android/gms/measurement/internal/hv;-><init>(Lcom/google/android/gms/measurement/internal/ho;)V

    .line 185
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 186
    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aC:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->f:Lcom/google/android/gms/measurement/internal/hp;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->b:Lcom/google/android/gms/measurement/internal/hp;

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/hq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/hq;-><init>(Lcom/google/android/gms/measurement/internal/ho;)V

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 199
    :goto_0
    return-void

    .line 180
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 186
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 193
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ho;->d(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/hp;

    move-result-object v0

    .line 194
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/ho;->a(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/hp;Z)V

    .line 195
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->a()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    .line 197
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/measurement/internal/bc;

    invoke-direct {v4, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/bc;-><init>(Lcom/google/android/gms/measurement/internal/ab;J)V

    .line 198
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    if-eqz p2, :cond_0

    .line 164
    const-string/jumbo v0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    .line 167
    new-instance v1, Lcom/google/android/gms/measurement/internal/hp;

    const-string/jumbo v2, "name"

    .line 168
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "referrer_name"

    .line 169
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "id"

    .line 170
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/hp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v2, 0x64

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "setCurrentScreen cannot be called while screen reporting is disabled."

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->b:Lcom/google/android/gms/measurement/internal/hp;

    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "setCurrentScreen cannot be called while no activity active"

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "setCurrentScreen must be called with an activity in the activity lifecycle"

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_2
    if-nez p3, :cond_3

    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ho;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->b:Lcom/google/android/gms/measurement/internal/hp;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/hp;->b:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 29
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ho;->b:Lcom/google/android/gms/measurement/internal/hp;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/hp;->a:Ljava/lang/String;

    invoke-static {v1, p2}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 30
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "setCurrentScreen cannot be called with the same class and name"

    .line 33
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_4
    if-eqz p2, :cond_6

    .line 36
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_6

    .line 38
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Invalid screen name length in setCurrentScreen. Length"

    .line 40
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 42
    :cond_6
    if-eqz p3, :cond_8

    .line 43
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 44
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_8

    .line 45
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->g()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Invalid class name length in setCurrentScreen. Length"

    .line 47
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 49
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Setting current screen to name, class"

    .line 51
    if-nez p2, :cond_9

    const-string/jumbo v0, "null"

    .line 52
    :goto_1
    invoke-virtual {v1, v2, v0, p3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    new-instance v0, Lcom/google/android/gms/measurement/internal/hp;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jw;->c()J

    move-result-wide v2

    invoke-direct {v0, p2, p3, v2, v3}, Lcom/google/android/gms/measurement/internal/hp;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ho;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/ho;->a(Landroid/app/Activity;Lcom/google/android/gms/measurement/internal/hp;Z)V

    goto/16 :goto_0

    :cond_9
    move-object v0, p2

    .line 51
    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/hp;)V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->k:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ho;->k:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ho;->j:Lcom/google/android/gms/measurement/internal/hp;

    .line 143
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bridge synthetic b()Lcom/google/android/gms/measurement/internal/gk;
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->b()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aD:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ho;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/ho;->h:Z

    .line 203
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/t;->aC:Lcom/google/android/gms/measurement/internal/dr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/b;->a(Lcom/google/android/gms/measurement/internal/dr;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/ho;->b:Lcom/google/android/gms/measurement/internal/hp;

    .line 207
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ht;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/ht;-><init>(Lcom/google/android/gms/measurement/internal/ho;)V

    .line 208
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 216
    :goto_0
    return-void

    .line 203
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 210
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ho;->d(Landroid/app/Activity;)Lcom/google/android/gms/measurement/internal/hp;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ho;->b:Lcom/google/android/gms/measurement/internal/hp;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/ho;->c:Lcom/google/android/gms/measurement/internal/hp;

    .line 212
    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/ho;->b:Lcom/google/android/gms/measurement/internal/hp;

    .line 213
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v2

    .line 214
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/measurement/internal/hs;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/hs;-><init>(Lcom/google/android/gms/measurement/internal/ho;Lcom/google/android/gms/measurement/internal/hp;J)V

    .line 215
    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    if-eqz p2, :cond_0

    .line 221
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/hp;

    .line 222
    if-eqz v0, :cond_0

    .line 224
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 225
    const-string/jumbo v2, "id"

    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/hp;->c:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 226
    const-string/jumbo v2, "name"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/hp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string/jumbo v2, "referrer_name"

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/hp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "com.google.app_measurement.screen_service"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final bridge synthetic c()Lcom/google/android/gms/measurement/internal/dv;
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->c()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v0

    return-object v0
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 230
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ho;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->e:Landroid/app/Activity;

    if-ne p1, v0, :cond_0

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->e:Landroid/app/Activity;

    .line 233
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->f()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    :goto_0
    return-void

    .line 233
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ho;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/measurement/internal/hu;
    .locals 1

    .prologue
    .line 245
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/ho;
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/du;
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->f()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/iz;
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()V
    .locals 0

    .prologue
    .line 238
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->l()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    .prologue
    .line 240
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->n()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->o()V

    return-void
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 250
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 253
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 254
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 255
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method

.method protected final z()Z
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    return v0
.end method
