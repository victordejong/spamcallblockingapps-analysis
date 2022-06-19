.class final Lcom/mopub/mobileads/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    iput-object p1, p0, Lcom/mopub/mobileads/f;->a:Lorg/w3c/dom/Node;

    return-void
.end method
