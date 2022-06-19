.class final Lcom/google/android/gms/measurement/internal/r8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/measurement/internal/z8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/z8;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r8;->c:Lcom/google/android/gms/measurement/internal/z8;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/r8;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r8;->c:Lcom/google/android/gms/measurement/internal/z8;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/r8;->b:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z8;->m(Lcom/google/android/gms/measurement/internal/z8;J)V

    return-void
.end method
