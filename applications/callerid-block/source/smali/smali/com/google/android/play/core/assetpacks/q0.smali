.class final synthetic Lcom/google/android/play/core/assetpacks/q0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/play/core/assetpacks/y0;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/z0;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:J


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/z0;Ljava/lang/String;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/q0;->a:Lcom/google/android/play/core/assetpacks/z0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/q0;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/play/core/assetpacks/q0;->c:I

    iput-wide p4, p0, Lcom/google/android/play/core/assetpacks/q0;->d:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q0;->a:Lcom/google/android/play/core/assetpacks/z0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/q0;->b:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/play/core/assetpacks/q0;->c:I

    iget-wide v3, p0, Lcom/google/android/play/core/assetpacks/q0;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/z0;->l(Ljava/lang/String;IJ)V

    const/4 v0, 0x0

    return-object v0
.end method
