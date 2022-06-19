.class public Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/pubnative/lite/sdk/models/VASTtag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VASTtagBuilder"
.end annotation


# instance fields
.field ad_id:Ljava/lang/String;

.field bundle:Ljava/lang/String;

.field connection:Ljava/lang/String;

.field dnt:Ljava/lang/String;

.field gdpr:Ljava/lang/String;

.field gdpr_consent:Ljava/lang/String;

.field height:Ljava/lang/String;

.field lat:Ljava/lang/String;

.field lon:Ljava/lang/String;

.field us_privacy:Ljava/lang/String;

.field user_agent:Ljava/lang/String;

.field private final vastTagURL:Ljava/lang/String;

.field width:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->vastTagURL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;)Ljava/lang/String;
    .locals 0

    .line 96
    iget-object p0, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->vastTagURL:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public adId(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    .locals 0

    .line 117
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->ad_id:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lnet/pubnative/lite/sdk/models/VASTtag;
    .locals 2

    .line 177
    new-instance v0, Lnet/pubnative/lite/sdk/models/VASTtag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/pubnative/lite/sdk/models/VASTtag;-><init>(Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;Lnet/pubnative/lite/sdk/models/VASTtag$1;)V

    .line 178
    invoke-static {v0}, Lnet/pubnative/lite/sdk/models/VASTtag;->access$200(Lnet/pubnative/lite/sdk/models/VASTtag;)V

    return-object v0
.end method

.method public bundle(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    .locals 0

    .line 122
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->bundle:Ljava/lang/String;

    return-object p0
.end method

.method public connection(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    .locals 0

    .line 127
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->connection:Ljava/lang/String;

    return-object p0
.end method

.method public dnt(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    .locals 0

    .line 132
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->dnt:Ljava/lang/String;

    return-object p0
.end method

.method public gdpr(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    .locals 0

    .line 162
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->gdpr:Ljava/lang/String;

    return-object p0
.end method

.method public gdprConsent(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    .locals 0

    .line 167
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->gdpr_consent:Ljava/lang/String;

    return-object p0
.end method

.method public height(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    .locals 0

    .line 157
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->height:Ljava/lang/String;

    return-object p0
.end method

.method public lat(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    .locals 0

    .line 137
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->lat:Ljava/lang/String;

    return-object p0
.end method

.method public lon(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    .locals 0

    .line 142
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->lon:Ljava/lang/String;

    return-object p0
.end method

.method public usPrivacy(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    .locals 0

    .line 172
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->us_privacy:Ljava/lang/String;

    return-object p0
.end method

.method public userAgent(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    .locals 0

    .line 147
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->user_agent:Ljava/lang/String;

    return-object p0
.end method

.method public width(Ljava/lang/String;)Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    .locals 0

    .line 152
    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->width:Ljava/lang/String;

    return-object p0
.end method
