.class public final synthetic Lcom/google/android/exoplayer2/upstream/-$$Lambda$HttpDataSource$cfHNC87J6CtFml8Fhjawefsav2k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/common/base/n;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$HttpDataSource$cfHNC87J6CtFml8Fhjawefsav2k;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$HttpDataSource$cfHNC87J6CtFml8Fhjawefsav2k;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/-$$Lambda$HttpDataSource$cfHNC87J6CtFml8Fhjawefsav2k;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/-$$Lambda$HttpDataSource$cfHNC87J6CtFml8Fhjawefsav2k;->INSTANCE:Lcom/google/android/exoplayer2/upstream/-$$Lambda$HttpDataSource$cfHNC87J6CtFml8Fhjawefsav2k;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/HttpDataSource$-CC;->lambda$cfHNC87J6CtFml8Fhjawefsav2k(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
