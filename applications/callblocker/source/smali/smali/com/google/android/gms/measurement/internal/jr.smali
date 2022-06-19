.class final Lcom/google/android/gms/measurement/internal/jr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/kb;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/jo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jr;->b:Lcom/google/android/gms/measurement/internal/jo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jr;->a:Lcom/google/android/gms/measurement/internal/kb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jr;->b:Lcom/google/android/gms/measurement/internal/jo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jr;->a:Lcom/google/android/gms/measurement/internal/kb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    move-result-object v0

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jr;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "App info was null when attempting to get app instance id"

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 8
    const/4 v0, 0x0

    .line 10
    :goto_0
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fg;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
