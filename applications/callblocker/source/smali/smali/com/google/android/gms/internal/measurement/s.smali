.class final Lcom/google/android/gms/internal/measurement/s;
.super Lcom/google/android/gms/internal/measurement/d$a;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.2"


# instance fields
.field private final synthetic c:I

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/Object;

.field private final synthetic f:Ljava/lang/Object;

.field private final synthetic g:Ljava/lang/Object;

.field private final synthetic h:Lcom/google/android/gms/internal/measurement/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/d;ZILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/s;->h:Lcom/google/android/gms/internal/measurement/d;

    const/4 v0, 0x5

    iput v0, p0, Lcom/google/android/gms/internal/measurement/s;->c:I

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/s;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/s;->e:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/s;->f:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/s;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/d$a;-><init>(Lcom/google/android/gms/internal/measurement/d;Z)V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 6

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/s;->h:Lcom/google/android/gms/internal/measurement/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->c(Lcom/google/android/gms/internal/measurement/d;)Lcom/google/android/gms/internal/measurement/mi;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/s;->c:I

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/s;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/s;->e:Ljava/lang/Object;

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/s;->f:Ljava/lang/Object;

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/s;->g:Ljava/lang/Object;

    .line 5
    invoke-static {v5}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v5

    .line 6
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/mi;->logHealthData(ILjava/lang/String;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/dynamic/a;)V

    .line 7
    return-void
.end method
