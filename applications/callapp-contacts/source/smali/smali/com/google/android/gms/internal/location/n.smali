.class final Lcom/google/android/gms/internal/location/n;
.super Lcom/google/android/gms/location/v;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/common/api/internal/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/i<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/i<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/location/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/n;->a:Lcom/google/android/gms/common/api/internal/i;

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/location/n;->a:Lcom/google/android/gms/common/api/internal/i;

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/location/m;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/location/m;-><init>(Lcom/google/android/gms/internal/location/n;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/i;->a(Lcom/google/android/gms/common/api/internal/i$b;)V

    return-void
.end method
