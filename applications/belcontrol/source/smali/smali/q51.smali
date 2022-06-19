.class public Lq51;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ll51$b;


# instance fields
.field public a:Lorg/json/JSONObject;

.field public final b:Lm51;


# direct methods
.method public constructor <init>(Lm51;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq51;->b:Lm51;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lq51;->a:Lorg/json/JSONObject;

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lq51;->a:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lq51;->b:Lm51;

    new-instance v1, Ln51;

    invoke-direct {v1, p0}, Ln51;-><init>(Ll51$b;)V

    invoke-virtual {v0, v1}, Lm51;->c(Ll51;)V

    return-void
.end method

.method public d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lq51;->b:Lm51;

    new-instance v7, Lp51;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lp51;-><init>(Ll51$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lm51;->c(Ll51;)V

    return-void
.end method

.method public e(Lorg/json/JSONObject;Ljava/util/HashSet;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lq51;->b:Lm51;

    new-instance v7, Lo51;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lo51;-><init>(Ll51$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v7}, Lm51;->c(Ll51;)V

    return-void
.end method
