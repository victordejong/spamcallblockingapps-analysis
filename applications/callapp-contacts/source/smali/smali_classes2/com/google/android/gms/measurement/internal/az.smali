.class final Lcom/google/android/gms/measurement/internal/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/google/android/gms/measurement/internal/ca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ca;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/az;->b:Lcom/google/android/gms/measurement/internal/ca;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/az;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/az;->b:Lcom/google/android/gms/measurement/internal/ca;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/az;->a:J

    .line 1001
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ca;->b(J)V

    return-void
.end method
