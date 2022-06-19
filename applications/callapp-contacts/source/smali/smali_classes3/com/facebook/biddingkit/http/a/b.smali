.class public final Lcom/facebook/biddingkit/http/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/biddingkit/http/a/b;->a:Ljava/util/Set;

    .line 37
    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    sput-object v1, Lcom/facebook/biddingkit/http/a/b;->b:Ljava/util/Set;

    const-string v2, "1ww8E0AYsR2oX5lndk2hwp2Uosk=\n"

    .line 40
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "mOTdnSGD1SmegENz//Kn4cSHn14=\n"

    .line 42
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "H7hrEWjsdDFUBi6MnMWxcaS3zLQ=\n"

    .line 43
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "orAitN2YRTqgCPUHW8KJW7r1IUY=\n"

    .line 45
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "M5zdV8/VsUEWm2Ff8xQoeC0dpjk=\n"

    .line 46
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "9a0LzBrVbNFQclschmwwrZLvIbA=\n"

    .line 47
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "Avrz4pFDVGhgeFdpTfXkW2iFGGg=\n"

    .line 48
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "toZ2GRnRjC9P5VVUdCpOrFH8lfQ=\n"

    .line 51
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "3lKvjNsfmrn+WmfDhvr2iVh/yRs=\n"

    .line 52
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "B08QtE4yLCdli4rptyqAEczXOeA=\n"

    .line 55
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "XZXI6anZbdKf+taURdnyUH5ipgM=\n"

    .line 56
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "bhbUIW5tqP+DrjCAXQxkIyBbTZU=\n"

    .line 59
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "UbxPdxcIz+UJ3enqpVSOkcBneFM=\n"

    .line 60
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "4kx7eUDImQCtxhdmZFPeQvoM1ig=\n"

    .line 62
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "SXxoaOSEzPC6BgGmxAt/EAcsajw=\n"

    .line 63
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "blhOM3W9V/bVQhsWAcLYwPU6n24=\n"

    .line 64
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "T5x9IXmcrQ7YuQxXnxoCmeeQ84c=\n"

    .line 65
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/biddingkit/http/client/a;
    .locals 2

    .line 73
    new-instance v0, Lcom/facebook/biddingkit/http/client/a;

    invoke-direct {v0}, Lcom/facebook/biddingkit/http/client/a;-><init>()V

    const/16 v1, 0x7530

    .line 1090
    invoke-virtual {v0, v1}, Lcom/facebook/biddingkit/http/client/a;->a(I)V

    .line 77
    sget-object v1, Lcom/facebook/biddingkit/http/a/b;->b:Ljava/util/Set;

    .line 1101
    iput-object v1, v0, Lcom/facebook/biddingkit/http/client/a;->d:Ljava/util/Set;

    .line 78
    sget-object v1, Lcom/facebook/biddingkit/http/a/b;->a:Ljava/util/Set;

    .line 2090
    iput-object v1, v0, Lcom/facebook/biddingkit/http/client/a;->e:Ljava/util/Set;

    return-object v0
.end method
