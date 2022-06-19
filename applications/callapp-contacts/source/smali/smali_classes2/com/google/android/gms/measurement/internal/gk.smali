.class final Lcom/google/android/gms/measurement/internal/gk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/jt;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/gv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/gv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "_err"

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/gv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/es;->y()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/fm;->t:Lcom/google/android/gms/measurement/internal/es;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/es;->j:Lcom/google/android/gms/common/util/f;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/util/f;->a()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v2, "auto"

    move-object v6, p2

    move-object v10, p1

    .line 5
    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/gv;->b(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZZZLjava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/gk;->a:Lcom/google/android/gms/measurement/internal/gv;

    const-string v0, "auto"

    .line 6
    invoke-virtual {p1, v0, v3, p2}, Lcom/google/android/gms/measurement/internal/gv;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
