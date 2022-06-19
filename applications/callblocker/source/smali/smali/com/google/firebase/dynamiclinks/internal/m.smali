.class public abstract Lcom/google/firebase/dynamiclinks/internal/m;
.super Lcom/google/android/gms/internal/f/a;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"

# interfaces
.implements Lcom/google/firebase/dynamiclinks/internal/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.firebase.dynamiclinks.internal.IDynamicLinksCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/f/a;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2

    .prologue
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0

    .line 4
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/f/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 5
    sget-object v1, Lcom/google/firebase/dynamiclinks/internal/a;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/f/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/dynamiclinks/internal/a;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/dynamiclinks/internal/m;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/a;)V

    .line 13
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 8
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/f/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 9
    sget-object v1, Lcom/google/firebase/dynamiclinks/internal/n;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/f/d;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/dynamiclinks/internal/n;

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/dynamiclinks/internal/m;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/dynamiclinks/internal/n;)V

    goto :goto_1

    .line 3
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
