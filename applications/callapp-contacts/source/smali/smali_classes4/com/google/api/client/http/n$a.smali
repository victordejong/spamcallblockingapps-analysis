.class final Lcom/google/api/client/http/n$a;
.super Lcom/google/api/client/http/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/http/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/api/client/http/n;

.field private final b:Lcom/google/api/client/http/n$b;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/n;Lcom/google/api/client/http/n$b;)V
    .locals 0

    .line 974
    invoke-direct {p0}, Lcom/google/api/client/http/z;-><init>()V

    .line 975
    iput-object p1, p0, Lcom/google/api/client/http/n$a;->a:Lcom/google/api/client/http/n;

    .line 976
    iput-object p2, p0, Lcom/google/api/client/http/n$a;->b:Lcom/google/api/client/http/n$b;

    return-void
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/google/api/client/http/n$a;->a:Lcom/google/api/client/http/n;

    iget-object v1, p0, Lcom/google/api/client/http/n$a;->b:Lcom/google/api/client/http/n$b;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/api/client/http/n;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/api/client/http/n$b;)V

    return-void
.end method

.method public final execute()Lcom/google/api/client/http/aa;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 986
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
