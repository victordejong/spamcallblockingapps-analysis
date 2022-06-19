.class final synthetic Lcom/google/android/gms/measurement/internal/iu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/is;

.field private final b:Lcom/google/android/gms/measurement/internal/dy;

.field private final c:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/is;Lcom/google/android/gms/measurement/internal/dy;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/iu;->a:Lcom/google/android/gms/measurement/internal/is;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/iu;->b:Lcom/google/android/gms/measurement/internal/dy;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/iu;->c:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/iu;->a:Lcom/google/android/gms/measurement/internal/is;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/iu;->b:Lcom/google/android/gms/measurement/internal/dy;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/iu;->c:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/is;->a(Lcom/google/android/gms/measurement/internal/dy;Landroid/app/job/JobParameters;)V

    return-void
.end method
