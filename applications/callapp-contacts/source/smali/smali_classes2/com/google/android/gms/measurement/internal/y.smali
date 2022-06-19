.class final Lcom/google/android/gms/measurement/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/gms/measurement/internal/ca;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ca;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y;->c:Lcom/google/android/gms/measurement/internal/ca;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/y;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/y;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y;->c:Lcom/google/android/gms/measurement/internal/ca;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/y;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/y;->b:J

    .line 1
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ca;->b(Lcom/google/android/gms/measurement/internal/ca;Ljava/lang/String;J)V

    return-void
.end method
