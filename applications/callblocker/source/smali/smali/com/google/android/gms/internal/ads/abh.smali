.class public Lcom/google/android/gms/internal/ads/abh;
.super Lcom/google/android/gms/internal/ads/dhd;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static f:Lcom/google/android/gms/internal/ads/dhl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/google/android/gms/internal/ads/abh;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dhl;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/dhl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/abh;->f:Lcom/google/android/gms/internal/ads/dhl;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/dhf;Lcom/google/android/gms/internal/ads/aci;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dhd;-><init>()V

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dhf;->a()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/dhd;->a(Lcom/google/android/gms/internal/ads/dhf;JLcom/google/android/gms/internal/ads/aci;)V

    .line 3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abh;->b:Lcom/google/android/gms/internal/ads/dhf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dhf;->close()V

    .line 5
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/abh;->b:Lcom/google/android/gms/internal/ads/dhf;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "model("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
