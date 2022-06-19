.class final Lcom/google/android/gms/measurement/internal/bc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/ab;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ab;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/bc;->b:Lcom/google/android/gms/measurement/internal/ab;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/bc;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/bc;->b:Lcom/google/android/gms/measurement/internal/ab;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/bc;->a:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ab;->a(Lcom/google/android/gms/measurement/internal/ab;J)V

    .line 3
    return-void
.end method
