.class public Lcom/criteo/publisher/logging/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/g/a<",
            "Lcom/criteo/publisher/logging/d;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/g/a<",
            "Lcom/criteo/publisher/logging/d;",
            ">;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/criteo/publisher/logging/h;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/criteo/publisher/logging/g;"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/criteo/publisher/q;->a()Lcom/criteo/publisher/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/q;->A()Lcom/criteo/publisher/logging/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/criteo/publisher/logging/g;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/criteo/publisher/logging/g;

    iget-object v1, p0, Lcom/criteo/publisher/logging/h;->a:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/criteo/publisher/logging/g;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-object v0
.end method
