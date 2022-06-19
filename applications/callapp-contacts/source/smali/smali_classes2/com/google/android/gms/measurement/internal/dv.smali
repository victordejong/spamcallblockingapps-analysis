.class final Lcom/google/android/gms/measurement/internal/dv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/gms/measurement/internal/dw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/dw;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/dv;->b:Lcom/google/android/gms/measurement/internal/dw;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/dv;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/dv;->b:Lcom/google/android/gms/measurement/internal/dw;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/dw;->a(Lcom/google/android/gms/measurement/internal/dw;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    .line 1001
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->m()V

    return-void
.end method
