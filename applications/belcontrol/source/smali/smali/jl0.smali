.class public final Ljl0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static d:Lorg/json/JSONObject; = null

.field public static e:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)[F
    .locals 5

    sget-boolean v0, Ljl0;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x1e

    new-array v0, v0, [F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "view"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "screenname"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v2, v3}, Ljl0;->j(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    invoke-static {v2}, Ljl0;->i(Lorg/json/JSONObject;)[F

    move-result-object v4

    invoke-static {v0, v4}, Ljl0;->m([F[F)V

    invoke-static {v2}, Ljl0;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v3, p0, v1, p1}, Ljl0;->h(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F

    move-result-object p0

    invoke-static {v0, p0}, Ljl0;->m([F[F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "is_interacted"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    const-string v1, "childviews"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ljl0;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " | "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/io/File;)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Ljl0;->d:Lorg/json/JSONObject;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljl0;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Ljl0;->a:Ljava/util/Map;

    const-string v0, "ENGLISH"

    const-string v1, "1"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->a:Ljava/util/Map;

    const-string v0, "GERMAN"

    const-string v2, "2"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->a:Ljava/util/Map;

    const-string v0, "SPANISH"

    const-string v3, "3"

    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->a:Ljava/util/Map;

    const-string v0, "JAPANESE"

    const-string v4, "4"

    invoke-interface {p0, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Ljl0;->b:Ljava/util/Map;

    const-string v0, "VIEW_CONTENT"

    const-string v5, "0"

    invoke-interface {p0, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->b:Ljava/util/Map;

    const-string v0, "SEARCH"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->b:Ljava/util/Map;

    const-string v0, "ADD_TO_CART"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->b:Ljava/util/Map;

    const-string v0, "ADD_TO_WISHLIST"

    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->b:Ljava/util/Map;

    const-string v0, "INITIATE_CHECKOUT"

    invoke-interface {p0, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->b:Ljava/util/Map;

    const-string v0, "ADD_PAYMENT_INFO"

    const-string v5, "5"

    invoke-interface {p0, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->b:Ljava/util/Map;

    const-string v0, "PURCHASE"

    const-string v5, "6"

    invoke-interface {p0, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->b:Ljava/util/Map;

    const-string v0, "LEAD"

    const-string v5, "7"

    invoke-interface {p0, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->b:Ljava/util/Map;

    const-string v0, "COMPLETE_REGISTRATION"

    const-string v5, "8"

    invoke-interface {p0, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Ljl0;->c:Ljava/util/Map;

    const-string v0, "BUTTON_TEXT"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->c:Ljava/util/Map;

    const-string v0, "PAGE_TITLE"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->c:Ljava/util/Map;

    const-string v0, "RESOLVED_DOCUMENT_LINK"

    invoke-interface {p0, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ljl0;->c:Ljava/util/Map;

    const-string v0, "BUTTON_ID"

    invoke-interface {p0, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    sput-boolean p0, Ljl0;->e:Z

    :catch_0
    return-void
.end method

.method public static e(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "classtypebitmask"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f()Z
    .locals 1

    sget-boolean v0, Ljl0;->e:Z

    return v0
.end method

.method public static g([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, p1, v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static h(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F
    .locals 8

    const/16 v0, 0x1e

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-float v2, v2

    const/4 v4, 0x3

    aput v2, v0, v4

    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Ljl0;->e(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x9

    aget v5, v0, v4

    add-float/2addr v5, v2

    aput v5, v0, v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    nop

    :cond_2
    const/16 p1, 0xd

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, p1

    const/16 p1, 0xe

    aput v3, v0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x7c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2, p4}, Ljl0;->n(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 p4, 0xf

    const-string v3, "ENGLISH"

    const-string v4, "COMPLETE_REGISTRATION"

    const-string v5, "BUTTON_TEXT"

    invoke-static {v3, v4, v5, p2}, Ljl0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    aput v6, v0, p4

    const/16 p4, 0x10

    const-string v6, "PAGE_TITLE"

    invoke-static {v3, v4, v6, p1}, Ljl0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    aput v7, v0, p4

    const/16 p4, 0x11

    const-string v7, "BUTTON_ID"

    invoke-static {v3, v4, v7, p0}, Ljl0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_5
    const/4 p0, 0x0

    :goto_4
    aput p0, v0, p4

    const/16 p0, 0x12

    const-string p4, "password"

    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_6

    const/high16 p4, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_6
    const/4 p4, 0x0

    :goto_5
    aput p4, v0, p0

    const/16 p0, 0x13

    const-string p4, "(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)"

    invoke-static {p4, p3}, Ljl0;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    const/high16 p4, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_7
    const/4 p4, 0x0

    :goto_6
    aput p4, v0, p0

    const/16 p0, 0x14

    const-string p4, "(?i)(sign in)|login|signIn"

    invoke-static {p4, p3}, Ljl0;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_8

    const/high16 p4, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_8
    const/4 p4, 0x0

    :goto_7
    aput p4, v0, p0

    const/16 p0, 0x15

    const-string p4, "(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)"

    invoke-static {p4, p3}, Ljl0;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_9
    const/4 p3, 0x0

    :goto_8
    aput p3, v0, p0

    const/16 p0, 0x16

    const-string p3, "PURCHASE"

    invoke-static {v3, p3, v5, p2}, Ljl0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    const/high16 p4, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_a
    const/4 p4, 0x0

    :goto_9
    aput p4, v0, p0

    const/16 p0, 0x18

    invoke-static {v3, p3, v6, p1}, Ljl0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_b
    const/4 p3, 0x0

    :goto_a
    aput p3, v0, p0

    const/16 p0, 0x19

    const-string p3, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart"

    invoke-static {p3, p2}, Ljl0;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_c
    const/4 p3, 0x0

    :goto_b
    aput p3, v0, p0

    const/16 p0, 0x1b

    const-string p3, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy"

    invoke-static {p3, p1}, Ljl0;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_d
    const/4 p3, 0x0

    :goto_c
    aput p3, v0, p0

    const/16 p0, 0x1c

    const-string p3, "LEAD"

    invoke-static {v3, p3, v5, p2}, Ljl0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_d

    :cond_e
    const/4 p2, 0x0

    :goto_d
    aput p2, v0, p0

    const/16 p0, 0x1d

    invoke-static {v3, p3, v6, p1}, Ljl0;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_f
    aput v1, v0, p0

    return-object v0
.end method

.method public static i(Lorg/json/JSONObject;)[F
    .locals 13

    const/16 v0, 0x1e

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    const-string v1, "text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hint"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "classname"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "inputtype"

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v8, 0x1

    aput-object v2, v6, v8

    const-string v2, "$"

    const-string v9, "amount"

    const-string v10, "price"

    const-string v11, "total"

    filled-new-array {v2, v9, v10, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ljl0;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_0

    aget v2, v0, v7

    float-to-double v11, v2

    add-double/2addr v11, v9

    double-to-float v2, v11

    aput v2, v0, v7

    :cond_0
    const-string v2, "password"

    const-string v11, "pwd"

    filled-new-array {v2, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ljl0;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget v2, v0, v8

    float-to-double v11, v2

    add-double/2addr v11, v9

    double-to-float v2, v11

    aput v2, v0, v8

    :cond_1
    const-string v2, "tel"

    const-string v11, "phone"

    filled-new-array {v2, v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ljl0;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    aget v2, v0, v5

    float-to-double v11, v2

    add-double/2addr v11, v9

    double-to-float v2, v11

    aput v2, v0, v5

    :cond_2
    const-string v2, "search"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Ljl0;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    aget v6, v0, v2

    float-to-double v11, v6

    add-double/2addr v11, v9

    double-to-float v6, v11

    aput v6, v0, v2

    :cond_3
    if-ltz v4, :cond_4

    const/4 v2, 0x5

    aget v6, v0, v2

    float-to-double v11, v6

    add-double/2addr v11, v9

    double-to-float v6, v11

    aput v6, v0, v2

    :cond_4
    const/4 v2, 0x3

    if-eq v4, v2, :cond_5

    if-ne v4, v5, :cond_6

    :cond_5
    const/4 v2, 0x6

    aget v5, v0, v2

    float-to-double v5, v5

    add-double/2addr v5, v9

    double-to-float v5, v5

    aput v5, v0, v2

    :cond_6
    const/16 v2, 0x20

    if-eq v4, v2, :cond_7

    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    const/4 v2, 0x7

    aget v4, v0, v2

    float-to-double v4, v4

    add-double/2addr v4, v9

    double-to-float v4, v4

    aput v4, v0, v2

    :cond_8
    const-string v2, "checkbox"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x8

    aget v4, v0, v2

    float-to-double v4, v4

    add-double/2addr v4, v9

    double-to-float v4, v4

    aput v4, v0, v2

    :cond_9
    const-string v2, "complete"

    const-string v4, "confirm"

    const-string v5, "done"

    const-string v6, "submit"

    filled-new-array {v2, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/String;

    aput-object v1, v4, v7

    invoke-static {v2, v4}, Ljl0;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    aget v2, v0, v1

    float-to-double v4, v2

    add-double/2addr v4, v9

    double-to-float v2, v4

    aput v2, v0, v1

    :cond_a
    const-string v1, "radio"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "button"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    aget v2, v0, v1

    float-to-double v2, v2

    add-double/2addr v2, v9

    double-to-float v2, v2

    aput v2, v0, v1

    :cond_b
    :try_start_0
    const-string v1, "childviews"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v7, v1, :cond_c

    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Ljl0;->i(Lorg/json/JSONObject;)[F

    move-result-object v2

    invoke-static {v0, v2}, Ljl0;->m([F[F)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    :cond_c
    return-object v0
.end method

.method public static j(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .locals 9

    const-string v0, "childviews"

    const-string v1, "is_interacted"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_1
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    if-eqz v1, :cond_3

    const/4 p0, 0x0

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p0, v0, :cond_6

    invoke-virtual {v3, p0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_5

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7, p1}, Ljl0;->j(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v5, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return v5

    :catch_0
    return v2
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Ljl0;->d:Lorg/json/JSONObject;

    const-string v1, "rulesForLanguage"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    sget-object v1, Ljl0;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "rulesForEvent"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    sget-object v0, Ljl0;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "positiveRules"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    sget-object p1, Ljl0;->c:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Ljl0;->k(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static m([F[F)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    add-float/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static n(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 4

    const-string v0, "text"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "hint"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "childviews"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {p0, p1, p2}, Ljl0;->n(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
