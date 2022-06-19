.class public Ll5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lb0/a;


# direct methods
.method public constructor <init>(Lb0/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll5/e;->a:Lb0/a;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lm5/e;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "settings_version"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Ll5/a;

    invoke-direct {v0}, Ll5/a;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ll5/g;

    invoke-direct {v0}, Ll5/g;-><init>()V

    .line 4
    :goto_0
    iget-object v1, p0, Ll5/e;->a:Lb0/a;

    invoke-interface {v0, v1, p1}, Ll5/f;->a(Lb0/a;Lorg/json/JSONObject;)Lm5/e;

    move-result-object p1

    return-object p1
.end method
