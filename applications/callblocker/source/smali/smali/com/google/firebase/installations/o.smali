.class Lcom/google/firebase/installations/o;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-installations@@16.2.1"


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/installations/o;->a:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lcom/google/firebase/installations/a/d;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->f()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/firebase/installations/a/d;->e()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 34
    invoke-virtual {p0}, Lcom/google/firebase/installations/o;->a()J

    move-result-wide v4

    sget-wide v6, Lcom/google/firebase/installations/o;->a:J

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 37
    const/4 v0, 0x0

    goto :goto_0
.end method
