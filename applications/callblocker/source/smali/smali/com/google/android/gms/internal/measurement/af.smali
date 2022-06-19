.class final Lcom/google/android/gms/internal/measurement/af;
.super Lcom/google/android/gms/internal/measurement/d$a;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.2"


# instance fields
.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Lcom/google/android/gms/internal/measurement/mg;

.field private final synthetic e:Lcom/google/android/gms/internal/measurement/d$b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/d$b;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/mg;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/af;->e:Lcom/google/android/gms/internal/measurement/d$b;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/af;->c:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/af;->d:Lcom/google/android/gms/internal/measurement/mg;

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/d$b;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/d$a;-><init>(Lcom/google/android/gms/internal/measurement/d;)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 6

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/af;->e:Lcom/google/android/gms/internal/measurement/d$b;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/d$b;->a:Lcom/google/android/gms/internal/measurement/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->c(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/mi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/af;->c:Landroid/app/Activity;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/af;->d:Lcom/google/android/gms/internal/measurement/mg;

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/af;->b:J

    .line 4
    invoke-interface {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/measurement/mi;->onActivitySaveInstanceState(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/measurement/mj;J)V

    .line 5
    return-void
.end method
