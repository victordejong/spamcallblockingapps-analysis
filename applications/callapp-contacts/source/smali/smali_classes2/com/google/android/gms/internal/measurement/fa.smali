.class final Lcom/google/android/gms/internal/measurement/fa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public final d:Lcom/google/android/gms/internal/measurement/fy;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/fy;->a()Lcom/google/android/gms/internal/measurement/fy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/fa;->d:Lcom/google/android/gms/internal/measurement/fy;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/fy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/fa;->d:Lcom/google/android/gms/internal/measurement/fy;

    return-void
.end method
