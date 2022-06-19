.class public final Lcom/verizon/ads/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static volatile a:I = 0x4


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/verizon/ads/Logger;->b:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VAS-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/verizon/ads/Logger;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(I)V
    .locals 0

    .line 70
    sput p0, Lcom/verizon/ads/Logger;->a:I

    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/verizon/ads/Logger;
    .locals 1

    .line 58
    new-instance v0, Lcom/verizon/ads/Logger;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/verizon/ads/Logger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .line 81
    sget v0, Lcom/verizon/ads/Logger;->a:I

    return v0
.end method

.method public static isLogLevelEnabled(I)Z
    .locals 1

    .line 93
    sget v0, Lcom/verizon/ads/Logger;->a:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 131
    sget p1, Lcom/verizon/ads/Logger;->a:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 132
    invoke-direct {p0}, Lcom/verizon/ads/Logger;->a()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 145
    sget p1, Lcom/verizon/ads/Logger;->a:I

    const/4 p2, 0x3

    if-gt p1, p2, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/verizon/ads/Logger;->a()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 212
    sget v0, Lcom/verizon/ads/Logger;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/verizon/ads/Logger;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 226
    sget v0, Lcom/verizon/ads/Logger;->a:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/verizon/ads/Logger;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 1

    .line 158
    sget p1, Lcom/verizon/ads/Logger;->a:I

    const/4 v0, 0x4

    if-gt p1, v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/verizon/ads/Logger;->a()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 172
    sget p1, Lcom/verizon/ads/Logger;->a:I

    const/4 p2, 0x4

    if-gt p1, p2, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/verizon/ads/Logger;->a()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    .line 104
    sget p1, Lcom/verizon/ads/Logger;->a:I

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/verizon/ads/Logger;->a()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 118
    sget p1, Lcom/verizon/ads/Logger;->a:I

    const/4 p2, 0x2

    if-gt p1, p2, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/verizon/ads/Logger;->a()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final w(Ljava/lang/String;)V
    .locals 2

    .line 185
    sget v0, Lcom/verizon/ads/Logger;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/verizon/ads/Logger;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 199
    sget v0, Lcom/verizon/ads/Logger;->a:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/verizon/ads/Logger;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
