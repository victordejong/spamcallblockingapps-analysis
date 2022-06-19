.class public final Lcom/google/android/gms/internal/ads/jl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ejb;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/eko;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/eko;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/ejb;->a:Lcom/google/android/gms/internal/ads/ejb;

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/jl;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/eko;Lcom/google/android/gms/internal/ads/ejb;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/eko;Lcom/google/android/gms/internal/ads/ejb;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jl;->b:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jl;->c:Lcom/google/android/gms/internal/ads/eko;

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/jl;->a:Lcom/google/android/gms/internal/ads/ejb;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/emr;)V
    .locals 2

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jl;->c:Lcom/google/android/gms/internal/ads/eko;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jl;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/ejb;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/emr;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/eko;->a(Lcom/google/android/gms/internal/ads/zzvq;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 13
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
