.class final Lcom/google/android/gms/measurement/internal/hd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/google/android/gms/measurement/internal/hc;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/hc;

.field final synthetic d:J

.field final synthetic e:Lcom/google/android/gms/measurement/internal/hk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hk;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/hc;Lcom/google/android/gms/measurement/internal/hc;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hd;->e:Lcom/google/android/gms/measurement/internal/hk;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/hd;->b:Lcom/google/android/gms/measurement/internal/hc;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/hd;->c:Lcom/google/android/gms/measurement/internal/hc;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/hd;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hd;->e:Lcom/google/android/gms/measurement/internal/hk;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hd;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hd;->b:Lcom/google/android/gms/measurement/internal/hc;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hd;->c:Lcom/google/android/gms/measurement/internal/hc;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/hd;->d:J

    .line 1
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/hk;->a(Lcom/google/android/gms/measurement/internal/hk;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/hc;Lcom/google/android/gms/measurement/internal/hc;J)V

    return-void
.end method
