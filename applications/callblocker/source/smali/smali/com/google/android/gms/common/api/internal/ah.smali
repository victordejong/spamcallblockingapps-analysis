.class public final Lcom/google/android/gms/common/api/internal/ah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.1.0"


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/aj;

.field public final b:I

.field public final c:Lcom/google/android/gms/common/api/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/c",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/aj;ILcom/google/android/gms/common/api/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/aj;",
            "I",
            "Lcom/google/android/gms/common/api/c",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ah;->a:Lcom/google/android/gms/common/api/internal/aj;

    .line 3
    iput p2, p0, Lcom/google/android/gms/common/api/internal/ah;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/ah;->c:Lcom/google/android/gms/common/api/c;

    .line 5
    return-void
.end method
