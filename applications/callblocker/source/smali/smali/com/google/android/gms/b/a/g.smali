.class public abstract Lcom/google/android/gms/b/a/g;
.super Lcom/google/android/gms/internal/d/a;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/b/a/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/d/a;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 21
    :pswitch_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    .line 4
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/common/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/d/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/b;

    .line 5
    sget-object v1, Lcom/google/android/gms/b/a/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/d/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/b/a/c;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/b/a/g;->a(Lcom/google/android/gms/common/b;Lcom/google/android/gms/b/a/c;)V

    .line 22
    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 23
    const/4 v0, 0x1

    goto :goto_0

    .line 8
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/d/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/a/g;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 11
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/d/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/a/g;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 14
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/d/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 15
    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/d/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 16
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/b/a/g;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    goto :goto_1

    .line 18
    :pswitch_5
    sget-object v0, Lcom/google/android/gms/b/a/l;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/d/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/a/l;

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/a/g;->a(Lcom/google/android/gms/b/a/l;)V

    goto :goto_1

    .line 3
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
