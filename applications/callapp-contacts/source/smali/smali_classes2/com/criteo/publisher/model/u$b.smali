.class Lcom/criteo/publisher/model/u$b;
.super Lcom/criteo/publisher/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/model/u;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/model/u;Ljava/lang/Runnable;)V
    .locals 0

    .line 78
    iput-object p2, p0, Lcom/criteo/publisher/model/u$b;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/criteo/publisher/v;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/criteo/publisher/model/u$b;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
