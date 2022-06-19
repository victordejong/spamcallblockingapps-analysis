.class public final Lcom/google/android/gms/internal/ads/dwv$g$c;
.super Lcom/google/android/gms/internal/ads/dcw$a;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dwv$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw$a",
        "<",
        "Lcom/google/android/gms/internal/ads/dwv$g;",
        "Lcom/google/android/gms/internal/ads/dwv$g$c;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$g;->b()Lcom/google/android/gms/internal/ads/dwv$g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dcw$a;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dwu;)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dwv$g$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dwv$g$a$a;)Lcom/google/android/gms/internal/ads/dwv$g$c;
    .locals 2

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$g$c;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$g;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v1, Lcom/google/android/gms/internal/ads/dwv$g$a;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$g;->a(Lcom/google/android/gms/internal/ads/dwv$g;Lcom/google/android/gms/internal/ads/dwv$g$a;)V

    .line 8
    return-object p0
.end method
