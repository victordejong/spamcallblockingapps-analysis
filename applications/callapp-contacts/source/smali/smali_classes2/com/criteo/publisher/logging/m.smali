.class public final Lcom/criteo/publisher/logging/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/f/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/criteo/publisher/f/b<",
        "Lcom/criteo/publisher/logging/RemoteLogRecords;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/m0/g;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/m0/g;)V
    .locals 1

    const-string v0, "buildConfigWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/logging/m;->b:Lcom/criteo/publisher/m0/g;

    .line 29
    const-class p1, Lcom/criteo/publisher/logging/RemoteLogRecords;

    iput-object p1, p0, Lcom/criteo/publisher/logging/m;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x3e800

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .line 28
    invoke-static {}, Lcom/criteo/publisher/m0/g;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildConfigWrapper.remoteLogQueueFilename"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/criteo/publisher/logging/m;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public final d()I
    .locals 1

    const/16 v0, 0x1388

    return v0
.end method
