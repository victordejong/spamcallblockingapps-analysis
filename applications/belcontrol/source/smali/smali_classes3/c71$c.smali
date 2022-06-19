.class public final Lc71$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc71;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:[Lc71$b;

.field public b:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lc71$c;->b:I

    const-string v0, "top_report"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Lc71$b;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lc71$b;-><init>(Lorg/json/JSONObject;Lc71$a;)V

    :cond_0
    const-string v0, "reports"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    new-array p1, v0, [Lc71$b;

    iput-object p1, p0, Lc71$c;->a:[Lc71$b;

    return-void

    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [Lc71$b;

    iput-object v1, p0, Lc71$c;->a:[Lc71$b;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lc71$c;->a:[Lc71$b;

    new-instance v4, Lc71$b;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lc71$b;-><init>(Lorg/json/JSONObject;Lc71$a;)V

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Lc71$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc71$c;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
