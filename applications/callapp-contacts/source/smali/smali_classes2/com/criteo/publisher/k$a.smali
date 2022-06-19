.class final Lcom/criteo/publisher/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/k;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/k;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/criteo/publisher/k$a;->a:Lcom/criteo/publisher/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/criteo/publisher/k$a;->a:Lcom/criteo/publisher/k;

    sget-object v1, Lcom/criteo/publisher/o;->b:Lcom/criteo/publisher/o;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/k;->a(Lcom/criteo/publisher/o;)V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/criteo/publisher/k$a;->a:Lcom/criteo/publisher/k;

    sget-object v1, Lcom/criteo/publisher/o;->a:Lcom/criteo/publisher/o;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/k;->a(Lcom/criteo/publisher/o;)V

    .line 75
    iget-object v0, p0, Lcom/criteo/publisher/k$a;->a:Lcom/criteo/publisher/k;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/k;->a(Ljava/lang/String;)V

    return-void
.end method
