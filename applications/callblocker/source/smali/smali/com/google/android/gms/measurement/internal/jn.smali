.class final Lcom/google/android/gms/measurement/internal/jn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/measurement/internal/jt;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/jo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/jo;Lcom/google/android/gms/measurement/internal/jt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/jn;->b:Lcom/google/android/gms/measurement/internal/jo;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/measurement/internal/jt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jn;->b:Lcom/google/android/gms/measurement/internal/jo;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/jn;->a:Lcom/google/android/gms/measurement/internal/jt;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Lcom/google/android/gms/measurement/internal/jo;Lcom/google/android/gms/measurement/internal/jt;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jn;->b:Lcom/google/android/gms/measurement/internal/jo;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->a()V

    .line 4
    return-void
.end method
