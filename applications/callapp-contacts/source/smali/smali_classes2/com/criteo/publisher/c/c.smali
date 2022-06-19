.class public Lcom/criteo/publisher/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/c/a;


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/logging/n;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/logging/n;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lcom/criteo/publisher/c/c;

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->a(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/c/c;->a:Lcom/criteo/publisher/logging/g;

    .line 39
    iput-object p1, p0, Lcom/criteo/publisher/c/c;->b:Lcom/criteo/publisher/logging/n;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/criteo/publisher/c/c;->a:Lcom/criteo/publisher/logging/g;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onSdkInitialized"

    invoke-virtual {v0, v2, v1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/criteo/publisher/c/c;->b:Lcom/criteo/publisher/logging/n;

    invoke-virtual {v0}, Lcom/criteo/publisher/logging/n;->a()V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/n;Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 65
    iget-object p1, p0, Lcom/criteo/publisher/c/c;->a:Lcom/criteo/publisher/logging/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "onBidConsumed: %s"

    invoke-virtual {p1, p2, v0}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/o;)V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/criteo/publisher/c/c;->a:Lcom/criteo/publisher/logging/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onCdbCallStarted: %s"

    invoke-virtual {v0, p1, v1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/o;Lcom/criteo/publisher/model/r;)V
    .locals 2

    .line 55
    iget-object p1, p0, Lcom/criteo/publisher/c/c;->a:Lcom/criteo/publisher/logging/g;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "onCdbCallFinished: %s"

    invoke-virtual {p1, p2, v0}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/o;Ljava/lang/Exception;)V
    .locals 1

    .line 60
    iget-object p1, p0, Lcom/criteo/publisher/c/c;->a:Lcom/criteo/publisher/logging/g;

    const-string v0, "onCdbCallFailed"

    invoke-virtual {p1, v0, p2}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/s;)V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/criteo/publisher/c/c;->a:Lcom/criteo/publisher/logging/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onBidCached: %s"

    invoke-virtual {v0, p1, v1}, Lcom/criteo/publisher/logging/g;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
