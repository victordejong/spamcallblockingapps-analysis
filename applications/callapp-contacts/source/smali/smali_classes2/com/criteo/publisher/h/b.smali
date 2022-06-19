.class public final Lcom/criteo/publisher/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/h/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/h/b$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/m0/c;

.field private final b:Lcom/criteo/publisher/m0/k;

.field private final c:Lcom/criteo/publisher/logging/g;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/m0/c;Lcom/criteo/publisher/m0/k;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/h/b;->c:Lcom/criteo/publisher/logging/g;

    .line 77
    iput-object p1, p0, Lcom/criteo/publisher/h/b;->a:Lcom/criteo/publisher/m0/c;

    .line 78
    iput-object p2, p0, Lcom/criteo/publisher/h/b;->b:Lcom/criteo/publisher/m0/k;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 209
    invoke-static {p0}, Lcom/criteo/publisher/m0/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "UTF-8"

    .line 213
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v0, 0x2

    .line 214
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 217
    :try_start_0
    invoke-static {p0}, Lcom/criteo/publisher/h/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/criteo/publisher/h/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 219
    invoke-static {p0}, Lcom/criteo/publisher/m0/o;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 202
    invoke-static {p2}, Lcom/criteo/publisher/m0/s;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    invoke-static {p2}, Lcom/criteo/publisher/h/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/criteo/publisher/h/b$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 227
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/criteo/publisher/i/a;
    .locals 1

    .line 89
    sget-object v0, Lcom/criteo/publisher/i/a;->h:Lcom/criteo/publisher/i/a;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/criteo/publisher/m0/a;Lcom/criteo/publisher/model/s;)V
    .locals 6

    .line 2244
    instance-of v0, p1, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    new-instance v0, Lcom/criteo/publisher/h/b$b;

    check-cast p1, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/criteo/publisher/h/b$b;-><init>(Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;Lcom/criteo/publisher/h/b$a;)V

    .line 110
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "crt_cpm"

    invoke-virtual {v0, v1, p1}, Lcom/criteo/publisher/h/b$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object p1, Lcom/criteo/publisher/h/b$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const-string p2, "crt_size"

    const-string v1, "crt_displayurl"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_8

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq p1, v3, :cond_2

    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    .line 3164
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->g()Lcom/criteo/publisher/model/b0/n;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 3169
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->n()Lcom/criteo/publisher/model/b0/r;

    move-result-object p2

    .line 3170
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/r;->g()Ljava/lang/String;

    move-result-object p3

    const-string v1, "crtn_title"

    invoke-direct {p0, v0, p3, v1}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3171
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/r;->c()Ljava/lang/String;

    move-result-object p3

    const-string v1, "crtn_desc"

    invoke-direct {p0, v0, p3, v1}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3172
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/r;->f()Ljava/lang/String;

    move-result-object p3

    const-string v1, "crtn_price"

    invoke-direct {p0, v0, p3, v1}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3173
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/r;->b()Ljava/net/URI;

    move-result-object p3

    invoke-virtual {p3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "crtn_clickurl"

    invoke-direct {p0, v0, p3, v1}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3174
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/r;->a()Ljava/lang/String;

    move-result-object p3

    const-string v1, "crtn_cta"

    invoke-direct {p0, v0, p3, v1}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/r;->e()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_imageurl"

    invoke-direct {p0, v0, p2, p3}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3178
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->c()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_advname"

    invoke-direct {p0, v0, p2, p3}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->d()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_advdomain"

    invoke-direct {p0, v0, p2, p3}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3180
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->f()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_advlogourl"

    invoke-direct {p0, v0, p2, p3}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->e()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_advurl"

    invoke-direct {p0, v0, p2, p3}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3184
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->l()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_prurl"

    invoke-direct {p0, v0, p2, p3}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3185
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->m()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_primageurl"

    invoke-direct {p0, v0, p2, p3}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3186
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->k()Ljava/lang/String;

    move-result-object p2

    const-string p3, "crtn_prtext"

    invoke-direct {p0, v0, p2, p3}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 3189
    invoke-virtual {p1}, Lcom/criteo/publisher/model/b0/n;->g()Ljava/util/List;

    move-result-object p1

    .line 3190
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_1

    .line 3191
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v1, "crtn_pixurl_"

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, v0, p2, p3}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3194
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "crtn_pixcount"

    invoke-virtual {v0, p2, p1}, Lcom/criteo/publisher/h/b$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 118
    :cond_2
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, v1}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 4141
    iget-object p1, p0, Lcom/criteo/publisher/h/b;->a:Lcom/criteo/publisher/m0/c;

    invoke-virtual {p1}, Lcom/criteo/publisher/m0/c;->a()I

    move-result p1

    if-ne p1, v2, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 4143
    :goto_1
    iget-object v1, p0, Lcom/criteo/publisher/h/b;->b:Lcom/criteo/publisher/m0/k;

    .line 5048
    invoke-virtual {v1}, Lcom/criteo/publisher/m0/k;->a()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 5049
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5050
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x44160000    # 600.0f

    mul-float v1, v1, v5

    int-to-float v3, v3

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_6

    const/16 v1, 0x400

    const/16 v2, 0x300

    if-eqz p1, :cond_5

    .line 4148
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->k()I

    move-result v3

    if-lt v3, v2, :cond_5

    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->e()I

    move-result v3

    if-lt v3, v1, :cond_5

    const-string p1, "768x1024"

    goto :goto_3

    :cond_5
    if-nez p1, :cond_6

    .line 4150
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->k()I

    move-result v3

    if-lt v3, v1, :cond_6

    .line 4151
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->e()I

    move-result p3

    if-lt p3, v2, :cond_6

    const-string p1, "1024x768"

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    const-string p1, "320x480"

    goto :goto_3

    :cond_7
    const-string p1, "480x320"

    .line 119
    :goto_3
    invoke-virtual {v0, p2, p1}, Lcom/criteo/publisher/h/b$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 114
    :cond_8
    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, v1}, Lcom/criteo/publisher/h/b;->a(Lcom/criteo/publisher/h/b$b;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->k()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/criteo/publisher/model/s;->e()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lcom/criteo/publisher/h/b$b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/criteo/publisher/h/b;->c:Lcom/criteo/publisher/logging/g;

    .line 5089
    sget-object p2, Lcom/criteo/publisher/i/a;->h:Lcom/criteo/publisher/i/a;

    .line 5265
    iget-object p3, v0, Lcom/criteo/publisher/h/b$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 126
    invoke-static {p2, p3}, Lcom/criteo/publisher/h/a;->a(Lcom/criteo/publisher/i/a;Ljava/lang/String;)Lcom/criteo/publisher/logging/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 1244
    instance-of p1, p1, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    return p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
