.class final Lcom/google/android/gms/measurement/internal/hg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/hk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hg;->a:Lcom/google/android/gms/measurement/internal/hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hg;->a:Lcom/google/android/gms/measurement/internal/hk;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/hk;->c:Lcom/google/android/gms/measurement/internal/hc;

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/hk;->b:Lcom/google/android/gms/measurement/internal/hc;

    return-void
.end method
