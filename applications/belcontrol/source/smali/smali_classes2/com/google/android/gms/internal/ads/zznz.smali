.class public final Lcom/google/android/gms/internal/ads/zznz;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final viewportHeight:I

.field public final viewportWidth:I

.field private final zzbha:Ljava/lang/String;

.field private final zzbhb:Ljava/lang/String;

.field private final zzbhc:Z

.field private final zzbhd:Z

.field public final zzbhe:I

.field public final zzbhf:I

.field public final zzbhg:I

.field public final zzbhh:Z

.field public final zzbhi:Z

.field public final zzbhj:Z


# direct methods
.method public constructor <init>()V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7fffffff

    const v6, 0x7fffffff

    const v7, 0x7fffffff

    const/4 v8, 0x1

    const/4 v9, 0x1

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const/4 v12, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/zznz;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbha:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhb:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhc:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhd:Z

    const p2, 0x7fffffff

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhe:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhf:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhg:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhh:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhi:Z

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznz;->viewportWidth:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznz;->viewportHeight:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhj:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lcom/google/android/gms/internal/ads/zznz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zznz;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhd:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zznz;->zzbhd:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhe:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zznz;->zzbhe:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhf:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zznz;->zzbhf:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhh:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zznz;->zzbhh:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhi:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zznz;->zzbhi:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhj:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/zznz;->zzbhj:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznz;->viewportWidth:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zznz;->viewportWidth:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznz;->viewportHeight:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zznz;->viewportHeight:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhg:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zznz;->zzbhg:I

    if-ne v2, p1, :cond_2

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhd:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhe:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhf:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhg:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhh:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhi:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zznz;->zzbhj:Z

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zznz;->viewportWidth:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/ads/zznz;->viewportHeight:I

    add-int/2addr v1, v0

    return v1
.end method
