.class final Lcom/google/android/gms/internal/measurement/ha;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/measurement/ha$a;,
        Lcom/google/android/gms/internal/measurement/ha$c;,
        Lcom/google/android/gms/internal/measurement/ha$b;,
        Lcom/google/android/gms/internal/measurement/ha$d;
    }
.end annotation


# static fields
.field static final a:Z

.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Lsun/misc/Unsafe;

.field private static final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final e:Z

.field private static final f:Z

.field private static final g:Lcom/google/android/gms/internal/measurement/ha$d;

.field private static final h:Z

.field private static final i:Z

.field private static final j:J

.field private static final k:J

.field private static final l:J

.field private static final m:J

.field private static final n:J

.field private static final o:J

.field private static final p:J

.field private static final q:J

.field private static final r:J

.field private static final s:J

.field private static final t:J

.field private static final u:J

.field private static final v:J

.field private static final w:J

.field private static final x:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 141
    const-class v1, Lcom/google/android/gms/internal/measurement/ha;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ha;->b:Ljava/util/logging/Logger;

    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ha;->c()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ha;->c:Lsun/misc/Unsafe;

    .line 143
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cq;->b()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/ha;->d:Ljava/lang/Class;

    .line 144
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Class;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/gms/internal/measurement/ha;->e:Z

    .line 145
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Class;)Z

    move-result v1

    sput-boolean v1, Lcom/google/android/gms/internal/measurement/ha;->f:Z

    .line 146
    sget-object v1, Lcom/google/android/gms/internal/measurement/ha;->c:Lsun/misc/Unsafe;

    if-nez v1, :cond_2

    .line 155
    :cond_0
    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    .line 156
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ha;->e()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/ha;->h:Z

    .line 157
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ha;->d()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/measurement/ha;->i:Z

    .line 158
    const-class v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->j:J

    .line 159
    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->k:J

    .line 160
    const-class v0, [Z

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->l:J

    .line 161
    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->m:J

    .line 162
    const-class v0, [I

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->n:J

    .line 163
    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->o:J

    .line 164
    const-class v0, [J

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->p:J

    .line 165
    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->q:J

    .line 166
    const-class v0, [F

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->r:J

    .line 167
    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->s:J

    .line 168
    const-class v0, [D

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->t:J

    .line 169
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->u:J

    .line 170
    const-class v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->v:J

    .line 171
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ha;->f()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    if-nez v1, :cond_5

    :cond_1
    const-wide/16 v0, -0x1

    .line 174
    :goto_1
    sput-wide v0, Lcom/google/android/gms/internal/measurement/ha;->w:J

    .line 175
    sget-wide v0, Lcom/google/android/gms/internal/measurement/ha;->j:J

    const-wide/16 v2, 0x7

    and-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/google/android/gms/internal/measurement/ha;->x:I

    .line 176
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    :goto_2
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/ha;->a:Z

    return-void

    .line 148
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cq;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 149
    sget-boolean v1, Lcom/google/android/gms/internal/measurement/ha;->e:Z

    if-eqz v1, :cond_3

    .line 150
    new-instance v0, Lcom/google/android/gms/internal/measurement/ha$c;

    sget-object v1, Lcom/google/android/gms/internal/measurement/ha;->c:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ha$c;-><init>(Lsun/misc/Unsafe;)V

    goto/16 :goto_0

    .line 151
    :cond_3
    sget-boolean v1, Lcom/google/android/gms/internal/measurement/ha;->f:Z

    if-eqz v1, :cond_0

    .line 152
    new-instance v0, Lcom/google/android/gms/internal/measurement/ha$a;

    sget-object v1, Lcom/google/android/gms/internal/measurement/ha;->c:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ha$a;-><init>(Lsun/misc/Unsafe;)V

    goto/16 :goto_0

    .line 154
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/measurement/ha$b;

    sget-object v1, Lcom/google/android/gms/internal/measurement/ha;->c:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/ha$b;-><init>(Lsun/misc/Unsafe;)V

    goto/16 :goto_0

    .line 172
    :cond_5
    sget-object v1, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    .line 173
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/ha$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_1

    .line 176
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([BJ)B
    .locals 5

    .prologue
    .line 34
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    sget-wide v2, Lcom/google/android/gms/internal/measurement/ha;->j:J

    add-long/2addr v2, p1

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/gms/internal/measurement/ha$d;->a(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static a(Ljava/lang/Object;J)I
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha$d;->e(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 4
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->c:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 113
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/Object;JB)V
    .locals 1

    .prologue
    .line 135
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Object;JB)V

    return-void
.end method

.method static a(Ljava/lang/Object;JD)V
    .locals 7

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/ha$d;->a(Ljava/lang/Object;JD)V

    .line 27
    return-void
.end method

.method static a(Ljava/lang/Object;JF)V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/ha$d;->a(Ljava/lang/Object;JF)V

    .line 24
    return-void
.end method

.method static a(Ljava/lang/Object;JI)V
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/ha$d;->a(Ljava/lang/Object;JI)V

    .line 15
    return-void
.end method

.method static a(Ljava/lang/Object;JJ)V
    .locals 7

    .prologue
    .line 17
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/ha$d;->a(Ljava/lang/Object;JJ)V

    .line 18
    return-void
.end method

.method static a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    .line 32
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ha$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 33
    return-void
.end method

.method static a(Ljava/lang/Object;JZ)V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/ha$d;->a(Ljava/lang/Object;JZ)V

    .line 21
    return-void
.end method

.method static a([BJB)V
    .locals 5

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    sget-wide v2, Lcom/google/android/gms/internal/measurement/ha;->j:J

    add-long/2addr v2, p1

    invoke-virtual {v0, p0, v2, v3, p3}, Lcom/google/android/gms/internal/measurement/ha$d;->a(Ljava/lang/Object;JB)V

    .line 36
    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 2
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/ha;->i:Z

    return v0
.end method

.method private static b(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 7
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/ha;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ha$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    .line 9
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static b(Ljava/lang/Object;J)J
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha$d;->f(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b(Ljava/lang/Object;JB)V
    .locals 1

    .prologue
    .line 136
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic b(Ljava/lang/Object;JZ)V
    .locals 1

    .prologue
    .line 139
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static b()Z
    .locals 1

    .prologue
    .line 3
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/ha;->h:Z

    return v0
.end method

.method private static c(Ljava/lang/Class;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 10
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/ha;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ha$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v0

    .line 12
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static c()Lsun/misc/Unsafe;
    .locals 2

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/measurement/hc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/hc;-><init>()V

    .line 39
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static c(Ljava/lang/Object;JB)V
    .locals 7

    .prologue
    const-wide/16 v4, -0x4

    .line 117
    and-long v0, p1, v4

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 118
    long-to-int v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    .line 119
    const/16 v2, 0xff

    shl-int/2addr v2, v1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    and-int/lit16 v2, p3, 0xff

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    .line 120
    and-long v2, p1, v4

    invoke-static {p0, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 121
    return-void
.end method

.method static synthetic c(Ljava/lang/Object;JZ)V
    .locals 1

    .prologue
    .line 140
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/ha;->e(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static c(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha$d;->b(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static d(Ljava/lang/Object;J)F
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha$d;->c(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method private static d(Ljava/lang/Object;JB)V
    .locals 7

    .prologue
    const-wide/16 v4, -0x4

    .line 122
    and-long v0, p1, v4

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    .line 123
    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    .line 124
    const/16 v2, 0xff

    shl-int/2addr v2, v1

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    and-int/lit16 v2, p3, 0xff

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    .line 125
    and-long v2, p1, v4

    invoke-static {p0, v2, v3, v0}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;JI)V

    .line 126
    return-void
.end method

.method private static d(Ljava/lang/Object;JZ)V
    .locals 1

    .prologue
    .line 129
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/ha;->c(Ljava/lang/Object;JB)V

    .line 130
    return-void

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    sget-object v2, Lcom/google/android/gms/internal/measurement/ha;->c:Lsun/misc/Unsafe;

    if-nez v2, :cond_0

    .line 68
    :goto_0
    return v0

    .line 45
    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/ha;->c:Lsun/misc/Unsafe;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 46
    const-string/jumbo v3, "objectFieldOffset"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/reflect/Field;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    const-string/jumbo v3, "arrayBaseOffset"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    const-string/jumbo v3, "arrayIndexScale"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    const-string/jumbo v3, "getInt"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    const-string/jumbo v3, "putInt"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    const-string/jumbo v3, "getLong"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    const-string/jumbo v3, "putLong"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    const-string/jumbo v3, "getObject"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    const-string/jumbo v3, "putObject"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cq;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 56
    goto/16 :goto_0

    .line 57
    :cond_1
    const-string/jumbo v3, "getByte"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    const-string/jumbo v3, "putByte"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    const-string/jumbo v3, "getBoolean"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    const-string/jumbo v3, "putBoolean"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    const-string/jumbo v3, "getFloat"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    const-string/jumbo v3, "putFloat"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 63
    const-string/jumbo v3, "getDouble"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    const-string/jumbo v3, "putDouble"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 65
    goto/16 :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    sget-object v2, Lcom/google/android/gms/internal/measurement/ha;->b:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "com.google.protobuf.UnsafeUtil"

    const-string/jumbo v5, "supportsUnsafeArrayOperations"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v5, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static d(Ljava/lang/Class;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 90
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cq;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :goto_0
    return v0

    .line 92
    :cond_0
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/ha;->d:Ljava/lang/Class;

    .line 93
    const-string/jumbo v3, "peekLong"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 94
    const-string/jumbo v3, "pokeLong"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 95
    const-string/jumbo v3, "pokeInt"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 96
    const-string/jumbo v3, "peekInt"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    const-string/jumbo v3, "pokeByte"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 98
    const-string/jumbo v3, "peekByte"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 99
    const-string/jumbo v3, "pokeByteArray"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const-class v6, [B

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 100
    const-string/jumbo v3, "peekByteArray"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const-class v6, [B

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 101
    goto/16 :goto_0

    .line 103
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method static e(Ljava/lang/Object;J)D
    .locals 3

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha$d;->d(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method private static e(Ljava/lang/Object;JZ)V
    .locals 1

    .prologue
    .line 131
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/measurement/ha;->d(Ljava/lang/Object;JB)V

    .line 132
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 69
    sget-object v2, Lcom/google/android/gms/internal/measurement/ha;->c:Lsun/misc/Unsafe;

    if-nez v2, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/ha;->c:Lsun/misc/Unsafe;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 72
    const-string/jumbo v3, "objectFieldOffset"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/reflect/Field;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    const-string/jumbo v3, "getLong"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 74
    invoke-static {}, Lcom/google/android/gms/internal/measurement/ha;->f()Ljava/lang/reflect/Field;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 76
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cq;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    const-string/jumbo v3, "getByte"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    const-string/jumbo v3, "putByte"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 80
    const-string/jumbo v3, "getInt"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    const-string/jumbo v3, "putInt"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 82
    const-string/jumbo v3, "getLong"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    const-string/jumbo v3, "putLong"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 84
    const-string/jumbo v3, "copyMemory"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    const-string/jumbo v3, "copyMemory"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 86
    goto/16 :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    sget-object v2, Lcom/google/android/gms/internal/measurement/ha;->b:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v4, "com.google.protobuf.UnsafeUtil"

    const-string/jumbo v5, "supportsUnsafeByteBufferOperations"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x47

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v6, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v5, v1}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static f(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/gms/internal/measurement/ha;->g:Lcom/google/android/gms/internal/measurement/ha$d;

    .line 29
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/ha$d;->a:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 30
    return-object v0
.end method

.method private static f()Ljava/lang/reflect/Field;
    .locals 3

    .prologue
    .line 104
    invoke-static {}, Lcom/google/android/gms/internal/measurement/cq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-class v0, Ljava/nio/Buffer;

    const-string/jumbo v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :cond_1
    const-class v0, Ljava/nio/Buffer;

    const-string/jumbo v1, "address"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Ljava/lang/Object;J)B
    .locals 1

    .prologue
    .line 133
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha;->k(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static synthetic h(Ljava/lang/Object;J)B
    .locals 1

    .prologue
    .line 134
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha;->l(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static synthetic i(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 137
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha;->m(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static synthetic j(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 138
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha;->n(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method private static k(Ljava/lang/Object;J)B
    .locals 7

    .prologue
    .line 115
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    const-wide/16 v4, 0x3

    and-long/2addr v2, v4

    const/4 v1, 0x3

    shl-long/2addr v2, v1

    long-to-int v1, v2

    ushr-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static l(Ljava/lang/Object;J)B
    .locals 5

    .prologue
    .line 116
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/ha;->a(Ljava/lang/Object;J)I

    move-result v0

    const-wide/16 v2, 0x3

    and-long/2addr v2, p1

    const/4 v1, 0x3

    shl-long/2addr v2, v1

    long-to-int v1, v2

    ushr-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private static m(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 127
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha;->k(Ljava/lang/Object;J)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static n(Ljava/lang/Object;J)Z
    .locals 1

    .prologue
    .line 128
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/ha;->l(Ljava/lang/Object;J)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
