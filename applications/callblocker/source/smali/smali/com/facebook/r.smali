.class public final Lcom/facebook/r;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/r;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/r;->a:Ljava/lang/String;

    .line 309
    new-instance v0, Lcom/facebook/r$2;

    invoke-direct {v0}, Lcom/facebook/r$2;-><init>()V

    sput-object v0, Lcom/facebook/r;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/r;->b:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/r;->c:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/r;->d:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/r;->e:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/r;->f:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 291
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/r;->g:Landroid/net/Uri;

    .line 292
    return-void

    .line 291
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/r$1;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/r;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-string/jumbo v0, "id"

    invoke-static {p1, v0}, Lcom/facebook/internal/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/facebook/r;->b:Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/facebook/r;->c:Ljava/lang/String;

    .line 143
    iput-object p3, p0, Lcom/facebook/r;->d:Ljava/lang/String;

    .line 144
    iput-object p4, p0, Lcom/facebook/r;->e:Ljava/lang/String;

    .line 145
    iput-object p5, p0, Lcom/facebook/r;->f:Ljava/lang/String;

    .line 146
    iput-object p6, p0, Lcom/facebook/r;->g:Landroid/net/Uri;

    .line 147
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/r;->b:Ljava/lang/String;

    .line 276
    const-string/jumbo v1, "first_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/r;->c:Ljava/lang/String;

    .line 277
    const-string/jumbo v1, "middle_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/r;->d:Ljava/lang/String;

    .line 278
    const-string/jumbo v1, "last_name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/r;->e:Ljava/lang/String;

    .line 279
    const-string/jumbo v1, "name"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/r;->f:Ljava/lang/String;

    .line 280
    const-string/jumbo v1, "link_uri"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    if-nez v1, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/facebook/r;->g:Landroid/net/Uri;

    .line 282
    return-void

    .line 281
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/facebook/r;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/facebook/t;->a()Lcom/facebook/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/t;->b()Lcom/facebook/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/r;)V
    .locals 1

    .prologue
    .line 75
    invoke-static {}, Lcom/facebook/t;->a()Lcom/facebook/t;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/t;->a(Lcom/facebook/r;)V

    .line 76
    return-void
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Lcom/facebook/a;->a()Lcom/facebook/a;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/facebook/a;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/r;->a(Lcom/facebook/r;)V

    .line 116
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/a;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/r$1;

    invoke-direct {v1}, Lcom/facebook/r$1;-><init>()V

    invoke-static {v0, v1}, Lcom/facebook/internal/x;->a(Ljava/lang/String;Lcom/facebook/internal/x$a;)V

    goto :goto_0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/facebook/r;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/r;->f:Ljava/lang/String;

    return-object v0
.end method

.method d()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 258
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 260
    :try_start_0
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/facebook/r;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string/jumbo v1, "first_name"

    iget-object v2, p0, Lcom/facebook/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    const-string/jumbo v1, "middle_name"

    iget-object v2, p0, Lcom/facebook/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string/jumbo v1, "last_name"

    iget-object v2, p0, Lcom/facebook/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string/jumbo v1, "name"

    iget-object v2, p0, Lcom/facebook/r;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    iget-object v1, p0, Lcom/facebook/r;->g:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 266
    const-string/jumbo v1, "link_uri"

    iget-object v2, p0, Lcom/facebook/r;->g:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    if-ne p0, p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    instance-of v2, p1, Lcom/facebook/r;

    if-nez v2, :cond_2

    move v0, v1

    .line 220
    goto :goto_0

    .line 223
    :cond_2
    check-cast p1, Lcom/facebook/r;

    .line 225
    iget-object v2, p0, Lcom/facebook/r;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/facebook/r;->c:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/facebook/r;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/facebook/r;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/r;->c:Ljava/lang/String;

    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/r;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/facebook/r;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/facebook/r;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/r;->d:Ljava/lang/String;

    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/facebook/r;->e:Ljava/lang/String;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/facebook/r;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/facebook/r;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/r;->e:Ljava/lang/String;

    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/facebook/r;->f:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/facebook/r;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/facebook/r;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/r;->f:Ljava/lang/String;

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/facebook/r;->g:Landroid/net/Uri;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/facebook/r;->g:Landroid/net/Uri;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/facebook/r;->g:Landroid/net/Uri;

    iget-object v1, p1, Lcom/facebook/r;->g:Landroid/net/Uri;

    .line 230
    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 235
    .line 237
    iget-object v0, p0, Lcom/facebook/r;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 238
    iget-object v1, p0, Lcom/facebook/r;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 239
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/r;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/facebook/r;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 242
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/r;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/facebook/r;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 245
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/r;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 247
    :cond_2
    iget-object v1, p0, Lcom/facebook/r;->f:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 248
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/r;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_3
    iget-object v1, p0, Lcom/facebook/r;->g:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 251
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/facebook/r;->g:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    :cond_4
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/facebook/r;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/facebook/r;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/facebook/r;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/facebook/r;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/facebook/r;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/facebook/r;->g:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/facebook/r;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
