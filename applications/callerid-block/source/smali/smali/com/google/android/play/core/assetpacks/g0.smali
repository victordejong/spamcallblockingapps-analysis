.class public final Lcom/google/android/play/core/assetpacks/g0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lcom/google/android/play/core/assetpacks/i2;


# direct methods
.method synthetic constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/assetpacks/c;
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/g0;->a:Lcom/google/android/play/core/assetpacks/i2;

    const-class v1, Lcom/google/android/play/core/assetpacks/i2;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/d0;->i(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/play/core/assetpacks/h0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/g0;->a:Lcom/google/android/play/core/assetpacks/i2;

    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/h0;-><init>(Lcom/google/android/play/core/assetpacks/i2;)V

    return-object v0
.end method

.method public final b(Lcom/google/android/play/core/assetpacks/i2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/g0;->a:Lcom/google/android/play/core/assetpacks/i2;

    return-void
.end method
