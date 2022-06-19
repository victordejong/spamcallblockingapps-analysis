.class public Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService$HandshakeRequester;
.super Landroid/os/AsyncTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandshakeRequester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService$HandshakeRequester;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/millennialmedia/internal/task/handshake/HandshakeRequestService$HandshakeRequester;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/millennialmedia/internal/Handshake;->request(Z)V

    const/4 p1, 0x0

    return-object p1
.end method
