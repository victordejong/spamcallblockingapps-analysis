.class final Lcom/google/android/gms/measurement/internal/ix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/jo;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/is;Lcom/google/android/gms/measurement/internal/jo;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/ix;->a:Lcom/google/android/gms/measurement/internal/jo;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/ix;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->a:Lcom/google/android/gms/measurement/internal/jo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ix;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/ix;->a:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->l()V

    .line 5
    return-void
.end method
