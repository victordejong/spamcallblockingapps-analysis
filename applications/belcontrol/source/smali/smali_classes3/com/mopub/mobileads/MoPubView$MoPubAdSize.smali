.class public final enum Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/MoPubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoPubAdSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/MoPubView$MoPubAdSize;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final enum HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field public static final enum HEIGHT_280:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field public static final enum HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field public static final enum HEIGHT_90:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field public static final enum MATCH_VIEW:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

.field public static final synthetic b:[Lcom/mopub/mobileads/MoPubView$MoPubAdSize;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    const-string v1, "MATCH_VIEW"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->MATCH_VIEW:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    new-instance v1, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    const-string v3, "HEIGHT_50"

    const/4 v4, 0x1

    const/16 v5, 0x32

    invoke-direct {v1, v3, v4, v5}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    new-instance v3, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    const-string v5, "HEIGHT_90"

    const/4 v6, 0x2

    const/16 v7, 0x5a

    invoke-direct {v3, v5, v6, v7}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_90:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    new-instance v5, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    const-string v7, "HEIGHT_250"

    const/4 v8, 0x3

    const/16 v9, 0xfa

    invoke-direct {v5, v7, v8, v9}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    new-instance v7, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    const-string v9, "HEIGHT_280"

    const/4 v10, 0x4

    const/16 v11, 0x118

    invoke-direct {v7, v9, v10, v11}, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_280:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->b:[Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->a:I

    return-void
.end method

.method public static valueOf(I)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .locals 1

    const/16 v0, 0x32

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xfa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x118

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->MATCH_VIEW:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0

    :cond_0
    sget-object p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_280:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0

    :cond_1
    sget-object p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_250:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0

    :cond_2
    sget-object p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_90:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0

    :cond_3
    sget-object p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->HEIGHT_50:Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .locals 1

    const-class v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/MoPubView$MoPubAdSize;
    .locals 1

    sget-object v0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->b:[Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/MoPubView$MoPubAdSize;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    iget v0, p0, Lcom/mopub/mobileads/MoPubView$MoPubAdSize;->a:I

    return v0
.end method
