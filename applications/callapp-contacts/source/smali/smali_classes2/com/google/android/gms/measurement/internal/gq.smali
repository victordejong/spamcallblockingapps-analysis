.class final Lcom/google/android/gms/measurement/internal/gq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/f;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Z

.field final synthetic f:Lcom/google/android/gms/measurement/internal/gv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gv;Lcom/google/android/gms/measurement/internal/f;JIJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gq;->f:Lcom/google/android/gms/measurement/internal/gv;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/gq;->a:Lcom/google/android/gms/measurement/internal/f;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/gq;->b:J

    iput p5, p0, Lcom/google/android/gms/measurement/internal/gq;->c:I

    iput-wide p6, p0, Lcom/google/android/gms/measurement/internal/gq;->d:J

    iput-boolean p8, p0, Lcom/google/android/gms/measurement/internal/gq;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gq;->f:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/gq;->a:Lcom/google/android/gms/measurement/internal/f;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/gv;->a(Lcom/google/android/gms/measurement/internal/f;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gq;->f:Lcom/google/android/gms/measurement/internal/gv;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/gq;->b:J

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/gv;->a(JZ)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/gq;->f:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/gq;->a:Lcom/google/android/gms/measurement/internal/f;

    iget v6, p0, Lcom/google/android/gms/measurement/internal/gq;->c:I

    iget-wide v7, p0, Lcom/google/android/gms/measurement/internal/gq;->d:J

    iget-boolean v10, p0, Lcom/google/android/gms/measurement/internal/gq;->e:Z

    const/4 v9, 0x1

    .line 3
    invoke-static/range {v4 .. v10}, Lcom/google/android/gms/measurement/internal/gv;->a(Lcom/google/android/gms/measurement/internal/gv;Lcom/google/android/gms/measurement/internal/f;IJZZ)V

    return-void
.end method
