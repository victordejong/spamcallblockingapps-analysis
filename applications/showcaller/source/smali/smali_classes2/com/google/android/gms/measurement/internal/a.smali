.class final Lcom/google/android/gms/measurement/internal/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@18.0.3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic e:J

.field final synthetic f:Lcom/google/android/gms/measurement/internal/a2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/a2;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/a;->f:Lcom/google/android/gms/measurement/internal/a2;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/a;->d:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/a;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/a;->f:Lcom/google/android/gms/measurement/internal/a2;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/a;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/a;->e:J

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a2;->j(Lcom/google/android/gms/measurement/internal/a2;Ljava/lang/String;J)V

    return-void
.end method
