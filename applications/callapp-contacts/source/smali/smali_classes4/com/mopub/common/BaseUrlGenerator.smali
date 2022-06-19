.class public abstract Lcom/mopub/common/BaseUrlGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/mopub/common/AppEngineInfo;

.field private static d:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/StringBuilder;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/mopub/common/BaseUrlGenerator;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/mopub/common/BaseUrlGenerator;->b:Z

    const-string v0, "?"

    return-object v0

    :cond_0
    const-string v0, "&"

    return-object v0
.end method

.method public static setAppEngineInfo(Lcom/mopub/common/AppEngineInfo;)V
    .locals 0

    .line 206
    sput-object p0, Lcom/mopub/common/BaseUrlGenerator;->c:Lcom/mopub/common/AppEngineInfo;

    return-void
.end method

.method public static setWrapperVersion(Ljava/lang/String;)V
    .locals 0

    .line 215
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 217
    sput-object p0, Lcom/mopub/common/BaseUrlGenerator;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/view/WindowInsets;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 245
    iget v1, p2, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 246
    iget v0, p2, Landroid/graphics/Point;->y:I

    .line 248
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const-string v3, "ch"

    const-string v4, "cw"

    if-lt p2, v2, :cond_2

    if-eqz p3, :cond_2

    .line 250
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 251
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p2

    .line 252
    iget p3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v2

    sub-int/2addr p3, v2

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    sub-int/2addr p3, v2

    .line 253
    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p2}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p2

    sub-int/2addr v2, p2

    .line 255
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v4, p2}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 258
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v4, p2}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v3, p2}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "w"

    invoke-virtual {p0, p3, p2}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "h"

    invoke-virtual {p0, p2, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "v"

    .line 169
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/BaseUrlGenerator;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v0, p0, Lcom/mopub/common/BaseUrlGenerator;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object p1, p0, Lcom/mopub/common/BaseUrlGenerator;->a:Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object p1, p0, Lcom/mopub/common/BaseUrlGenerator;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "1"

    goto :goto_0

    :cond_1
    const-string p2, "0"

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mopub/network/Networking;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/mopub/common/BaseUrlGenerator;->a:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Lcom/mopub/common/BaseUrlGenerator;->b:Z

    return-void
.end method

.method protected final varargs a([Ljava/lang/String;)V
    .locals 3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 183
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_0
    aget-object p1, p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dn"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/mopub/common/BaseUrlGenerator;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "av"

    .line 173
    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 139
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/mopub/common/BaseUrlGenerator;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v0, p0, Lcom/mopub/common/BaseUrlGenerator;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object p1, p0, Lcom/mopub/common/BaseUrlGenerator;->a:Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object p1, p0, Lcom/mopub/common/BaseUrlGenerator;->a:Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected final c()V
    .locals 2

    const-string v0, "ifa"

    const-string v1, "mp_tmpl_advertising_id"

    .line 195
    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dnt"

    const-string v1, "mp_tmpl_do_not_track"

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tas"

    const-string v1, "mp_tmpl_tas"

    .line 197
    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mid"

    const-string v1, "mp_tmpl_mopub_id"

    .line 198
    invoke-virtual {p0, v0, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final d()V
    .locals 3

    .line 224
    sget-object v0, Lcom/mopub/common/BaseUrlGenerator;->c:Lcom/mopub/common/AppEngineInfo;

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, v0, Lcom/mopub/common/AppEngineInfo;->a:Ljava/lang/String;

    const-string v2, "e_name"

    invoke-virtual {p0, v2, v1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, v0, Lcom/mopub/common/AppEngineInfo;->b:Ljava/lang/String;

    const-string v1, "e_ver"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final e()V
    .locals 2

    .line 232
    sget-object v0, Lcom/mopub/common/BaseUrlGenerator;->d:Ljava/lang/String;

    const-string v1, "w_ver"

    invoke-virtual {p0, v1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract generateUrlString(Ljava/lang/String;)Ljava/lang/String;
.end method
