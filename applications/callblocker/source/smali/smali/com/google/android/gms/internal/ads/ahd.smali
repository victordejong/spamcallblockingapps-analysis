.class final Lcom/google/android/gms/internal/ads/ahd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/btu;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/apb;

.field private b:Lcom/google/android/gms/internal/ads/buk;

.field private final synthetic c:Lcom/google/android/gms/internal/ads/agf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/agf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ahd;->c:Lcom/google/android/gms/internal/ads/agf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/agf;Lcom/google/android/gms/internal/ads/age;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/ahd;-><init>(Lcom/google/android/gms/internal/ads/agf;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/apb;)Lcom/google/android/gms/internal/ads/btu;
    .locals 1

    .prologue
    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/apb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ahd;->a:Lcom/google/android/gms/internal/ads/apb;

    .line 16
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/btu;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/buk;)Lcom/google/android/gms/internal/ads/btu;
    .locals 1

    .prologue
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/buk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ahd;->b:Lcom/google/android/gms/internal/ads/buk;

    .line 12
    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/btv;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahd;->a:Lcom/google/android/gms/internal/ads/apb;

    const-class v1, Lcom/google/android/gms/internal/ads/apb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ahd;->b:Lcom/google/android/gms/internal/ads/buk;

    const-class v1, Lcom/google/android/gms/internal/ads/buk;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ahg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ahd;->c:Lcom/google/android/gms/internal/ads/agf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ahd;->b:Lcom/google/android/gms/internal/ads/buk;

    new-instance v3, Lcom/google/android/gms/internal/ads/ann;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/ann;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/bhx;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/bhx;-><init>()V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/ahd;->a:Lcom/google/android/gms/internal/ads/apb;

    new-instance v6, Lcom/google/android/gms/internal/ads/cih;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/cih;-><init>()V

    move-object v8, v7

    move-object v9, v7

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/ahg;-><init>(Lcom/google/android/gms/internal/ads/agf;Lcom/google/android/gms/internal/ads/buk;Lcom/google/android/gms/internal/ads/ann;Lcom/google/android/gms/internal/ads/bhx;Lcom/google/android/gms/internal/ads/apb;Lcom/google/android/gms/internal/ads/cih;Lcom/google/android/gms/internal/ads/cfc;Lcom/google/android/gms/internal/ads/cef;Lcom/google/android/gms/internal/ads/age;)V

    return-object v0
.end method
