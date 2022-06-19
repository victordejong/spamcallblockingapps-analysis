.class public final Lw61$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw61;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:J

.field public j:J

.field public k:I

.field public l:[I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "caller_type_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lw61$b;->k:I

    const-string v0, "phone_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lw61$b;->a:Ljava/lang/String;

    const-string v0, "spam_level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lw61$b;->b:I

    const-string v0, "spam_likely"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lw61$b;->g:I

    new-instance v0, Lu81;

    invoke-direct {v0}, Lu81;-><init>()V

    iget-object v1, p0, Lw61$b;->a:Ljava/lang/String;

    invoke-static {v1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v1

    const-string v2, "caller_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu81;->F(Li91;Ljava/lang/String;)Lu81;

    iget-object v0, v0, Lu81;->d:Ljava/lang/String;

    iput-object v0, p0, Lw61$b;->c:Ljava/lang/String;

    const-string v0, "caller_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lw61$b;->d:Ljava/lang/String;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lw61$b;->f:Ljava/lang/String;

    const-string v0, "complaints"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lw61$b;->h:J

    const-string v0, "blocking_stats"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lw61$b;->j:J

    const-string v0, "related_numbers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v0, p1, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lw61$b;->l:[I

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lw61$b;->l:[I

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lw61$b;->l:[I

    :cond_2
    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Lw61$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lw61$b;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a()Lw61$b;
    .locals 2

    new-instance v0, Lw61$b;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1}, Lw61$b;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
