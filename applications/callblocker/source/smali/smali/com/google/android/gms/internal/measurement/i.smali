.class final Lcom/google/android/gms/internal/measurement/i;
.super Lcom/google/android/gms/internal/measurement/d$a;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.2"


# instance fields
.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/google/android/gms/internal/measurement/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/d;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/i;->f:Lcom/google/android/gms/internal/measurement/d;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/i;->c:Landroid/app/Activity;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/i;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/i;->e:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/d$a;-><init>(Lcom/google/android/gms/internal/measurement/d;)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 6

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/i;->f:Lcom/google/android/gms/internal/measurement/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->c(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/mi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/i;->c:Landroid/app/Activity;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/i;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/i;->e:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/measurement/i;->a:J

    .line 4
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/mi;->setCurrentScreen(Lcom/google/android/gms/dynamic/a;Ljava/lang/String;Ljava/lang/String;J)V

    .line 5
    return-void
.end method
