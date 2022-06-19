.class public Lcom/google/android/gms/ads/mediation/s;
.super Lcom/google/android/gms/ads/mediation/q;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/b/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:Lcom/google/android/gms/ads/b/c$b;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/q;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/b/c$b;)V
    .locals 0

    .prologue
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/s;->h:Lcom/google/android/gms/ads/b/c$b;

    .line 9
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/s;->e:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/b/c$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/s;->f:Ljava/util/List;

    .line 5
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/s;->g:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/s;->i:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/s;->j:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/s;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/b/c$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/s;->f:Ljava/util/List;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/s;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/ads/b/c$b;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/s;->h:Lcom/google/android/gms/ads/b/c$b;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/s;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/s;->j:Ljava/lang/String;

    return-object v0
.end method
