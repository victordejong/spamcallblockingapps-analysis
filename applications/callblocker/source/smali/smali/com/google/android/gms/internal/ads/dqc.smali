.class public final Lcom/google/android/gms/internal/ads/dqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dqf;
.implements Lcom/google/android/gms/internal/ads/dqg;


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Lcom/google/android/gms/internal/ads/dro;

.field private final c:Lcom/google/android/gms/internal/ads/dni;

.field private final d:I

.field private final e:Lcom/google/android/gms/internal/ads/cnz;

.field private final f:Lcom/google/android/gms/internal/ads/dqb;

.field private final g:Lcom/google/android/gms/internal/ads/dlp;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:Lcom/google/android/gms/internal/ads/dqf;

.field private k:Lcom/google/android/gms/internal/ads/dln;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/dro;Lcom/google/android/gms/internal/ads/dni;ILcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dqb;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dqc;->a:Landroid/net/Uri;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dqc;->b:Lcom/google/android/gms/internal/ads/dro;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dqc;->c:Lcom/google/android/gms/internal/ads/dni;

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/ads/dqc;->d:I

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/dqc;->e:Lcom/google/android/gms/internal/ads/cnz;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/dqc;->f:Lcom/google/android/gms/internal/ads/dqb;

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqc;->h:Ljava/lang/String;

    .line 9
    iput p8, p0, Lcom/google/android/gms/internal/ads/dqc;->i:I

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/dlp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dlp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqc;->g:Lcom/google/android/gms/internal/ads/dlp;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/drn;)Lcom/google/android/gms/internal/ads/dqe;
    .locals 11

    .prologue
    .line 17
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/drz;->a(Z)V

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/dpt;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqc;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dqc;->b:Lcom/google/android/gms/internal/ads/dro;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/dro;->a()Lcom/google/android/gms/internal/ads/drp;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dqc;->c:Lcom/google/android/gms/internal/ads/dni;

    .line 19
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/dni;->a()[Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/dqc;->d:I

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dqc;->e:Lcom/google/android/gms/internal/ads/cnz;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dqc;->f:Lcom/google/android/gms/internal/ads/dqb;

    const/4 v9, 0x0

    iget v10, p0, Lcom/google/android/gms/internal/ads/dqc;->i:I

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/dpt;-><init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/drp;[Lcom/google/android/gms/internal/ads/dnh;ILcom/google/android/gms/internal/ads/cnz;Lcom/google/android/gms/internal/ads/dqb;Lcom/google/android/gms/internal/ads/dqf;Lcom/google/android/gms/internal/ads/drn;Ljava/lang/String;I)V

    .line 20
    return-object v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dkt;ZLcom/google/android/gms/internal/ads/dqf;)V
    .locals 4

    .prologue
    .line 12
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dqc;->j:Lcom/google/android/gms/internal/ads/dqf;

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/ads/dqt;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/dqt;-><init>(JZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqc;->k:Lcom/google/android/gms/internal/ads/dln;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqc;->k:Lcom/google/android/gms/internal/ads/dln;

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Lcom/google/android/gms/internal/ads/dqf;->a(Lcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V

    .line 15
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqc;->g:Lcom/google/android/gms/internal/ads/dlp;

    .line 26
    invoke-virtual {p1, v0, v1, v0}, Lcom/google/android/gms/internal/ads/dln;->a(ILcom/google/android/gms/internal/ads/dlp;Z)Lcom/google/android/gms/internal/ads/dlp;

    move-result-object v1

    .line 27
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/dlp;->c:J

    .line 28
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 29
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/dqc;->l:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 34
    :goto_0
    return-void

    .line 31
    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dqc;->k:Lcom/google/android/gms/internal/ads/dln;

    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dqc;->l:Z

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dqc;->j:Lcom/google/android/gms/internal/ads/dqf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dqc;->k:Lcom/google/android/gms/internal/ads/dln;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dqf;->a(Lcom/google/android/gms/internal/ads/dln;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dqe;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/google/android/gms/internal/ads/dpt;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dpt;->b()V

    .line 22
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dqc;->j:Lcom/google/android/gms/internal/ads/dqf;

    .line 24
    return-void
.end method
