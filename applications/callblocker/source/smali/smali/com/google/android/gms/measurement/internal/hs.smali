.class final Lcom/google/android/gms/measurement/internal/hs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/hp;

.field private final synthetic b:J

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/ho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ho;Lcom/google/android/gms/measurement/internal/hp;J)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hs;->c:Lcom/google/android/gms/measurement/internal/ho;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/hs;->a:Lcom/google/android/gms/measurement/internal/hp;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/hs;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hs;->c:Lcom/google/android/gms/measurement/internal/ho;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hs;->a:Lcom/google/android/gms/measurement/internal/hp;

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/hs;->b:J

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/gms/measurement/internal/ho;->a(Lcom/google/android/gms/measurement/internal/ho;Lcom/google/android/gms/measurement/internal/hp;ZJ)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hs;->c:Lcom/google/android/gms/measurement/internal/ho;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/ho;->a:Lcom/google/android/gms/measurement/internal/hp;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hs;->c:Lcom/google/android/gms/measurement/internal/ho;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ef;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/hp;)V

    .line 5
    return-void
.end method
