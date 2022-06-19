.class final Lcom/mopub/mobileads/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mediaNode cannot be null"

    .line 32
    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/mopub/mobileads/l;->a:Lorg/w3c/dom/Node;

    return-void
.end method
