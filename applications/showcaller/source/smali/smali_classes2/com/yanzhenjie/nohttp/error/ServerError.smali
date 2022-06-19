.class public Lcom/yanzhenjie/nohttp/error/ServerError;
.super Ljava/lang/Exception;
.source "ServerError.java"


# static fields
.field private static final serialVersionUID:J = 0x1c4cb2L


# instance fields
.field private errorBody:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getErrorBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yanzhenjie/nohttp/error/ServerError;->errorBody:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorBody(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yanzhenjie/nohttp/error/ServerError;->errorBody:Ljava/lang/String;

    return-void
.end method
