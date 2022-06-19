.class public Lcom/criteo/publisher/h/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/criteo/publisher/logging/g;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/criteo/publisher/h/d;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/criteo/publisher/i/c;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/criteo/publisher/i/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/h/d;",
            ">;",
            "Lcom/criteo/publisher/i/c;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Lcom/criteo/publisher/h/c;

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/h/c;->a:Lcom/criteo/publisher/logging/g;

    .line 42
    iput-object p1, p0, Lcom/criteo/publisher/h/c;->b:Ljava/util/List;

    .line 43
    iput-object p2, p0, Lcom/criteo/publisher/h/c;->c:Lcom/criteo/publisher/i/c;

    return-void
.end method
