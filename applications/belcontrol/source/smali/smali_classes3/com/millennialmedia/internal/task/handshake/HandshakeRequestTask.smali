.class public Lcom/millennialmedia/internal/task/handshake/HandshakeRequestTask;
.super Lcom/millennialmedia/internal/task/ThreadTask;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "HandshakeRequestTask"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/task/ThreadTask;-><init>()V

    return-void
.end method


# virtual methods
.method public executeCommand()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/millennialmedia/internal/Handshake;->request(Z)V

    return-void
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/millennialmedia/internal/task/handshake/HandshakeRequestTask;->TAG:Ljava/lang/String;

    return-object v0
.end method
