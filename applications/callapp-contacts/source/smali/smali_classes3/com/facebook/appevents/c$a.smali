.class Lcom/facebook/appevents/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p1, p0, Lcom/facebook/appevents/c$a;->a:Ljava/lang/String;

    .line 238
    iput-boolean p2, p0, Lcom/facebook/appevents/c$a;->b:Z

    .line 239
    iput-boolean p3, p0, Lcom/facebook/appevents/c$a;->c:Z

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 243
    new-instance v6, Lcom/facebook/appevents/c;

    iget-object v1, p0, Lcom/facebook/appevents/c$a;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/appevents/c$a;->b:Z

    iget-boolean v3, p0, Lcom/facebook/appevents/c$a;->c:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/appevents/c;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/facebook/appevents/c$1;)V

    return-object v6
.end method
