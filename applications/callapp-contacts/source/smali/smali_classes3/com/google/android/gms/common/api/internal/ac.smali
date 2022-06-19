.class final Lcom/google/android/gms/common/api/internal/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/gms/common/api/internal/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/af;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/ac;->b:Lcom/google/android/gms/common/api/internal/af;

    iput p2, p0, Lcom/google/android/gms/common/api/internal/ac;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/ac;->b:Lcom/google/android/gms/common/api/internal/af;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/ac;->a:I

    .line 1000
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/af;->b(I)V

    return-void
.end method
