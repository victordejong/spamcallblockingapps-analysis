.class public final Lcom/iab/omid/library/pubnativenet/c/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/iab/omid/library/pubnativenet/c/d;

.field public final b:Lcom/iab/omid/library/pubnativenet/c/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iab/omid/library/pubnativenet/c/d;

    invoke-direct {v0}, Lcom/iab/omid/library/pubnativenet/c/d;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/pubnativenet/c/b;->a:Lcom/iab/omid/library/pubnativenet/c/d;

    new-instance v1, Lcom/iab/omid/library/pubnativenet/c/c;

    invoke-direct {v1, v0}, Lcom/iab/omid/library/pubnativenet/c/c;-><init>(Lcom/iab/omid/library/pubnativenet/c/a;)V

    iput-object v1, p0, Lcom/iab/omid/library/pubnativenet/c/b;->b:Lcom/iab/omid/library/pubnativenet/c/c;

    return-void
.end method
