.class final Lcom/google/android/gms/measurement/internal/hr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/hp;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/hp;

.field private final synthetic c:J

.field private final synthetic d:Z

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/ho;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/ho;Lcom/google/android/gms/measurement/internal/hp;Lcom/google/android/gms/measurement/internal/hp;JZ)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hr;->e:Lcom/google/android/gms/measurement/internal/ho;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/hr;->a:Lcom/google/android/gms/measurement/internal/hp;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/hr;->b:Lcom/google/android/gms/measurement/internal/hp;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/hr;->c:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/hr;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 2
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hr;->e:Lcom/google/android/gms/measurement/internal/ho;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hr;->a:Lcom/google/android/gms/measurement/internal/hp;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hr;->b:Lcom/google/android/gms/measurement/internal/hp;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/hr;->c:J

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/hr;->d:Z

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/ho;->a(Lcom/google/android/gms/measurement/internal/ho;Lcom/google/android/gms/measurement/internal/hp;Lcom/google/android/gms/measurement/internal/hp;JZLandroid/os/Bundle;)V

    .line 3
    return-void
.end method
