.class final Lcom/google/android/gms/measurement/internal/fi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/kb;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/fj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fi;->b:Lcom/google/android/gms/measurement/internal/fj;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fi;->a:Lcom/google/android/gms/measurement/internal/kb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fi;->b:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fi;->b:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fi;->a:Lcom/google/android/gms/measurement/internal/kb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->k()V

    .line 7
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/kb;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/jo;->c(Lcom/google/android/gms/measurement/internal/kb;)Lcom/google/android/gms/measurement/internal/fg;

    .line 9
    return-void
.end method
