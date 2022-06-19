.class public final Lcom/google/android/gms/wearable/internal/bt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/k$b;


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/bt;->a:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput p2, p0, Lcom/google/android/gms/wearable/internal/bt;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/wearable/internal/bt;->b:I

    return v0
.end method

.method public final getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/bt;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
