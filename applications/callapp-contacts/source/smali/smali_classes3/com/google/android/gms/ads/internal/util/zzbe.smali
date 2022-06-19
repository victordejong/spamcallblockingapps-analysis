.class public final Lcom/google/android/gms/ads/internal/util/zzbe;
.super Lcom/google/android/gms/internal/ads/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/z<",
        "Lcom/google/android/gms/internal/ads/emg;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzein:Lcom/google/android/gms/internal/ads/zp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zp<",
            "Lcom/google/android/gms/internal/ads/emg;",
            ">;"
        }
    .end annotation
.end field

.field private final zzeio:Lcom/google/android/gms/internal/ads/yu;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zp<",
            "Lcom/google/android/gms/internal/ads/emg;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/ads/internal/util/zzbe;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zp;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zp<",
            "Lcom/google/android/gms/internal/ads/emg;",
            ">;)V"
        }
    .end annotation

    .line 3
    new-instance p2, Lcom/google/android/gms/ads/internal/util/zzbd;

    invoke-direct {p2, p3}, Lcom/google/android/gms/ads/internal/util/zzbd;-><init>(Lcom/google/android/gms/internal/ads/zp;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/z;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/ib;)V

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzaj:Ljava/util/Map;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzein:Lcom/google/android/gms/internal/ads/zp;

    .line 6
    new-instance p3, Lcom/google/android/gms/internal/ads/yu;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/yu;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzeio:Lcom/google/android/gms/internal/ads/yu;

    const-string v0, "GET"

    .line 7
    invoke-virtual {p3, p1, v0, p2, p2}, Lcom/google/android/gms/internal/ads/yu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/emg;)Lcom/google/android/gms/internal/ads/fa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/emg;",
            ")",
            "Lcom/google/android/gms/internal/ads/fa<",
            "Lcom/google/android/gms/internal/ads/emg;",
            ">;"
        }
    .end annotation

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aaj;->a(Lcom/google/android/gms/internal/ads/emg;)Lcom/google/android/gms/internal/ads/eap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/fa;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/eap;)Lcom/google/android/gms/internal/ads/fa;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 4

    .line 10
    check-cast p1, Lcom/google/android/gms/internal/ads/emg;

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzeio:Lcom/google/android/gms/internal/ads/yu;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/emg;->c:Ljava/util/Map;

    iget v2, p1, Lcom/google/android/gms/internal/ads/emg;->a:I

    .line 1038
    invoke-static {}, Lcom/google/android/gms/internal/ads/yu;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1040
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/yu;->a(Ljava/util/Map;I)V

    const/16 v1, 0xc8

    if-lt v2, v1, :cond_0

    const/16 v1, 0x12c

    if-lt v2, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1042
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yu;->b(Ljava/lang/String;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzeio:Lcom/google/android/gms/internal/ads/yu;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/emg;->b:[B

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/yu;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yu;->a([B)V

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbe;->zzein:Lcom/google/android/gms/internal/ads/zp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zp;->set(Ljava/lang/Object;)Z

    return-void
.end method
