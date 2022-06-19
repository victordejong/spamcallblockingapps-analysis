.class Lcom/facebook/k$g;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Lcom/facebook/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Lcom/facebook/internal/r;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/r;Z)V
    .locals 1

    .prologue
    .line 2041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/k$g;->c:Z

    .line 2039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/k$g;->d:Z

    .line 2042
    iput-object p1, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    .line 2043
    iput-object p2, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    .line 2044
    iput-boolean p3, p0, Lcom/facebook/k$g;->d:Z

    .line 2045
    return-void
.end method

.method private b()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 2080
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "value is not a supported type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 2205
    iget-boolean v0, p0, Lcom/facebook/k$g;->d:Z

    if-nez v0, :cond_0

    .line 2206
    const-string/jumbo v0, "--%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/facebook/k;->m()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/k$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2210
    :goto_0
    return-void

    .line 2208
    :cond_0
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    const-string/jumbo v1, "&"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 2123
    const-string/jumbo v0, "image/png"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/k$g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2125
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2126
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/k$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2127
    invoke-virtual {p0}, Lcom/facebook/k$g;->a()V

    .line 2128
    iget-object v0, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2131
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2147
    if-nez p3, :cond_0

    .line 2148
    const-string/jumbo p3, "content/unknown"

    .line 2150
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/k$g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2153
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/u;

    if-eqz v0, :cond_2

    .line 2155
    invoke-static {p2}, Lcom/facebook/internal/x;->d(Landroid/net/Uri;)J

    move-result-wide v2

    .line 2157
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/u;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/u;->a(J)V

    move v0, v1

    .line 2166
    :goto_0
    const-string/jumbo v2, ""

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/k$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2167
    invoke-virtual {p0}, Lcom/facebook/k$g;->a()V

    .line 2168
    iget-object v2, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    if-eqz v2, :cond_1

    .line 2169
    iget-object v2, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v5, "<Data: %d>"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 2171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2169
    invoke-virtual {v2, v3, v0}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2173
    :cond_1
    return-void

    .line 2160
    :cond_2
    invoke-static {}, Lcom/facebook/j;->h()Landroid/content/Context;

    move-result-object v0

    .line 2161
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2162
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 2163
    iget-object v2, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    invoke-static {v0, v2}, Lcom/facebook/internal/x;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2180
    if-nez p3, :cond_0

    .line 2181
    const-string/jumbo p3, "content/unknown"

    .line 2183
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/k$g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/u;

    if-eqz v0, :cond_2

    .line 2189
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/u;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/u;->a(J)V

    move v0, v1

    .line 2195
    :goto_0
    const-string/jumbo v2, ""

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/facebook/k$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2196
    invoke-virtual {p0}, Lcom/facebook/k$g;->a()V

    .line 2197
    iget-object v2, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    if-eqz v2, :cond_1

    .line 2198
    iget-object v2, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v5, "<Data: %d>"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 2200
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2198
    invoke-virtual {v2, v3, v0}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2202
    :cond_1
    return-void

    .line 2191
    :cond_2
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 2193
    iget-object v2, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    invoke-static {v0, v2}, Lcom/facebook/internal/x;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/k;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2048
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/w;

    if-eqz v0, :cond_0

    .line 2049
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/w;

    invoke-interface {v0, p3}, Lcom/facebook/w;->a(Lcom/facebook/k;)V

    .line 2052
    :cond_0
    invoke-static {p2}, Lcom/facebook/k;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2053
    invoke-static {p2}, Lcom/facebook/k;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/k$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    :goto_0
    return-void

    .line 2054
    :cond_1
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 2055
    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/k$g;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2056
    :cond_2
    instance-of v0, p2, [B

    if-eqz v0, :cond_3

    .line 2057
    check-cast p2, [B

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/facebook/k$g;->a(Ljava/lang/String;[B)V

    goto :goto_0

    .line 2058
    :cond_3
    instance-of v0, p2, Landroid/net/Uri;

    if-eqz v0, :cond_4

    .line 2059
    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/k$g;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 2060
    :cond_4
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_5

    .line 2061
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, p2, v1}, Lcom/facebook/k$g;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2062
    :cond_5
    instance-of v0, p2, Lcom/facebook/k$f;

    if-eqz v0, :cond_8

    .line 2063
    check-cast p2, Lcom/facebook/k$f;

    .line 2065
    invoke-virtual {p2}, Lcom/facebook/k$f;->b()Landroid/os/Parcelable;

    move-result-object v0

    .line 2066
    invoke-virtual {p2}, Lcom/facebook/k$f;->a()Ljava/lang/String;

    move-result-object v1

    .line 2067
    instance-of v2, v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_6

    .line 2068
    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/k$g;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto :goto_0

    .line 2069
    :cond_6
    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_7

    .line 2070
    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/k$g;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 2072
    :cond_7
    invoke-direct {p0}, Lcom/facebook/k$g;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2075
    :cond_8
    invoke-direct {p0}, Lcom/facebook/k$g;->b()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2114
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/k$g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    const-string/jumbo v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/k$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2116
    invoke-virtual {p0}, Lcom/facebook/k$g;->a()V

    .line 2117
    iget-object v0, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    if-eqz v0, :cond_0

    .line 2118
    iget-object v0, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2120
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2217
    iget-boolean v0, p0, Lcom/facebook/k$g;->d:Z

    if-nez v0, :cond_2

    .line 2218
    const-string/jumbo v0, "Content-Disposition: form-data; name=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/k$g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2219
    if-eqz p2, :cond_0

    .line 2220
    const-string/jumbo v0, "; filename=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/facebook/k$g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2222
    :cond_0
    const-string/jumbo v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/k$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2223
    if-eqz p3, :cond_1

    .line 2224
    const-string/jumbo v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Content-Type"

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/facebook/k$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2226
    :cond_1
    const-string/jumbo v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/k$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2230
    :goto_0
    return-void

    .line 2228
    :cond_2
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    const-string/jumbo v1, "%s="

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 2088
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/w;

    if-nez v0, :cond_1

    .line 2089
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/k$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    :cond_0
    :goto_0
    return-void

    .line 2093
    :cond_1
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/w;

    .line 2094
    invoke-virtual {p0, p1, v1, v1}, Lcom/facebook/k$g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    const-string/jumbo v1, "["

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/k$g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2097
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/k;

    .line 2098
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 2099
    invoke-interface {v0, v1}, Lcom/facebook/w;->a(Lcom/facebook/k;)V

    .line 2100
    if-lez v2, :cond_2

    .line 2101
    const-string/jumbo v1, ",%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-virtual {p0, v1, v6}, Lcom/facebook/k$g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2105
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    .line 2106
    goto :goto_1

    .line 2103
    :cond_2
    const-string/jumbo v1, "%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-virtual {p0, v1, v6}, Lcom/facebook/k$g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2107
    :cond_3
    const-string/jumbo v0, "]"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/k$g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2108
    iget-object v0, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2134
    const-string/jumbo v0, "content/unknown"

    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/k$g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2135
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 2136
    const-string/jumbo v0, ""

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/k$g;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2137
    invoke-virtual {p0}, Lcom/facebook/k$g;->a()V

    .line 2138
    iget-object v0, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    if-eqz v0, :cond_0

    .line 2139
    iget-object v0, p0, Lcom/facebook/k$g;->b:Lcom/facebook/internal/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string/jumbo v3, "<Data: %d>"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    array-length v5, p2

    .line 2141
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2139
    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/r;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2143
    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 2233
    iget-boolean v0, p0, Lcom/facebook/k$g;->d:Z

    if-nez v0, :cond_1

    .line 2234
    iget-boolean v0, p0, Lcom/facebook/k$g;->c:Z

    if-eqz v0, :cond_0

    .line 2236
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    const-string/jumbo v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2237
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    invoke-static {}, Lcom/facebook/k;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2238
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    const-string/jumbo v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/k$g;->c:Z

    .line 2241
    :cond_0
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2247
    :goto_0
    return-void

    .line 2243
    :cond_1
    iget-object v0, p0, Lcom/facebook/k$g;->a:Ljava/io/OutputStream;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2245
    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    .line 2244
    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2245
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 2243
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2250
    invoke-virtual {p0, p1, p2}, Lcom/facebook/k$g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2251
    iget-boolean v0, p0, Lcom/facebook/k$g;->d:Z

    if-nez v0, :cond_0

    .line 2252
    const-string/jumbo v0, "\r\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/k$g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2254
    :cond_0
    return-void
.end method
