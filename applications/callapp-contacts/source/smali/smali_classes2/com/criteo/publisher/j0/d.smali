.class public Lcom/criteo/publisher/j0/d;
.super Ljava/io/IOException;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Received HTTP error status: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method
