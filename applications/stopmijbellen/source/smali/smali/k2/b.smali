.class public final Lk2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final b:Lk2/b;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final c:Lk2/b;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final d:Lk2/b;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final e:Lk2/b;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final f:Lk2/b;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final g:Lk2/b;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/android/gms/ads/AdSize;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lk2/b;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const-string v3, "mb"

    invoke-direct {v0, v1, v2, v3}, Lk2/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lk2/b;->b:Lk2/b;

    new-instance v0, Lk2/b;

    const/16 v1, 0x140

    const/16 v2, 0x32

    .line 2
    invoke-direct {v0, v1, v2, v3}, Lk2/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lk2/b;->c:Lk2/b;

    new-instance v0, Lk2/b;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    const-string v3, "as"

    .line 3
    invoke-direct {v0, v1, v2, v3}, Lk2/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lk2/b;->d:Lk2/b;

    new-instance v0, Lk2/b;

    const/16 v1, 0x1d4

    const/16 v2, 0x3c

    .line 4
    invoke-direct {v0, v1, v2, v3}, Lk2/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lk2/b;->e:Lk2/b;

    new-instance v0, Lk2/b;

    const/16 v1, 0x2d8

    const/16 v2, 0x5a

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lk2/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lk2/b;->f:Lk2/b;

    new-instance v0, Lk2/b;

    const/16 v1, 0xa0

    const/16 v2, 0x258

    .line 6
    invoke-direct {v0, v1, v2, v3}, Lk2/b;-><init>(IILjava/lang/String;)V

    sput-object v0, Lk2/b;->g:Lk2/b;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    new-instance p3, Lcom/google/android/gms/ads/AdSize;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lk2/b;->a:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/AdSize;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/AdSize;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk2/b;->a:Lcom/google/android/gms/ads/AdSize;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lk2/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lk2/b;

    iget-object v0, p0, Lk2/b;->a:Lcom/google/android/gms/ads/AdSize;

    .line 3
    iget-object p1, p1, Lk2/b;->a:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/AdSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk2/b;->a:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lk2/b;->a:Lcom/google/android/gms/ads/AdSize;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
