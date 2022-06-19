.class public final Lcom/google/android/gms/internal/ads/dvu;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/dvu;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public c:J

.field private final d:J

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/google/android/gms/internal/ads/dvx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dvx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dvu;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZJ)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dvu;->a:Ljava/lang/String;

    .line 30
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/dvu;->d:J

    .line 31
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dvu;->e:Ljava/lang/String;

    .line 32
    if-eqz p5, :cond_1

    :goto_1
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/dvu;->f:Ljava/lang/String;

    .line 33
    if-eqz p6, :cond_2

    :goto_2
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/dvu;->g:Ljava/lang/String;

    .line 34
    if-eqz p7, :cond_3

    :goto_3
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/dvu;->h:Landroid/os/Bundle;

    .line 35
    iput-boolean p8, p0, Lcom/google/android/gms/internal/ads/dvu;->b:Z

    .line 36
    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/dvu;->c:J

    .line 37
    return-void

    .line 31
    :cond_0
    const-string/jumbo p4, ""

    goto :goto_0

    .line 32
    :cond_1
    const-string/jumbo p5, ""

    goto :goto_1

    .line 33
    :cond_2
    const-string/jumbo p6, ""

    goto :goto_2

    .line 34
    :cond_3
    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    goto :goto_3
.end method

.method public static a(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/dvu;
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    const/4 v11, 0x0

    .line 2
    :try_start_0
    const-string/jumbo v0, "gcache"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v11

    .line 27
    :goto_0
    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Expected 2 path parts for namespace and id, found :"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    move-object v0, v11

    .line 7
    goto :goto_0

    .line 8
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 11
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    const-string/jumbo v0, "1"

    const-string/jumbo v7, "read_only"

    invoke-virtual {p0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 13
    const-string/jumbo v0, "expiration"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    if-nez v0, :cond_3

    .line 15
    :goto_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->e()Lcom/google/android/gms/internal/ads/vj;

    .line 17
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 19
    const-string/jumbo v10, "tag."

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 20
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 21
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v7, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 25
    :catch_0
    move-exception v0

    .line 26
    :goto_3
    const-string/jumbo v1, "Unable to parse Uri into cache offering."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v11

    .line 27
    goto/16 :goto_0

    .line 14
    :cond_3
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 24
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/dvu;

    const-wide/16 v9, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/ads/dvu;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZJ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 25
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/dvu;
    .locals 1

    .prologue
    .line 1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dvu;->a(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/dvu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 38
    .line 39
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 40
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvu;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 41
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dvu;->d:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 42
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvu;->e:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 43
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvu;->f:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 44
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvu;->g:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 45
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dvu;->h:Landroid/os/Bundle;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    .line 46
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dvu;->b:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 47
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dvu;->c:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    .line 48
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 49
    return-void
.end method
