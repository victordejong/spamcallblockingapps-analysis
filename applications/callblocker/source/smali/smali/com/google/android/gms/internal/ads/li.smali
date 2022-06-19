.class public final Lcom/google/android/gms/internal/ads/li;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/e;


# instance fields
.field private final a:Ljava/util/Date;

.field private final b:I

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z

.field private final e:Landroid/location/Location;

.field private final f:I

.field private final g:Z

.field private final h:I

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZIZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/li;->a:Ljava/util/Date;

    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/li;->b:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/li;->c:Ljava/util/Set;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/li;->e:Landroid/location/Location;

    .line 6
    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/li;->d:Z

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/ads/li;->f:I

    .line 8
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/li;->g:Z

    .line 9
    iput p8, p0, Lcom/google/android/gms/internal/ads/li;->h:I

    .line 10
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/li;->i:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/li;->a:Ljava/util/Date;

    return-object v0
.end method

.method public final b()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/ads/li;->b:I

    return v0
.end method

.method public final c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/li;->c:Ljava/util/Set;

    return-object v0
.end method

.method public final d()Landroid/location/Location;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/li;->e:Landroid/location/Location;

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/li;->f:I

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/li;->d:Z

    return v0
.end method

.method public final g()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/li;->g:Z

    return v0
.end method
