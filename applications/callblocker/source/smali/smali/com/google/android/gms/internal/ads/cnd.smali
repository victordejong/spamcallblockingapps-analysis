.class public final Lcom/google/android/gms/internal/ads/cnd;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/cnd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private b:Lcom/google/android/gms/internal/ads/atw$a;

.field private c:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/gms/internal/ads/cnc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cnc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cnd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/ads/cnd;->a:I

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->b:Lcom/google/android/gms/internal/ads/atw$a;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cnd;->c:[B

    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnd;->b()V

    .line 6
    return-void
.end method

.method private final b()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->b:Lcom/google/android/gms/internal/ads/atw$a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->c:[B

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    return-void

    .line 34
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->b:Lcom/google/android/gms/internal/ads/atw$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->c:[B

    if-eqz v0, :cond_0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->b:Lcom/google/android/gms/internal/ads/atw$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->c:[B

    if-eqz v0, :cond_3

    .line 37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->b:Lcom/google/android/gms/internal/ads/atw$a;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->c:[B

    if-nez v0, :cond_4

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/atw$a;
    .locals 2

    .prologue
    .line 7
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->b:Lcom/google/android/gms/internal/ads/atw$a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 10
    :goto_0
    if-nez v0, :cond_0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->c:[B

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/dci;->b()Lcom/google/android/gms/internal/ads/dci;

    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/atw$a;->a([BLcom/google/android/gms/internal/ads/dci;)Lcom/google/android/gms/internal/ads/atw$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->b:Lcom/google/android/gms/internal/ads/atw$a;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->c:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeco; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cnd;->b()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->b:Lcom/google/android/gms/internal/ads/atw$a;

    return-object v0

    .line 9
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    .line 20
    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v1

    .line 22
    const/4 v0, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/ads/cnd;->a:I

    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 23
    const/4 v2, 0x2

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->c:[B

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->c:[B

    .line 28
    :goto_0
    const/4 v3, 0x0

    .line 29
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    .line 30
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 31
    return-void

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cnd;->b:Lcom/google/android/gms/internal/ads/atw$a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/day;->l()[B

    move-result-object v0

    goto :goto_0
.end method
