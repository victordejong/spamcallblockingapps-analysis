.class public final Lcom/google/android/gms/internal/ads/drb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Z

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const v5, 0x7fffffff

    .line 1
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move v6, v5

    move v7, v5

    move v8, v4

    move v9, v4

    move v10, v5

    move v11, v5

    move v12, v4

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/drb;-><init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V

    .line 2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIIIZZIIZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const v1, 0x7fffffff

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drb;->a:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/drb;->b:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/drb;->c:Z

    .line 7
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/drb;->d:Z

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/drb;->e:I

    .line 9
    iput v1, p0, Lcom/google/android/gms/internal/ads/drb;->f:I

    .line 10
    iput v1, p0, Lcom/google/android/gms/internal/ads/drb;->g:I

    .line 11
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/drb;->h:Z

    .line 12
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/drb;->i:Z

    .line 13
    iput v1, p0, Lcom/google/android/gms/internal/ads/drb;->j:I

    .line 14
    iput v1, p0, Lcom/google/android/gms/internal/ads/drb;->k:I

    .line 15
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/drb;->l:Z

    .line 16
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 17
    if-ne p0, p1, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v0

    .line 19
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/ads/drb;

    .line 22
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/drb;->d:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/drb;->d:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/drb;->e:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/drb;->e:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/drb;->f:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/drb;->f:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/drb;->h:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/drb;->h:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/drb;->i:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/drb;->i:Z

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/drb;->l:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/ads/drb;->l:Z

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/drb;->j:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/drb;->j:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/drb;->k:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/drb;->k:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/internal/ads/drb;->g:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/drb;->g:I

    if-ne v2, v3, :cond_4

    .line 23
    invoke-static {v4, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 24
    invoke-static {v4, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 25
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 27
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/drb;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/ads/drb;->e:I

    add-int/2addr v0, v3

    .line 31
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/ads/drb;->f:I

    add-int/2addr v0, v3

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/google/android/gms/internal/ads/drb;->g:I

    add-int/2addr v0, v3

    .line 33
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/drb;->h:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 34
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/drb;->i:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 35
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/drb;->l:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 36
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/drb;->j:I

    add-int/2addr v0, v1

    .line 37
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/drb;->k:I

    add-int/2addr v0, v1

    .line 38
    return v0

    :cond_0
    move v0, v2

    .line 29
    goto :goto_0

    :cond_1
    move v0, v2

    .line 33
    goto :goto_1

    :cond_2
    move v0, v2

    .line 34
    goto :goto_2

    :cond_3
    move v1, v2

    .line 35
    goto :goto_3
.end method
