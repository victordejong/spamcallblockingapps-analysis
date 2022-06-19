.class public final Lcom/google/android/gms/ads/b/d$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:Z

.field private e:Lcom/google/android/gms/ads/q;

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean v1, p0, Lcom/google/android/gms/ads/b/d$a;->a:Z

    .line 3
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/b/d$a;->b:I

    .line 4
    iput v1, p0, Lcom/google/android/gms/ads/b/d$a;->c:I

    .line 5
    iput-boolean v1, p0, Lcom/google/android/gms/ads/b/d$a;->d:Z

    .line 6
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/b/d$a;->f:I

    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/ads/b/d$a;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/ads/b/d$a;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/d$a;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/ads/b/d$a;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/gms/ads/b/d$a;->b:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/ads/b/d$a;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/android/gms/ads/b/d$a;->c:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/gms/ads/b/d$a;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/d$a;->d:Z

    return v0
.end method

.method static synthetic e(Lcom/google/android/gms/ads/b/d$a;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/google/android/gms/ads/b/d$a;->f:I

    return v0
.end method

.method static synthetic f(Lcom/google/android/gms/ads/b/d$a;)Lcom/google/android/gms/ads/q;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/ads/b/d$a;->e:Lcom/google/android/gms/ads/q;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/ads/b/d$a;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/d$a;->g:Z

    return v0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/ads/b/d$a;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10
    iput p1, p0, Lcom/google/android/gms/ads/b/d$a;->b:I

    .line 11
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/ads/q;)Lcom/google/android/gms/ads/b/d$a;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/android/gms/ads/b/d$a;->e:Lcom/google/android/gms/ads/q;

    .line 19
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/ads/b/d$a;
    .locals 0

    .prologue
    .line 8
    iput-boolean p1, p0, Lcom/google/android/gms/ads/b/d$a;->a:Z

    .line 9
    return-object p0
.end method

.method public final a()Lcom/google/android/gms/ads/b/d;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/google/android/gms/ads/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/b/d;-><init>(Lcom/google/android/gms/ads/b/d$a;Lcom/google/android/gms/ads/b/m;)V

    return-object v0
.end method

.method public final b(I)Lcom/google/android/gms/ads/b/d$a;
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/google/android/gms/ads/b/d$a;->f:I

    .line 17
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/ads/b/d$a;
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/google/android/gms/ads/b/d$a;->d:Z

    .line 15
    return-object p0
.end method
