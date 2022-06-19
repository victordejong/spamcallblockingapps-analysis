.class public final Lcom/google/firebase/dynamiclinks/internal/o;
.super Lcom/google/android/gms/internal/f/b;
.source "com.google.firebase:firebase-dynamic-links@@19.1.0"

# interfaces
.implements Lcom/google/firebase/dynamiclinks/internal/l;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .prologue
    .line 1
    const-string/jumbo v0, "com.google.firebase.dynamiclinks.internal.IDynamicLinksService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/f/b;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/firebase/dynamiclinks/internal/j;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/f/b;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/f/d;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/f/b;->a(ILandroid/os/Parcel;)V

    .line 7
    return-void
.end method
