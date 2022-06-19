.class public abstract Lcom/google/android/gms/internal/ads/zzdwo;
.super Lcom/google/android/gms/internal/ads/zzdvq;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzdvq<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private limit:I

.field private offset:I

.field private final zzhvz:Lcom/google/android/gms/internal/ads/zzdvu;

.field private final zzhwa:Z

.field public final zzhwe:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdwk;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdvq;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdwo;->offset:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwk;->zza(Lcom/google/android/gms/internal/ads/zzdwk;)Lcom/google/android/gms/internal/ads/zzdvu;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhvz:Lcom/google/android/gms/internal/ads/zzdvu;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhwa:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdwk;->zzb(Lcom/google/android/gms/internal/ads/zzdwk;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdwo;->limit:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhwe:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final synthetic zzaza()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdwo;->offset:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzdwo;->offset:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdwo;->zzen(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhwe:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdwo;->offset:I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzdwo;->zzeo(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzdwo;->offset:I

    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdwo;->offset:I

    if-ne v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzdwo;->offset:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhwe:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdwo;->offset:I

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhvz:Lcom/google/android/gms/internal/ads/zzdvu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhwe:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdvu;->zzc(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-le v1, v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhvz:Lcom/google/android/gms/internal/ads/zzdvu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhwe:Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdvu;->zzc(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_4
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzdwo;->limit:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhwe:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdwo;->offset:I

    :goto_4
    if-le v1, v0, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhvz:Lcom/google/android/gms/internal/ads/zzdvu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhwe:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzdvu;->zzc(C)Z

    move-result v2

    if-eqz v2, :cond_6

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_5
    sub-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzdwo;->limit:I

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdwo;->zzhwe:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdvq;->zzazb()Ljava/lang/Object;

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract zzen(I)I
.end method

.method public abstract zzeo(I)I
.end method
