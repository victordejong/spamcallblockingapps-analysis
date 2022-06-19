.class final Lcom/google/android/gms/internal/ads/eag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/eah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/eah;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/eag;->a:Lcom/google/android/gms/internal/ads/eah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/eag;->a:Lcom/google/android/gms/internal/ads/eah;

    .line 2152
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/eah;->w:Z

    if-nez v1, :cond_5

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/eah;->n:Z

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eah;->l:Lcom/google/android/gms/internal/ads/dya;

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/eah;->m:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 2154
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 2156
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/ebb;

    .line 3023
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/eaz;->e()Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v4

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2159
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/eah;->g:Lcom/google/android/gms/internal/ads/ect;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ect;->b()Z

    .line 2160
    new-array v3, v1, [Lcom/google/android/gms/internal/ads/ebg;

    .line 2161
    new-array v4, v1, [Z

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/eah;->s:[Z

    .line 2162
    new-array v4, v1, [Z

    iput-object v4, v0, Lcom/google/android/gms/internal/ads/eah;->r:[Z

    .line 2163
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/eah;->l:Lcom/google/android/gms/internal/ads/dya;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/dya;->b()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/eah;->q:J

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-ge v4, v1, :cond_4

    .line 2165
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/eah;->j:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/ebb;

    .line 4023
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ebb;->c:Lcom/google/android/gms/internal/ads/eaz;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/eaz;->e()Lcom/google/android/gms/internal/ads/zzht;

    move-result-object v6

    .line 2166
    new-instance v7, Lcom/google/android/gms/internal/ads/ebg;

    new-array v8, v5, [Lcom/google/android/gms/internal/ads/zzht;

    aput-object v6, v8, v2

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/ebg;-><init>([Lcom/google/android/gms/internal/ads/zzht;)V

    aput-object v7, v3, v4

    .line 2167
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzht;->zzaho:Ljava/lang/String;

    .line 2168
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/ecu;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/ecu;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 2169
    :cond_3
    :goto_2
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/eah;->s:[Z

    aput-boolean v5, v6, v4

    .line 2170
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/eah;->t:Z

    or-int/2addr v5, v6

    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/eah;->t:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2172
    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/ads/ebi;

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/ebi;-><init>([Lcom/google/android/gms/internal/ads/ebg;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/eah;->p:Lcom/google/android/gms/internal/ads/ebi;

    .line 2173
    iput-boolean v5, v0, Lcom/google/android/gms/internal/ads/eah;->n:Z

    .line 2174
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eah;->b:Lcom/google/android/gms/internal/ads/eat;

    new-instance v2, Lcom/google/android/gms/internal/ads/ebh;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/eah;->q:J

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/eah;->l:Lcom/google/android/gms/internal/ads/dya;

    .line 2175
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/dya;->a()Z

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/ebh;-><init>(JZ)V

    const/4 v3, 0x0

    .line 2176
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/eat;->a(Lcom/google/android/gms/internal/ads/dwe;Ljava/lang/Object;)V

    .line 2177
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eah;->k:Lcom/google/android/gms/internal/ads/ear;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/ear;->a(Lcom/google/android/gms/internal/ads/eas;)V

    :cond_5
    :goto_3
    return-void
.end method
