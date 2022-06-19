.class public final Lcom/google/android/gms/internal/ads/dwv$a$b;
.super Lcom/google/android/gms/internal/ads/dcw$a;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dei;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dwv$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/dcw$a",
        "<",
        "Lcom/google/android/gms/internal/ads/dwv$a;",
        "Lcom/google/android/gms/internal/ads/dwv$a$b;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dei;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/dwv$a;->c()Lcom/google/android/gms/internal/ads/dwv$a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dcw$a;-><init>(Lcom/google/android/gms/internal/ads/dcw;)V

    .line 2
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/dwu;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dwv$a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dwv$a$a;)Lcom/google/android/gms/internal/ads/dwv$a$b;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$a$b;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$a;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/dwv$a;->a(Lcom/google/android/gms/internal/ads/dwv$a;Lcom/google/android/gms/internal/ads/dwv$a$a;)V

    .line 8
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dwv$j$a;)Lcom/google/android/gms/internal/ads/dwv$a$b;
    .locals 2

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwv$a$b;->a:Lcom/google/android/gms/internal/ads/dcw;

    check-cast v0, Lcom/google/android/gms/internal/ads/dwv$a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dcw$a;->g()Lcom/google/android/gms/internal/ads/deg;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/dcw;

    check-cast v1, Lcom/google/android/gms/internal/ads/dwv$j;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dwv$a;->a(Lcom/google/android/gms/internal/ads/dwv$a;Lcom/google/android/gms/internal/ads/dwv$j;)V

    .line 14
    return-object p0
.end method
