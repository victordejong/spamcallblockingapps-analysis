.class final Lcom/google/android/gms/measurement/internal/gs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/f;

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Z

.field final synthetic e:Lcom/google/android/gms/measurement/internal/gv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gv;Lcom/google/android/gms/measurement/internal/f;IJZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gs;->e:Lcom/google/android/gms/measurement/internal/gv;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/gs;->a:Lcom/google/android/gms/measurement/internal/f;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/gs;->b:I

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/gs;->c:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/gs;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gs;->e:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/gs;->a:Lcom/google/android/gms/measurement/internal/f;

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/gv;->a(Lcom/google/android/gms/measurement/internal/f;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/gs;->e:Lcom/google/android/gms/measurement/internal/gv;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/gs;->a:Lcom/google/android/gms/measurement/internal/f;

    iget v4, p0, Lcom/google/android/gms/measurement/internal/gs;->b:I

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/gs;->c:J

    iget-boolean v8, p0, Lcom/google/android/gms/measurement/internal/gs;->d:Z

    const/4 v7, 0x0

    .line 2
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/gv;->a(Lcom/google/android/gms/measurement/internal/gv;Lcom/google/android/gms/measurement/internal/f;IJZZ)V

    return-void
.end method
