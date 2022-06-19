.class public final Lcom/google/android/gms/ads/b/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/b/d$a;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I

.field private final f:Lcom/google/android/gms/ads/q;

.field private final g:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/b/d$a;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/b/d$a;->a(Lcom/google/android/gms/ads/b/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/d;->a:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/b/d$a;->b(Lcom/google/android/gms/ads/b/d$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/b/d;->b:I

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/b/d$a;->c(Lcom/google/android/gms/ads/b/d$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/b/d;->c:I

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/b/d$a;->d(Lcom/google/android/gms/ads/b/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/d;->d:Z

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/b/d$a;->e(Lcom/google/android/gms/ads/b/d$a;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/b/d;->e:I

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/ads/b/d$a;->f(Lcom/google/android/gms/ads/b/d$a;)Lcom/google/android/gms/ads/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/b/d;->f:Lcom/google/android/gms/ads/q;

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/b/d$a;->g(Lcom/google/android/gms/ads/b/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/b/d;->g:Z

    .line 9
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/b/d$a;Lcom/google/android/gms/ads/b/m;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/b/d;-><init>(Lcom/google/android/gms/ads/b/d$a;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/d;->a:Z

    return v0
.end method

.method public final b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11
    iget v0, p0, Lcom/google/android/gms/ads/b/d;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/ads/b/d;->c:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/d;->d:Z

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/google/android/gms/ads/b/d;->e:I

    return v0
.end method

.method public final f()Lcom/google/android/gms/ads/q;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/b/d;->f:Lcom/google/android/gms/ads/q;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/d;->g:Z

    return v0
.end method
