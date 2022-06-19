.class public Lnet/pubnative/lite/sdk/models/VASTtag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;
    }
.end annotation


# instance fields
.field ad_id:Ljava/lang/String;

.field bundle:Ljava/lang/String;

.field connection:Ljava/lang/String;

.field dnt:Ljava/lang/String;

.field private formatted_url:Ljava/lang/String;

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
.method private constructor <init>(Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->access$000(Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->vastTagURL:Ljava/lang/String;

    .line 27
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->ad_id:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->ad_id:Ljava/lang/String;

    .line 28
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->bundle:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->bundle:Ljava/lang/String;

    .line 29
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->connection:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->connection:Ljava/lang/String;

    .line 30
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->dnt:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->dnt:Ljava/lang/String;

    .line 31
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->lat:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->lat:Ljava/lang/String;

    .line 32
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->lon:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->lon:Ljava/lang/String;

    .line 33
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->user_agent:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->user_agent:Ljava/lang/String;

    .line 34
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->width:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->width:Ljava/lang/String;

    .line 35
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->height:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->height:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->gdpr:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->gdpr:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->gdpr_consent:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->gdpr_consent:Ljava/lang/String;

    .line 38
    iget-object p1, p1, Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;->us_privacy:Ljava/lang/String;

    iput-object p1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->us_privacy:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;Lnet/pubnative/lite/sdk/models/VASTtag$1;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lnet/pubnative/lite/sdk/models/VASTtag;-><init>(Lnet/pubnative/lite/sdk/models/VASTtag$VASTtagBuilder;)V

    return-void
.end method

.method static synthetic access$200(Lnet/pubnative/lite/sdk/models/VASTtag;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lnet/pubnative/lite/sdk/models/VASTtag;->format()V

    return-void
.end method

.method private format()V
    .locals 3

    .line 42
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->vastTagURL:Ljava/lang/String;

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->ad_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->ad_id:Ljava/lang/String;

    const-string v2, "{{adid}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    .line 47
    :cond_0
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->bundle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->bundle:Ljava/lang/String;

    const-string v2, "{{bundle}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    .line 51
    :cond_1
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->connection:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->connection:Ljava/lang/String;

    const-string v2, "{{connection}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    .line 55
    :cond_2
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->dnt:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 56
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->dnt:Ljava/lang/String;

    const-string v2, "{{dnt}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    .line 59
    :cond_3
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->user_agent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 60
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->user_agent:Ljava/lang/String;

    const-string v2, "{{user_agent}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    .line 63
    :cond_4
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->width:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 64
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->width:Ljava/lang/String;

    const-string v2, "{{width}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    .line 67
    :cond_5
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->height:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 68
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->height:Ljava/lang/String;

    const-string v2, "{{height}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    .line 71
    :cond_6
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->gdpr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 72
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->gdpr:Ljava/lang/String;

    const-string v2, "{{gdpr}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    .line 75
    :cond_7
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->gdpr_consent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 76
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->gdpr_consent:Ljava/lang/String;

    const-string v2, "{{gdpr_consent}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    .line 79
    :cond_8
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->us_privacy:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 80
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->us_privacy:Ljava/lang/String;

    const-string v2, "{{us_privacy}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    .line 83
    :cond_9
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->lat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 84
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->lat:Ljava/lang/String;

    const-string v2, "{{lat}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    .line 87
    :cond_a
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->lon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 88
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    iget-object v1, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->lon:Ljava/lang/String;

    const-string v2, "{{lon}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    :cond_b
    return-void
.end method


# virtual methods
.method public getFormattedURL()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lnet/pubnative/lite/sdk/models/VASTtag;->formatted_url:Ljava/lang/String;

    return-object v0
.end method
