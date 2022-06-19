.class final Lcom/criteo/publisher/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/m;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/m;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/criteo/publisher/m$a;->a:Lcom/criteo/publisher/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/criteo/publisher/m$a;->a:Lcom/criteo/publisher/m;

    invoke-virtual {v0}, Lcom/criteo/publisher/m;->a()V

    .line 88
    iget-object v0, p0, Lcom/criteo/publisher/m$a;->a:Lcom/criteo/publisher/m;

    .line 1034
    iget-object v0, v0, Lcom/criteo/publisher/m;->a:Lcom/criteo/publisher/model/a0;

    .line 88
    invoke-virtual {v0}, Lcom/criteo/publisher/model/a0;->a()V

    return-void
.end method

.method public final a(Lcom/criteo/publisher/model/s;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/criteo/publisher/m$a;->a:Lcom/criteo/publisher/m;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/m;->a(Ljava/lang/String;)V

    return-void
.end method
