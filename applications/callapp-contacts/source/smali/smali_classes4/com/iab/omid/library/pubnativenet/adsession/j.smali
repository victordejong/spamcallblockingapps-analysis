.class public final Lcom/iab/omid/library/pubnativenet/adsession/j;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/net/URL;

.field public final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/pubnativenet/adsession/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/iab/omid/library/pubnativenet/adsession/j;->b:Ljava/net/URL;

    iput-object p3, p0, Lcom/iab/omid/library/pubnativenet/adsession/j;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/pubnativenet/adsession/j;
    .locals 1

    const-string v0, "VendorKey is null or empty"

    invoke-static {p0, v0}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ResourceURL is null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VerificationParameters is null or empty"

    invoke-static {p2, v0}, Lcom/iab/omid/library/pubnativenet/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/iab/omid/library/pubnativenet/adsession/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/iab/omid/library/pubnativenet/adsession/j;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method
