.class public final Lcom/google/android/gms/internal/ads/agw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/afk;

.field private b:Lcom/google/android/gms/internal/ads/ahf;

.field private c:Lcom/google/android/gms/internal/ads/clh;

.field private d:Lcom/google/android/gms/internal/ads/ahp;

.field private e:Lcom/google/android/gms/internal/ads/chw;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/age;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/agw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/afh;
    .locals 7

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agw;->a:Lcom/google/android/gms/internal/ads/afk;

    const-class v1, Lcom/google/android/gms/internal/ads/afk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agw;->b:Lcom/google/android/gms/internal/ads/ahf;

    const-class v1, Lcom/google/android/gms/internal/ads/ahf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agw;->c:Lcom/google/android/gms/internal/ads/clh;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/clh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/clh;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agw;->c:Lcom/google/android/gms/internal/ads/clh;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agw;->d:Lcom/google/android/gms/internal/ads/ahp;

    if-nez v0, :cond_1

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/ahp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ahp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agw;->d:Lcom/google/android/gms/internal/ads/ahp;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agw;->e:Lcom/google/android/gms/internal/ads/chw;

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/chw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/chw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agw;->e:Lcom/google/android/gms/internal/ads/chw;

    .line 15
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/agf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/agw;->a:Lcom/google/android/gms/internal/ads/afk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/agw;->b:Lcom/google/android/gms/internal/ads/ahf;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/agw;->c:Lcom/google/android/gms/internal/ads/clh;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/agw;->d:Lcom/google/android/gms/internal/ads/ahp;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/agw;->e:Lcom/google/android/gms/internal/ads/chw;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/agf;-><init>(Lcom/google/android/gms/internal/ads/afk;Lcom/google/android/gms/internal/ads/ahf;Lcom/google/android/gms/internal/ads/clh;Lcom/google/android/gms/internal/ads/ahp;Lcom/google/android/gms/internal/ads/chw;Lcom/google/android/gms/internal/ads/age;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/afk;)Lcom/google/android/gms/internal/ads/agw;
    .locals 1

    .prologue
    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/afk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agw;->a:Lcom/google/android/gms/internal/ads/afk;

    .line 4
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ahf;)Lcom/google/android/gms/internal/ads/agw;
    .locals 1

    .prologue
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/ahf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agw;->b:Lcom/google/android/gms/internal/ads/ahf;

    .line 6
    return-object p0
.end method
