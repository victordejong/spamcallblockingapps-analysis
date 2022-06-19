.class public Laf1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Z

.field public b:Z

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laf1;->a:Z

    iput-boolean v0, p0, Laf1;->b:Z

    const/16 v0, 0xc8

    iput v0, p0, Laf1;->c:I

    invoke-virtual {p0, p1}, Laf1;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Laf1;->c:I

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Laf1;->b:Z

    return v0
.end method

.method public final c(Lorg/json/JSONObject;)Z
    .locals 6

    const-string v0, "ob"

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3

    :catch_0
    return v1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Laf1;->a:Z

    return v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    const-string v0, "in"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "sa"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "4724e28a731f8ba73e9eecc4d5c807705dd80963"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "on"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0, v1}, Laf1;->c(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Laf1;->a:Z

    iput-boolean v2, p0, Laf1;->b:Z

    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    const/16 v0, 0x3e8

    if-gt p1, v0, :cond_2

    iput p1, p0, Laf1;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Laf1;->a:Z

    iput-boolean p1, p0, Laf1;->b:Z

    const/16 p1, 0xc8

    iput p1, p0, Laf1;->c:I

    :cond_2
    :goto_0
    return-void
.end method
