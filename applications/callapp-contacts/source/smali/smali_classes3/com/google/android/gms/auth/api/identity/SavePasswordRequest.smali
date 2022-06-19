.class public Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzau:Ljava/lang/String;

.field private final zzbe:Lcom/google/android/gms/auth/api/identity/SignInPassword;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/google/android/gms/auth/api/identity/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/auth/api/identity/SignInPassword;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/SignInPassword;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zzbe:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    .line 12
    iput-object p2, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zzau:Ljava/lang/String;

    return-void
.end method

.method public static builder()Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;-><init>()V

    return-object v0
.end method

.method public static zzc(Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;)Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;
    .locals 2

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->builder()Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->getSignInPassword()Lcom/google/android/gms/auth/api/identity/SignInPassword;

    move-result-object v1

    .line 1002
    iput-object v1, v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;->a:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zzau:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 1004
    iput-object p0, v0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest$a;->b:Ljava/lang/String;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 16
    instance-of v0, p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 18
    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zzbe:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zzbe:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zzau:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zzau:Ljava/lang/String;

    .line 20
    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getSignInPassword()Lcom/google/android/gms/auth/api/identity/SignInPassword;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zzbe:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zzbe:Lcom/google/android/gms/auth/api/identity/SignInPassword;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zzau:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2001
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 3001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;I)I

    move-result v0

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->getSignInPassword()Lcom/google/android/gms/auth/api/identity/SignInPassword;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 26
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 28
    iget-object p2, p0, Lcom/google/android/gms/auth/api/identity/SavePasswordRequest;->zzau:Ljava/lang/String;

    const/4 v1, 0x2

    .line 30
    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/a;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 4001
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/a;->b(Landroid/os/Parcel;I)V

    return-void
.end method
