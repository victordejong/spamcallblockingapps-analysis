.class public final Lcom/google/firebase/messaging/RemoteMessage;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-messaging@@21.1.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/messaging/RemoteMessage$b;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/messaging/RemoteMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field d:Landroid/os/Bundle;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/google/firebase/messaging/RemoteMessage$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/h0;

    invoke-direct {v0}, Lcom/google/firebase/messaging/h0;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/RemoteMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/RemoteMessage;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public k0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->e:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->d:Landroid/os/Bundle;

    .line 1
    invoke-static {v0}, Lcom/google/firebase/messaging/b$a;->a(Landroid/os/Bundle;)Lb/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->e:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->e:Ljava/util/Map;

    return-object v0
.end method

.method public l0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->d:Landroid/os/Bundle;

    const-string v1, "from"

    .line 1
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m0()Lcom/google/firebase/messaging/RemoteMessage$b;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->f:Lcom/google/firebase/messaging/RemoteMessage$b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->d:Landroid/os/Bundle;

    .line 1
    invoke-static {v0}, Lcom/google/firebase/messaging/g0;->t(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/firebase/messaging/RemoteMessage$b;

    new-instance v1, Lcom/google/firebase/messaging/g0;

    iget-object v2, p0, Lcom/google/firebase/messaging/RemoteMessage;->d:Landroid/os/Bundle;

    .line 2
    invoke-direct {v1, v2}, Lcom/google/firebase/messaging/g0;-><init>(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/messaging/RemoteMessage$b;-><init>(Lcom/google/firebase/messaging/g0;Lcom/google/firebase/messaging/RemoteMessage$a;)V

    iput-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->f:Lcom/google/firebase/messaging/RemoteMessage$b;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/RemoteMessage;->f:Lcom/google/firebase/messaging/RemoteMessage$b;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/messaging/h0;->c(Lcom/google/firebase/messaging/RemoteMessage;Landroid/os/Parcel;I)V

    return-void
.end method
