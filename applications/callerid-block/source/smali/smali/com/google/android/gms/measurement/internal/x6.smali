.class final synthetic Lcom/google/android/gms/measurement/internal/x6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final b:Lcom/google/android/gms/measurement/internal/y6;

.field private final c:I

.field private final d:Ljava/lang/Exception;

.field private final e:[B

.field private final f:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/y6;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/x6;->b:Lcom/google/android/gms/measurement/internal/y6;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/x6;->c:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/x6;->d:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/x6;->e:[B

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/x6;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/x6;->b:Lcom/google/android/gms/measurement/internal/y6;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/x6;->c:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/x6;->d:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/x6;->e:[B

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/x6;->f:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/y6;->a(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
