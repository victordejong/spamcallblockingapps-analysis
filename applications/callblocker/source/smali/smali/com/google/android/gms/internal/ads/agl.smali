.class final Lcom/google/android/gms/internal/ads/agl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ajx;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/atf;

.field private b:Lcom/google/android/gms/internal/ads/apb;

.field private c:Lcom/google/android/gms/internal/ads/chd;

.field private d:Lcom/google/android/gms/internal/ads/cfc;

.field private e:Lcom/google/android/gms/internal/ads/cef;

.field private final synthetic f:Lcom/google/android/gms/internal/ads/agf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/agf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agl;->f:Lcom/google/android/gms/internal/ads/agf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/agf;Lcom/google/android/gms/internal/ads/age;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/agl;-><init>(Lcom/google/android/gms/internal/ads/agf;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/akf;)Lcom/google/android/gms/internal/ads/ajx;
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

.method public final synthetic a(Lcom/google/android/gms/internal/ads/apb;)Lcom/google/android/gms/internal/ads/ajx;
    .locals 1

    .prologue
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/apb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agl;->b:Lcom/google/android/gms/internal/ads/apb;

    .line 12
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/atf;)Lcom/google/android/gms/internal/ads/ajx;
    .locals 1

    .prologue
    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/atf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/agl;->a:Lcom/google/android/gms/internal/ads/atf;

    .line 16
    return-object p0
.end method

.method public final a()Lcom/google/android/gms/internal/ads/ajy;
    .locals 13

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agl;->a:Lcom/google/android/gms/internal/ads/atf;

    const-class v1, Lcom/google/android/gms/internal/ads/atf;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/agl;->b:Lcom/google/android/gms/internal/ads/apb;

    const-class v1, Lcom/google/android/gms/internal/ads/apb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dhz;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/ago;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/agl;->f:Lcom/google/android/gms/internal/ads/agf;

    new-instance v2, Lcom/google/android/gms/internal/ads/ann;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/ann;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/chy;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/chy;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/aoo;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/aoo;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/bhx;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/bhx;-><init>()V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/agl;->a:Lcom/google/android/gms/internal/ads/atf;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/agl;->b:Lcom/google/android/gms/internal/ads/apb;

    new-instance v8, Lcom/google/android/gms/internal/ads/cih;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/cih;-><init>()V

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/agl;->c:Lcom/google/android/gms/internal/ads/chd;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/agl;->d:Lcom/google/android/gms/internal/ads/cfc;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/agl;->e:Lcom/google/android/gms/internal/ads/cef;

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/internal/ads/ago;-><init>(Lcom/google/android/gms/internal/ads/agf;Lcom/google/android/gms/internal/ads/ann;Lcom/google/android/gms/internal/ads/chy;Lcom/google/android/gms/internal/ads/aoo;Lcom/google/android/gms/internal/ads/bhx;Lcom/google/android/gms/internal/ads/atf;Lcom/google/android/gms/internal/ads/apb;Lcom/google/android/gms/internal/ads/cih;Lcom/google/android/gms/internal/ads/chd;Lcom/google/android/gms/internal/ads/cfc;Lcom/google/android/gms/internal/ads/cef;Lcom/google/android/gms/internal/ads/age;)V

    return-object v0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cef;)Lcom/google/android/gms/internal/ads/aoy;
    .locals 0

    .prologue
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agl;->e:Lcom/google/android/gms/internal/ads/cef;

    .line 21
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/cfc;)Lcom/google/android/gms/internal/ads/aoy;
    .locals 0

    .prologue
    .line 22
    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agl;->d:Lcom/google/android/gms/internal/ads/cfc;

    .line 25
    return-object p0
.end method

.method public final synthetic a(Lcom/google/android/gms/internal/ads/chd;)Lcom/google/android/gms/internal/ads/aoy;
    .locals 0

    .prologue
    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/agl;->c:Lcom/google/android/gms/internal/ads/chd;

    .line 29
    return-object p0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/agl;->a()Lcom/google/android/gms/internal/ads/ajy;

    move-result-object v0

    return-object v0
.end method
