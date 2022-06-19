.class public final Lcom/google/android/gms/internal/ads/ake;
.super Lcom/google/android/gms/internal/ads/amh;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final c:Landroid/view/View;

.field private final d:Lcom/google/android/gms/internal/ads/act;

.field private final e:Lcom/google/android/gms/internal/ads/cgq;

.field private final f:I

.field private final g:Z

.field private final h:Z

.field private i:Lcom/google/android/gms/internal/ads/dvi;

.field private final j:Lcom/google/android/gms/internal/ads/ajv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/amk;Landroid/view/View;Lcom/google/android/gms/internal/ads/act;Lcom/google/android/gms/internal/ads/cgq;IZZLcom/google/android/gms/internal/ads/ajv;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/amh;-><init>(Lcom/google/android/gms/internal/ads/amk;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ake;->c:Landroid/view/View;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ake;->d:Lcom/google/android/gms/internal/ads/act;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ake;->e:Lcom/google/android/gms/internal/ads/cgq;

    .line 5
    iput p5, p0, Lcom/google/android/gms/internal/ads/ake;->f:I

    .line 6
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/ake;->g:Z

    .line 7
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/ake;->h:Z

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/ake;->j:Lcom/google/android/gms/internal/ads/ajv;

    .line 9
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/cgq;
    .locals 2

    .prologue
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->b:Lcom/google/android/gms/internal/ads/cgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/cgr;->o:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ake;->e:Lcom/google/android/gms/internal/ads/cgq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/chk;->a(Ljava/util/List;Lcom/google/android/gms/internal/ads/cgq;)Lcom/google/android/gms/internal/ads/cgq;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->j:Lcom/google/android/gms/internal/ads/ajv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ajv;->a(J)V

    .line 27
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dva;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->d:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->d:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/act;->a(Lcom/google/android/gms/internal/ads/dva;)V

    .line 22
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dvi;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ake;->i:Lcom/google/android/gms/internal/ads/dvi;

    .line 24
    return-void
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->c:Landroid/view/View;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/google/android/gms/internal/ads/ake;->f:I

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ake;->g:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/ake;->h:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->d:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->d:Lcom/google/android/gms/internal/ads/act;

    .line 16
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->d:Lcom/google/android/gms/internal/ads/act;

    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->v()Lcom/google/android/gms/internal/ads/aef;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/aef;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 18
    :goto_0
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->d:Lcom/google/android/gms/internal/ads/act;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->d:Lcom/google/android/gms/internal/ads/act;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/act;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lcom/google/android/gms/internal/ads/dvi;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->i:Lcom/google/android/gms/internal/ads/dvi;

    return-object v0
.end method
