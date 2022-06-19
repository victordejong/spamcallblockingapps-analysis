.class final Lcom/google/android/gms/measurement/internal/iy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/iz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/iz;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/iy;->b:Lcom/google/android/gms/measurement/internal/iz;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/iy;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iy;->b:Lcom/google/android/gms/measurement/internal/iz;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/iy;->a:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/iz;->a(Lcom/google/android/gms/measurement/internal/iz;J)V

    .line 3
    return-void
.end method
