.class final Lcom/mopub/common/privacy/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    iput-object p1, p0, Lcom/mopub/common/privacy/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getHtml()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/mopub/common/privacy/a;->a:Ljava/lang/String;

    return-object v0
.end method
