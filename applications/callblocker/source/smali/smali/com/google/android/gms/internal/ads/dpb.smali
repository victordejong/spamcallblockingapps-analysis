.class public final Lcom/google/android/gms/internal/ads/dpb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/dpb$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/doz;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/internal/ads/dpb$a;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/doz;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final d:Landroid/util/SparseIntArray;

.field private static final e:Landroid/util/SparseIntArray;

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static g:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x20

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 181
    const-string/jumbo v0, "OMX.google.raw.decoder"

    .line 182
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/doz;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/doz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dpb;->a:Lcom/google/android/gms/internal/ads/doz;

    .line 183
    const-string/jumbo v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/dpb;->b:Ljava/util/regex/Pattern;

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dpb;->c:Ljava/util/HashMap;

    .line 185
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/internal/ads/dpb;->g:I

    .line 186
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 187
    sput-object v0, Lcom/google/android/gms/internal/ads/dpb;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->d:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 192
    sput-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0xd

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 197
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x15

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 198
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x16

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 199
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x1e

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 200
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x1f

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 201
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x400

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x28

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x29

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x2a

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 205
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x32

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 206
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x33

    const v2, 0x8000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 207
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    const/16 v1, 0x34

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 209
    sput-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L30"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L60"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L63"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L90"

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L93"

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L120"

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L123"

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L150"

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L153"

    const/high16 v2, 0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L156"

    const/high16 v2, 0x40000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L180"

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L183"

    const/high16 v2, 0x400000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "L186"

    const/high16 v2, 0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H30"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H60"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H63"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H90"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H93"

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H120"

    const/16 v2, 0x800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H123"

    const/16 v2, 0x2000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H150"

    const v2, 0x8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H153"

    const/high16 v2, 0x20000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H156"

    const/high16 v2, 0x80000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H180"

    const/high16 v2, 0x200000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H183"

    const/high16 v2, 0x800000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    const-string/jumbo v1, "H186"

    const/high16 v2, 0x2000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    if-nez p0, :cond_0

    move-object v0, v3

    .line 76
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-string/jumbo v4, "\\."

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 53
    aget-object v7, v6, v1

    const/4 v4, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_1
    move v1, v4

    :goto_1
    packed-switch v1, :pswitch_data_0

    move-object v0, v3

    .line 76
    goto :goto_0

    .line 53
    :sswitch_0
    const-string/jumbo v8, "hev1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "hvc1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "avc1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "avc2"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v5

    goto :goto_1

    .line 55
    :pswitch_0
    array-length v1, v6

    const/4 v4, 0x4

    if-ge v1, v4, :cond_3

    .line 56
    const-string/jumbo v1, "MediaCodecUtil"

    const-string/jumbo v2, "Ignoring malformed HEVC codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 57
    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 58
    :cond_3
    sget-object v1, Lcom/google/android/gms/internal/ads/dpb;->b:Ljava/util/regex/Pattern;

    aget-object v4, v6, v2

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 59
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_5

    .line 60
    const-string/jumbo v1, "MediaCodecUtil"

    const-string/jumbo v2, "Ignoring malformed HEVC codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 61
    goto/16 :goto_0

    .line 60
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 62
    :cond_5
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v1, v2

    .line 69
    :goto_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->f:Ljava/util/Map;

    aget-object v5, v6, v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 70
    if-nez v0, :cond_a

    .line 71
    const-string/jumbo v1, "MediaCodecUtil"

    const-string/jumbo v5, "Unknown HEVC level string: "

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 72
    goto/16 :goto_0

    .line 65
    :cond_6
    const-string/jumbo v7, "2"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v1, v0

    .line 66
    goto :goto_4

    .line 67
    :cond_7
    const-string/jumbo v2, "MediaCodecUtil"

    const-string/jumbo v4, "Unknown HEVC profile string: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 68
    goto/16 :goto_0

    .line 67
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6

    .line 71
    :cond_9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 73
    :cond_a
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .line 74
    goto/16 :goto_0

    .line 75
    :pswitch_1
    invoke-static {p0, v6}, Lcom/google/android/gms/internal/ads/dpb;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    goto/16 :goto_0

    .line 53
    nop

    :sswitch_data_0
    .sparse-switch
        0x2ddf23 -> :sswitch_2
        0x2ddf24 -> :sswitch_3
        0x30d038 -> :sswitch_0
        0x310dbc -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 158
    array-length v0, p1

    if-ge v0, v1, :cond_1

    .line 159
    const-string/jumbo v1, "MediaCodecUtil"

    const-string/jumbo v3, "Ignoring malformed AVC codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 180
    :goto_1
    return-object v0

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 162
    const/4 v0, 0x1

    aget-object v0, p1, v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 163
    const/4 v0, 0x1

    aget-object v0, p1, v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 172
    :goto_2
    sget-object v3, Lcom/google/android/gms/internal/ads/dpb;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 173
    if-nez v3, :cond_6

    .line 174
    const-string/jumbo v0, "MediaCodecUtil"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unknown AVC profile: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 175
    goto :goto_1

    .line 164
    :cond_2
    :try_start_1
    array-length v0, p1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    .line 165
    const/4 v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 166
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 167
    :cond_3
    const-string/jumbo v1, "MediaCodecUtil"

    const-string/jumbo v3, "Ignoring malformed AVC codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 168
    goto/16 :goto_1

    .line 167
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 170
    :catch_0
    move-exception v0

    const-string/jumbo v1, "MediaCodecUtil"

    const-string/jumbo v3, "Ignoring malformed AVC codec string: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 171
    goto/16 :goto_1

    .line 170
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 176
    :cond_6
    sget-object v1, Lcom/google/android/gms/internal/ads/dpb;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 177
    if-nez v1, :cond_7

    .line 178
    const-string/jumbo v1, "MediaCodecUtil"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Unknown AVC level: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 179
    goto/16 :goto_1

    .line 180
    :cond_7
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public static a()Lcom/google/android/gms/internal/ads/doz;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->a:Lcom/google/android/gms/internal/ads/doz;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/doz;
    .locals 2

    .prologue
    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/dpb;->b(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/doz;

    goto :goto_0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/dpb$a;Lcom/google/android/gms/internal/ads/dpe;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/dpb$a;",
            "Lcom/google/android/gms/internal/ads/dpe;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/doz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/dpb$a;->a:Ljava/lang/String;

    .line 79
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dpe;->a()I

    move-result v6

    .line 80
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dpe;->b()Z

    move-result v7

    .line 81
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_14

    .line 82
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/dpe;->a(I)Landroid/media/MediaCodecInfo;

    move-result-object v8

    .line 83
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    .line 85
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v7, :cond_6

    const-string/jumbo v2, ".secure"

    invoke-virtual {v9, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 86
    :cond_0
    const/4 v2, 0x0

    .line 132
    :goto_1
    if-eqz v2, :cond_16

    .line 133
    invoke-virtual {v8}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v11, :cond_16

    aget-object v12, v10, v3

    .line 134
    invoke-virtual {v12, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    :try_start_1
    invoke-virtual {v8, v12}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v13

    .line 136
    move-object/from16 v0, p1

    invoke-interface {v0, v5, v13}, Lcom/google/android/gms/internal/ads/dpe;->a(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result v14

    .line 138
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v15, 0x16

    if-gt v2, v15, :cond_12

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->d:Ljava/lang/String;

    const-string/jumbo v15, "ODROID-XU3"

    .line 139
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->d:Ljava/lang/String;

    const-string/jumbo v15, "Nexus 10"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_1
    const-string/jumbo v2, "OMX.Exynos.AVC.Decoder"

    .line 140
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_2
    const/4 v2, 0x1

    .line 142
    :goto_3
    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/dpb$a;->b:Z

    if-eq v15, v14, :cond_4

    :cond_3
    if-nez v7, :cond_13

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/gms/internal/ads/dpb$a;->b:Z

    if-nez v15, :cond_13

    .line 143
    :cond_4
    const/4 v14, 0x0

    invoke-static {v9, v5, v13, v2, v14}, Lcom/google/android/gms/internal/ads/doz;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/google/android/gms/internal/ads/doz;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 153
    :cond_5
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 87
    :cond_6
    :try_start_2
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_8

    const-string/jumbo v2, "CIPAACDecoder"

    .line 88
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "CIPMP3Decoder"

    .line 89
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "CIPVorbisDecoder"

    .line 90
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "CIPAMRNBDecoder"

    .line 91
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "AACDecoder"

    .line 92
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "MP3Decoder"

    .line 93
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 94
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 95
    :cond_8
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_9

    const-string/jumbo v2, "OMX.SEC.MP3.Decoder"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 96
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 97
    :cond_9
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v3, 0x12

    if-ge v2, v3, :cond_a

    const-string/jumbo v2, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "a70"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 99
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 100
    :cond_a
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_c

    const-string/jumbo v2, "OMX.qcom.audio.decoder.mp3"

    .line 101
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "dlxu"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "protou"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "ville"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "villeplus"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "villec2"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    const-string/jumbo v3, "gee"

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "C6602"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "C6603"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "C6606"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "C6616"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "L36h"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "SO-02E"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 114
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 115
    :cond_c
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_e

    const-string/jumbo v2, "OMX.qcom.audio.decoder.aac"

    .line 116
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string/jumbo v2, "C1504"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 117
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "C1505"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "C1604"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "C1605"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    .line 120
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 121
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 122
    :cond_e
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_10

    const-string/jumbo v2, "OMX.SEC.vp8.dec"

    .line 123
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string/jumbo v2, "samsung"

    sget-object v3, Lcom/google/android/gms/internal/ads/dsn;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    const-string/jumbo v3, "d2"

    .line 124
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    const-string/jumbo v3, "serrano"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    const-string/jumbo v3, "jflte"

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    const-string/jumbo v3, "santos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    const-string/jumbo v3, "t0"

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 127
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 128
    :cond_10
    sget v2, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_11

    sget-object v2, Lcom/google/android/gms/internal/ads/dsn;->b:Ljava/lang/String;

    const-string/jumbo v3, "jflte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string/jumbo v2, "OMX.qcom.video.decoder.vp8"

    .line 129
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-eqz v2, :cond_11

    .line 130
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 131
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 140
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 144
    :cond_13
    if-nez v7, :cond_5

    if-eqz v14, :cond_5

    .line 145
    :try_start_3
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, ".secure"

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v14, v5, v13, v2, v15}, Lcom/google/android/gms/internal/ads/doz;->a(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZ)Lcom/google/android/gms/internal/ads/doz;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 155
    :cond_14
    return-object v1

    .line 148
    :catch_0
    move-exception v2

    .line 149
    :try_start_4
    sget v13, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v14, 0x17

    if-gt v13, v14, :cond_15

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_15

    .line 150
    const-string/jumbo v2, "MediaCodecUtil"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x2e

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v12, "Skipping codec "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " (failed to query capabilities)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    .line 156
    :catch_1
    move-exception v1

    .line 157
    new-instance v2, Lcom/google/android/gms/internal/ads/zzlj;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzlj;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/dpd;)V

    throw v2

    .line 151
    :cond_15
    :try_start_5
    const-string/jumbo v1, "MediaCodecUtil"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x19

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Failed to query codec "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 154
    :cond_16
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_0
.end method

.method public static b()I
    .locals 9

    .prologue
    const v3, 0x65400

    const/16 v1, 0x6300

    const/4 v4, -0x1

    const v2, 0x18c00

    const/4 v0, 0x0

    .line 21
    sget v5, Lcom/google/android/gms/internal/ads/dpb;->g:I

    if-ne v5, v4, :cond_2

    .line 23
    const-string/jumbo v5, "video/avc"

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/ads/dpb;->a(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/doz;

    move-result-object v5

    .line 24
    if-eqz v5, :cond_1

    .line 25
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/doz;->a()[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-result-object v7

    array-length v8, v7

    move v5, v0

    move v6, v0

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v0, v7, v5

    .line 26
    iget v0, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 27
    sparse-switch v0, :sswitch_data_0

    move v0, v4

    .line 45
    :goto_1
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 46
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 28
    goto :goto_1

    :sswitch_1
    move v0, v1

    .line 29
    goto :goto_1

    :sswitch_2
    move v0, v2

    .line 30
    goto :goto_1

    :sswitch_3
    move v0, v2

    .line 31
    goto :goto_1

    :sswitch_4
    move v0, v2

    .line 32
    goto :goto_1

    .line 33
    :sswitch_5
    const v0, 0x31800

    goto :goto_1

    :sswitch_6
    move v0, v3

    .line 34
    goto :goto_1

    :sswitch_7
    move v0, v3

    .line 35
    goto :goto_1

    .line 36
    :sswitch_8
    const v0, 0xe1000

    goto :goto_1

    .line 37
    :sswitch_9
    const/high16 v0, 0x140000

    goto :goto_1

    .line 38
    :sswitch_a
    const/high16 v0, 0x200000

    goto :goto_1

    .line 39
    :sswitch_b
    const/high16 v0, 0x200000

    goto :goto_1

    .line 40
    :sswitch_c
    const/high16 v0, 0x220000

    goto :goto_1

    .line 41
    :sswitch_d
    const v0, 0x564000

    goto :goto_1

    .line 42
    :sswitch_e
    const/high16 v0, 0x900000

    goto :goto_1

    .line 43
    :sswitch_f
    const/high16 v0, 0x900000

    goto :goto_1

    .line 47
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    const v0, 0x54600

    :goto_2
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 48
    :cond_1
    sput v0, Lcom/google/android/gms/internal/ads/dpb;->g:I

    .line 49
    :cond_2
    sget v0, Lcom/google/android/gms/internal/ads/dpb;->g:I

    return v0

    .line 47
    :cond_3
    const v0, 0x2a300

    goto :goto_2

    .line 27
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_9
        0x800 -> :sswitch_a
        0x1000 -> :sswitch_b
        0x2000 -> :sswitch_c
        0x4000 -> :sswitch_d
        0x8000 -> :sswitch_e
        0x10000 -> :sswitch_f
    .end sparse-switch
.end method

.method private static declared-synchronized b(Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/ads/doz;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x15

    .line 4
    const-class v2, Lcom/google/android/gms/internal/ads/dpb;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/google/android/gms/internal/ads/dpb$a;

    invoke-direct {v3, p0, p1}, Lcom/google/android/gms/internal/ads/dpb$a;-><init>(Ljava/lang/String;Z)V

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/dpb;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 20
    :goto_0
    monitor-exit v2

    return-object v0

    .line 8
    :cond_0
    :try_start_1
    sget v0, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-lt v0, v4, :cond_3

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/dpf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/dpf;-><init>(Z)V

    .line 10
    :goto_1
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/dpb;->a(Lcom/google/android/gms/internal/ads/dpb$a;Lcom/google/android/gms/internal/ads/dpe;)Ljava/util/List;

    move-result-object v0

    .line 11
    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/google/android/gms/internal/ads/dsn;->a:I

    if-gt v4, v1, :cond_2

    sget v1, Lcom/google/android/gms/internal/ads/dsn;->a:I

    const/16 v4, 0x17

    if-gt v1, v4, :cond_2

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/dpg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dpg;-><init>(Lcom/google/android/gms/internal/ads/dpd;)V

    .line 13
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/dpb;->a(Lcom/google/android/gms/internal/ads/dpb$a;Lcom/google/android/gms/internal/ads/dpe;)Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    const-string/jumbo v4, "MediaCodecUtil"

    const/4 v0, 0x0

    .line 16
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/doz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/doz;->a:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "MediaCodecList API didn\'t list secure decoder for: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Assuming: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v1

    .line 18
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/ads/dpb;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 9
    :cond_3
    :try_start_2
    new-instance v0, Lcom/google/android/gms/internal/ads/dpg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dpg;-><init>(Lcom/google/android/gms/internal/ads/dpd;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
