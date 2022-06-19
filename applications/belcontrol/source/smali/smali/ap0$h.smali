.class public final Lap0$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lwo0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lap0;->A(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/UUID;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lap0$h;->a:Ljava/util/UUID;

    iput-object p2, p0, Lap0$h;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lap0$h;->a:Ljava/util/UUID;

    invoke-static {v0, p1}, Lap0;->a(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lym0$b;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lap0$h;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "url"

    invoke-virtual {v0}, Lym0$b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "user_generated"

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p1

    new-instance v0, Lri0;

    const-string v1, "Unable to attach images"

    invoke-direct {v0, v1, p1}, Lri0;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
