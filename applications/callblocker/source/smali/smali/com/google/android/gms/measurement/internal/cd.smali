.class final Lcom/google/android/gms/measurement/internal/cd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:J

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ab;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/cd;->c:Lcom/google/android/gms/measurement/internal/ab;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/cd;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/cd;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/cd;->c:Lcom/google/android/gms/measurement/internal/ab;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/cd;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/cd;->b:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/ab;->b(Lcom/google/android/gms/measurement/internal/ab;Ljava/lang/String;J)V

    .line 3
    return-void
.end method
