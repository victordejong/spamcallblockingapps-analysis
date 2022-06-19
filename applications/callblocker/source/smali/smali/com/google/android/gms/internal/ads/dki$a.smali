.class public final Lcom/google/android/gms/internal/ads/dki$a;
.super Lcom/google/android/gms/internal/ads/dcw$a;
.source "com.google.android.gms:play-services-gass@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dki;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw$a",
        "<",
        "Lcom/google/android/gms/internal/ads/dki;",
        "Lcom/google/android/gms/internal/ads/dki$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/dki;->h()Lcom/google/android/gms/internal/ads/dki;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dcw$a;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dkh;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dki$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/internal/ads/dki$a;
    .locals 1

    .prologue
    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dki$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dki;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dki;->a(Lcom/google/android/gms/internal/ads/dki;J)V

    .line 20
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dki$a;
    .locals 1

    .prologue
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dki$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dki;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dki;->a(Lcom/google/android/gms/internal/ads/dki;Ljava/lang/String;)V

    .line 8
    return-object p0
.end method

.method public final b(J)Lcom/google/android/gms/internal/ads/dki$a;
    .locals 1

    .prologue
    .line 21
    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dki$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dki;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dki;->b(Lcom/google/android/gms/internal/ads/dki;J)V

    .line 26
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dki$a;
    .locals 1

    .prologue
    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dki$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dki;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dki;->b(Lcom/google/android/gms/internal/ads/dki;Ljava/lang/String;)V

    .line 14
    return-object p0
.end method

.method public final c(J)Lcom/google/android/gms/internal/ads/dki$a;
    .locals 1

    .prologue
    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dki$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dki;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/dki;->c(Lcom/google/android/gms/internal/ads/dki;J)V

    .line 32
    return-object p0
.end method
