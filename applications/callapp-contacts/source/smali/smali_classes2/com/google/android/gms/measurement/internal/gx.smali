.class final synthetic Lcom/google/android/gms/measurement/internal/gx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/gy;

.field private final b:I

.field private final c:Ljava/lang/Exception;

.field private final d:[B

.field private final e:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/gy;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/gx;->a:Lcom/google/android/gms/measurement/internal/gy;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/gx;->b:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/gx;->c:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/gx;->d:[B

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/gx;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/gx;->a:Lcom/google/android/gms/measurement/internal/gy;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/gx;->b:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/gx;->c:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/gx;->d:[B

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/gy;->c:Lcom/google/android/gms/measurement/internal/eq;

    .line 2000
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/eq;->a:Lcom/google/android/gms/measurement/internal/es;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/es;->a(ILjava/lang/Throwable;[B)V

    return-void
.end method
