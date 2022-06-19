.class public final Lcom/google/android/gms/internal/ads/dnl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# static fields
.field private static final c:Lcom/google/android/gms/internal/ads/dpm;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/google/android/gms/internal/ads/dnk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dnk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dnl;->c:Lcom/google/android/gms/internal/ads/dpm;

    .line 28
    const-string/jumbo v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dnl;->d:Ljava/util/regex/Pattern;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/dnl;->a:I

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/dnl;->b:I

    .line 4
    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 13
    const-string/jumbo v2, "iTunSMPB"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v0

    .line 15
    :cond_1
    sget-object v2, Lcom/google/android/gms/internal/ads/dnl;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 18
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 19
    if-gtz v3, :cond_2

    if-lez v2, :cond_0

    .line 20
    :cond_2
    iput v3, p0, Lcom/google/android/gms/internal/ads/dnl;->a:I

    .line 21
    iput v2, p0, Lcom/google/android/gms/internal/ads/dnl;->b:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 22
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 26
    iget v0, p0, Lcom/google/android/gms/internal/ads/dnl;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dnl;->b:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dpi;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 5
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dpi;->a()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/dpi;->a(I)Lcom/google/android/gms/internal/ads/dpi$a;

    move-result-object v0

    .line 7
    instance-of v3, v0, Lcom/google/android/gms/internal/ads/dpk;

    if-eqz v3, :cond_1

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/dpk;

    .line 9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/dpk;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dpk;->b:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/internal/ads/dnl;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    const/4 v2, 0x1

    .line 12
    :cond_0
    return v2

    .line 11
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
