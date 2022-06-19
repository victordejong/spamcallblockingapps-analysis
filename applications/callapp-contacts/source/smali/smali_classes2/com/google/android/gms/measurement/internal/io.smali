.class final Lcom/google/android/gms/measurement/internal/io;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/jo;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/iq;Lcom/google/android/gms/measurement/internal/jo;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/io;->a:Lcom/google/android/gms/measurement/internal/jo;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/io;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/io;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->n()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/io;->a:Lcom/google/android/gms/measurement/internal/jo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/io;->b:Ljava/lang/Runnable;

    .line 1001
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->d()Lcom/google/android/gms/measurement/internal/ep;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fm;->S_()V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->h:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    .line 1002
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/jo;->h:Ljava/util/List;

    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/jo;->h:Ljava/util/List;

    .line 1003
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/io;->a:Lcom/google/android/gms/measurement/internal/jo;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->l()V

    return-void
.end method
