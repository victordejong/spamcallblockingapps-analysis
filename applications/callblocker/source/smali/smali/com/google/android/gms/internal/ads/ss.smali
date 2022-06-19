.class public final Lcom/google/android/gms/internal/ads/ss;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/ads/ss;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Z

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/sr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/sr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/ss;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;ZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ss;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ss;->b:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/ss;->c:Z

    .line 5
    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/ss;->d:Z

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/ss;->e:Ljava/util/List;

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/ss;->f:Z

    .line 8
    iput-boolean p7, p0, Lcom/google/android/gms/internal/ads/ss;->g:Z

    .line 9
    if-nez p8, :cond_0

    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/ss;->h:Ljava/util/List;

    .line 10
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/ss;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 24
    :goto_0
    return-object v0

    .line 13
    :cond_0
    const-string/jumbo v1, "click_string"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    const-string/jumbo v2, "report_url"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    const-string/jumbo v3, "rendered_ad_enabled"

    invoke-virtual {p0, v3, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 16
    const-string/jumbo v4, "non_malicious_reporting_enabled"

    .line 17
    invoke-virtual {p0, v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 18
    const-string/jumbo v5, "allowed_headers"

    .line 19
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/wy;->a(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 20
    const-string/jumbo v6, "webview_permissions"

    .line 21
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/wy;->a(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 22
    const-string/jumbo v0, "protection_enabled"

    invoke-virtual {p0, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 23
    const-string/jumbo v0, "malicious_reporting_enabled"

    invoke-virtual {p0, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/ss;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/ss;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;ZZLjava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 27
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ss;->a:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 28
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ss;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 29
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ss;->c:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 30
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ss;->d:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 31
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ss;->e:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 32
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ss;->f:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 33
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/ss;->g:Z

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    .line 34
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ss;->h:Ljava/util/List;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 35
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 36
    return-void
.end method
