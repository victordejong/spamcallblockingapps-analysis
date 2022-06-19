.class public Lcom/google/android/gms/common/internal/u;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-base@@17.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private b:Landroid/os/IBinder;

.field private c:Lcom/google/android/gms/common/b;

.field private d:Z

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/android/gms/common/internal/af;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/af;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/b;ZZ)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/common/internal/u;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/common/internal/u;->b:Landroid/os/IBinder;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/internal/u;->c:Lcom/google/android/gms/common/b;

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/u;->d:Z

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/u;->e:Z

    .line 7
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/internal/l;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->b:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/gms/common/b;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/common/internal/u;->c:Lcom/google/android/gms/common/b;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/u;->d:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/u;->e:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-ne p0, p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v0

    .line 39
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/internal/u;

    if-nez v2, :cond_2

    move v0, v1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    check-cast p1, Lcom/google/android/gms/common/internal/u;

    .line 42
    iget-object v2, p0, Lcom/google/android/gms/common/internal/u;->c:Lcom/google/android/gms/common/b;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/u;->c:Lcom/google/android/gms/common/b;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->a()Lcom/google/android/gms/common/internal/l;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/u;->a()Lcom/google/android/gms/common/internal/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 44
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 24
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/internal/u;->a:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;II)V

    .line 25
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/internal/u;->b:Landroid/os/IBinder;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->b()Lcom/google/android/gms/common/b;

    move-result-object v2

    .line 28
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->c()Z

    move-result v2

    .line 31
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 32
    const/4 v1, 0x5

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/u;->d()Z

    move-result v2

    .line 34
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 35
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 36
    return-void
.end method
