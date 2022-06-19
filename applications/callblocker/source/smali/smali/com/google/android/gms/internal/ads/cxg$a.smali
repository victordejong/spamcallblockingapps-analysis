.class public final Lcom/google/android/gms/internal/ads/cxg$a;
.super Lcom/google/android/gms/internal/ads/dcw$a;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/cxg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw$a",
        "<",
        "Lcom/google/android/gms/internal/ads/cxg;",
        "Lcom/google/android/gms/internal/ads/cxg$a;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/cxg;->g()Lcom/google/android/gms/internal/ads/cxg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dcw$a;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/cxf;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cxg$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/cxg$a;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dcw$a;->c()V

    .line 6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dcw$a;->b:Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cxg$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cxg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/cxg;->a(Lcom/google/android/gms/internal/ads/cxg;I)V

    .line 8
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/cxc;)Lcom/google/android/gms/internal/ads/cxg$a;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cxg$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cxg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/cxg;->a(Lcom/google/android/gms/internal/ads/cxg;Lcom/google/android/gms/internal/ads/cxc;)V

    .line 14
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cxg$a;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cxg$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cxg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/cxg;->a(Lcom/google/android/gms/internal/ads/cxg;Lcom/google/android/gms/internal/ads/dbi;)V

    .line 20
    return-object p0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/dbi;)Lcom/google/android/gms/internal/ads/cxg$a;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cxg$a;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/cxg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/cxg;->b(Lcom/google/android/gms/internal/ads/cxg;Lcom/google/android/gms/internal/ads/dbi;)V

    .line 26
    return-object p0
.end method
