.class public final Ln61$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln61;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "phone_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln61$b;->a:Ljava/lang/String;

    new-instance v0, Lu81;

    invoke-direct {v0}, Lu81;-><init>()V

    iget-object v1, p0, Ln61$b;->a:Ljava/lang/String;

    invoke-static {v1}, Lfa1$e;->o(Ljava/lang/String;)Li91;

    move-result-object v1

    const-string v2, "caller_name"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu81;->F(Li91;Ljava/lang/String;)Lu81;

    iget-object v0, v0, Lu81;->d:Ljava/lang/String;

    iput-object v0, p0, Ln61$b;->b:Ljava/lang/String;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ln61$b;->c:Ljava/lang/String;

    const-string v0, "spam_level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ln61$b;->d:I

    const-string v0, "spam_likely"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ln61$b;->f:I

    const-string v0, "caller_type_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ln61$b;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lorg/json/JSONObject;Ln61$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ln61$b;-><init>(Lorg/json/JSONObject;)V

    return-void
.end method
