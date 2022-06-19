.class final Lcom/google/android/gms/measurement/internal/fw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/kn;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/kb;

.field private final synthetic c:Lcom/google/android/gms/measurement/internal/fj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fj;Lcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fw;->c:Lcom/google/android/gms/measurement/internal/fj;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fw;->a:Lcom/google/android/gms/measurement/internal/kn;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/fw;->b:Lcom/google/android/gms/measurement/internal/kb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fw;->c:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fw;->a:Lcom/google/android/gms/measurement/internal/kn;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/kn;->c:Lcom/google/android/gms/measurement/internal/jv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jv;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fw;->c:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fw;->a:Lcom/google/android/gms/measurement/internal/kn;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fw;->b:Lcom/google/android/gms/measurement/internal/kb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->b(Lcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;)V

    .line 6
    :goto_0
    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fw;->c:Lcom/google/android/gms/measurement/internal/fj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/fj;->a(Lcom/google/android/gms/measurement/internal/fj;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/fw;->a:Lcom/google/android/gms/measurement/internal/kn;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fw;->b:Lcom/google/android/gms/measurement/internal/kb;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;)V

    goto :goto_0
.end method
