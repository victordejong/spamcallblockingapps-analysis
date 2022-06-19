.class final Lcom/google/android/gms/internal/ads/fk3;
.super Lcom/google/android/gms/internal/ads/ak3;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field public static final d:Ljava/lang/Object;


# instance fields
.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/fk3;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ak3;-><init>(Lcom/google/android/gms/internal/ads/p7;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/fk3;->e:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/fk3;->f:Ljava/lang/Object;

    return-void
.end method

.method static synthetic p(Lcom/google/android/gms/internal/ads/fk3;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/fk3;->f:Ljava/lang/Object;

    return-object p0
.end method

.method public static q(Lcom/google/android/gms/internal/ads/j5;)Lcom/google/android/gms/internal/ads/fk3;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fk3;

    new-instance v1, Lcom/google/android/gms/internal/ads/hk3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/hk3;-><init>(Lcom/google/android/gms/internal/ads/j5;)V

    sget-object p0, Lcom/google/android/gms/internal/ads/o7;->a:Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/ads/fk3;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/fk3;-><init>(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static r(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fk3;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fk3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/fk3;-><init>(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak3;->c:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/p7;->f(ILcom/google/android/gms/internal/ads/o7;J)Lcom/google/android/gms/internal/ads/o7;

    .line 2
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/o7;->e:Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/fk3;->e:Ljava/lang/Object;

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/o7;->a:Ljava/lang/Object;

    .line 3
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/o7;->e:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final h(ILcom/google/android/gms/internal/ads/m7;Z)Lcom/google/android/gms/internal/ads/m7;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak3;->c:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/p7;->h(ILcom/google/android/gms/internal/ads/m7;Z)Lcom/google/android/gms/internal/ads/m7;

    .line 2
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/m7;->c:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fk3;->f:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/fk3;->d:Ljava/lang/Object;

    .line 3
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/m7;->c:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public final i(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak3;->c:Lcom/google/android/gms/internal/ads/p7;

    sget-object v1, Lcom/google/android/gms/internal/ads/fk3;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fk3;->f:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 2
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/p7;->i(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public final j(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ak3;->c:Lcom/google/android/gms/internal/ads/p7;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/p7;->j(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fk3;->f:Ljava/lang/Object;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/wa;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/fk3;->d:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public final s(Lcom/google/android/gms/internal/ads/p7;)Lcom/google/android/gms/internal/ads/fk3;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/fk3;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fk3;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fk3;->f:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/fk3;-><init>(Lcom/google/android/gms/internal/ads/p7;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
