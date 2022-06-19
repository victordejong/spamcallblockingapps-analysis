.class public abstract Lcom/google/android/gms/auth/api/signin/internal/q;
.super Lcom/google/android/gms/internal/b/c;
.source "com.google.android.gms:play-services-auth@@18.0.0"

# interfaces
.implements Lcom/google/android/gms/auth/api/signin/internal/r;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.android.gms.auth.api.signin.internal.IRevocationService"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/b/c;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1

    .prologue
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0

    .line 4
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/q;->a()V

    .line 9
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/q;->b()V

    goto :goto_1

    .line 3
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
