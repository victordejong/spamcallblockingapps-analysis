.class Lcom/criteo/publisher/s$b;
.super Lcom/criteo/publisher/model/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 105
    new-instance v0, Lcom/criteo/publisher/e/c;

    invoke-direct {v0}, Lcom/criteo/publisher/e/c;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/criteo/publisher/model/u;-><init>(Landroid/content/Context;Lcom/criteo/publisher/e/c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/criteo/publisher/s$a;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/criteo/publisher/s$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    .line 111
    invoke-static {v0}, Lcom/criteo/publisher/m0/h;->a(Ljava/lang/Object;)Lcom/criteo/publisher/m0/h;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 0

    return-void
.end method
