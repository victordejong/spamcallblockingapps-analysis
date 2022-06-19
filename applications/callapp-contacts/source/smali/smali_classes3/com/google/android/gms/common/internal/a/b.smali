.class final synthetic Lcom/google/android/gms/common/internal/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/p;


# instance fields
.field private final a:Lcom/google/android/gms/common/internal/TelemetryData;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/internal/TelemetryData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/a/b;->a:Lcom/google/android/gms/common/internal/TelemetryData;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/a/b;->a:Lcom/google/android/gms/common/internal/TelemetryData;

    check-cast p1, Lcom/google/android/gms/common/internal/a/e;

    check-cast p2, Lcom/google/android/gms/tasks/i;

    sget v1, Lcom/google/android/gms/common/internal/a/d;->h:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/a/e;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/a/a;

    .line 1001
    invoke-virtual {p1}, Lcom/google/android/gms/internal/base/a;->a()Landroid/os/Parcel;

    move-result-object v1

    .line 1002
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/base/c;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 1003
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/base/a;->c(Landroid/os/Parcel;)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/i;->a(Ljava/lang/Object;)V

    return-void
.end method
