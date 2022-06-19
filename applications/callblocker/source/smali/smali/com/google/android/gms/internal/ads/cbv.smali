.class public final Lcom/google/android/gms/internal/ads/cbv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cah;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cah",
        "<",
        "Lcom/google/android/gms/internal/ads/cbw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/tx;

.field private b:Lcom/google/android/gms/internal/ads/crs;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/tx;Lcom/google/android/gms/internal/ads/crs;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cbv;->a:Lcom/google/android/gms/internal/ads/tx;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cbv;->b:Lcom/google/android/gms/internal/ads/crs;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/cbv;->c:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/crt;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/crt",
            "<",
            "Lcom/google/android/gms/internal/ads/cbw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/yo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yo;-><init>()V

    .line 7
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/crg;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->cJ:Lcom/google/android/gms/internal/ads/ect;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cbv;->a:Lcom/google/android/gms/internal/ads/tx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cbv;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tx;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cbv;->a:Lcom/google/android/gms/internal/ads/tx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cbv;->c:Ljava/lang/String;

    .line 14
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/tx;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v1

    .line 15
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/crt;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/crg;->b([Lcom/google/android/gms/internal/ads/crt;)Lcom/google/android/gms/internal/ads/crm;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/cbz;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/cbz;-><init>(Lcom/google/android/gms/internal/ads/crt;Lcom/google/android/gms/internal/ads/crt;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/yg;->a:Lcom/google/android/gms/internal/ads/crs;

    .line 16
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/crm;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/crt;

    move-result-object v0

    .line 17
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
