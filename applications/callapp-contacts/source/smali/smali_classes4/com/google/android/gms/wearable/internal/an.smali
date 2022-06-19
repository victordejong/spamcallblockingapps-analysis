.class public final Lcom/google/android/gms/wearable/internal/an;
.super Lcom/google/android/gms/common/data/d;

# interfaces
.implements Lcom/google/android/gms/wearable/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final getDataItemKey()Ljava/lang/String;
    .locals 1

    const-string v0, "asset_key"

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/an;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    const-string v0, "asset_id"

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/an;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
