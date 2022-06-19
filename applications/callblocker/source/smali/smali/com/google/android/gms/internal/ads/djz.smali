.class public abstract Lcom/google/android/gms/internal/ads/djz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field protected final a:Lcom/google/android/gms/internal/ads/din;

.field protected final b:Lcom/google/android/gms/internal/ads/atw$a$a;

.field protected c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/din;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/atw$a$a;II)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/djz;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/djz;->a:Lcom/google/android/gms/internal/ads/din;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/djz;->e:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/djz;->f:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/djz;->b:Lcom/google/android/gms/internal/ads/atw$a$a;

    .line 7
    iput p5, p0, Lcom/google/android/gms/internal/ads/djz;->g:I

    .line 8
    iput p6, p0, Lcom/google/android/gms/internal/ads/djz;->h:I

    .line 9
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public b()Ljava/lang/Void;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 10
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 11
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djz;->a:Lcom/google/android/gms/internal/ads/din;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/djz;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/djz;->f:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/din;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/djz;->c:Ljava/lang/reflect/Method;

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djz;->c:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 22
    :cond_0
    :goto_0
    return-object v5

    .line 14
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/djz;->a()V

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/djz;->a:Lcom/google/android/gms/internal/ads/din;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/din;->h()Lcom/google/android/gms/internal/ads/chc;

    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    iget v3, p0, Lcom/google/android/gms/internal/ads/djz;->g:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_0

    .line 17
    iget v3, p0, Lcom/google/android/gms/internal/ads/djz;->h:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/djz;->g:I

    .line 18
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v0, v6, v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 19
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/google/android/gms/internal/ads/chc;->a(IIJ)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/djz;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
