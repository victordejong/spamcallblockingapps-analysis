.class public final Lcom/google/android/gms/ads/b/j;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/ads/b/j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Z

.field private final b:Lcom/google/android/gms/internal/ads/dzw;

.field private final c:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/gms/ads/b/n;

    invoke-direct {v0}, Lcom/google/android/gms/ads/b/n;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/b/j;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ZLandroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/google/android/gms/ads/b/j;->a:Z

    .line 15
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/dzv;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/dzw;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/ads/b/j;->b:Lcom/google/android/gms/internal/ads/dzw;

    .line 16
    iput-object p3, p0, Lcom/google/android/gms/ads/b/j;->c:Landroid/os/IBinder;

    .line 17
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/ads/b/j;->a:Z

    return v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/dzw;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/ads/b/j;->b:Lcom/google/android/gms/internal/ads/dzw;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/dp;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/ads/b/j;->c:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ds;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/dp;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v1

    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/ads/b/j;->a()Z

    move-result v2

    .line 26
    invoke-static {p1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 27
    const/4 v2, 0x2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/ads/b/j;->b:Lcom/google/android/gms/internal/ads/dzw;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 31
    :goto_0
    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 32
    const/4 v0, 0x3

    .line 33
    iget-object v2, p0, Lcom/google/android/gms/ads/b/j;->c:Landroid/os/IBinder;

    .line 35
    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 36
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 37
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b/j;->b:Lcom/google/android/gms/internal/ads/dzw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dzw;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method
