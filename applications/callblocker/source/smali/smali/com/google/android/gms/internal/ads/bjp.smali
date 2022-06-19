.class public abstract Lcom/google/android/gms/internal/ads/bjp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cqt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cqt",
        "<",
        "Lcom/google/android/gms/internal/ads/pw;",
        "Lcom/google/android/gms/internal/ads/chd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/asc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/asc;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bjp;->a:Lcom/google/android/gms/internal/ads/asc;

    .line 3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bjp;)Lcom/google/android/gms/internal/ads/asc;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjp;->a:Lcom/google/android/gms/internal/ads/asc;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/pw;",
            ")",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/chd;",
            ">;"
        }
    .end annotation
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;
    .locals 3

    .prologue
    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/pw;

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bjp;->a:Lcom/google/android/gms/internal/ads/asc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/asc;->a(Lcom/google/android/gms/internal/ads/pw;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/bjp;->a(Lcom/google/android/gms/internal/ads/pw;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/bjs;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/bjs;-><init>(Lcom/google/android/gms/internal/ads/bjp;)V

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/yg;->f:Lcom/google/android/gms/internal/ads/crs;

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/crg;->a(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crh;Ljava/util/concurrent/Executor;)V

    .line 11
    return-object v0
.end method
