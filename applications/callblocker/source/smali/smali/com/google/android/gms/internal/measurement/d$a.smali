.class abstract Lcom/google/android/gms/internal/measurement/d$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:J

.field private final c:Z

.field private final synthetic d:Lcom/google/android/gms/internal/measurement/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/d;)V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/d$a;-><init>(Lcom/google/android/gms/internal/measurement/d;Z)V

    .line 2
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/measurement/d;Z)V
    .locals 2

    .prologue
    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/d$a;->d:Lcom/google/android/gms/internal/measurement/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/d;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/d$a;->a:J

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/d;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/d$a;->b:J

    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/d$a;->c:Z

    .line 7
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method abstract b()V
.end method

.method public run()V
    .locals 4

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/d$a;->d:Lcom/google/android/gms/internal/measurement/d;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d$a;->a()V

    .line 16
    :goto_0
    return-void

    .line 11
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d$a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/d$a;->d:Lcom/google/android/gms/internal/measurement/d;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/d$a;->c:Z

    invoke-static {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/d;->a(Lcom/google/android/gms/internal/measurement/d;Ljava/lang/Exception;ZZ)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/d$a;->a()V

    goto :goto_0
.end method
