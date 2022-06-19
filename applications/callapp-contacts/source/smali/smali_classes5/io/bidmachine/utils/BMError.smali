.class public Lio/bidmachine/utils/BMError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AlreadyShown:Lio/bidmachine/utils/BMError;

.field public static final Connection:Lio/bidmachine/utils/BMError;

.field public static final Destroyed:Lio/bidmachine/utils/BMError;

.field public static final ERROR_NOT_INITIALIZED:I = 0x63

.field public static final ERROR_NOT_LOADED:I = 0x62

.field public static final Expired:Lio/bidmachine/utils/BMError;

.field public static final IncorrectAdUnit:Lio/bidmachine/utils/BMError;

.field public static final Internal:Lio/bidmachine/utils/BMError;

.field public static final NOT_SET:I = -0x1

.field public static final NoContent:Lio/bidmachine/utils/BMError;

.field public static final NotInitialized:Lio/bidmachine/utils/BMError;

.field public static final NotLoaded:Lio/bidmachine/utils/BMError;

.field public static final RequestAlreadyShown:Lio/bidmachine/utils/BMError;

.field public static final RequestDestroyed:Lio/bidmachine/utils/BMError;

.field public static final RequestExpired:Lio/bidmachine/utils/BMError;

.field public static final Server:Lio/bidmachine/utils/BMError;

.field public static final TimeoutError:Lio/bidmachine/utils/BMError;


# instance fields
.field private brief:Ljava/lang/String;

.field private code:I

.field private message:Ljava/lang/String;

.field private originError:Lio/bidmachine/utils/BMError;

.field private trackError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x63

    const-string v2, "SDK not initialized"

    const-string v3, "Sdk not initialized properly, see docs: https://wiki.appodeal.com/display/BID/BidMachine+Android+SDK+Documentation"

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->NotInitialized:Lio/bidmachine/utils/BMError;

    .line 21
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x64

    const-string v2, "Connection error"

    const-string v3, "BidMachine can\'t connect to server"

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Connection:Lio/bidmachine/utils/BMError;

    .line 23
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x66

    const-string v2, "Timeout error"

    const-string v3, "BidMachine timeout reached"

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->TimeoutError:Lio/bidmachine/utils/BMError;

    .line 25
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x67

    const-string v2, "No content"

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->NoContent:Lio/bidmachine/utils/BMError;

    .line 27
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x65

    const-string v2, "Incorrect ad unit"

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->IncorrectAdUnit:Lio/bidmachine/utils/BMError;

    .line 29
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x6c

    const-string v2, "Internal error"

    const-string v3, "internal error acquired"

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Internal:Lio/bidmachine/utils/BMError;

    .line 31
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x6d

    const-string v2, "Server error"

    const-string v3, "server error, please contact support"

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Server:Lio/bidmachine/utils/BMError;

    .line 33
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x62

    const-string v2, "Ads not loaded"

    invoke-direct {v0, v1, v2, v2}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->NotLoaded:Lio/bidmachine/utils/BMError;

    .line 35
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/4 v1, -0x1

    const-string v2, "Ads already shown"

    const-string v3, "Ads was already shown, load new one please"

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->AlreadyShown:Lio/bidmachine/utils/BMError;

    .line 37
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v2, "AdRequest already shown"

    const-string v3, "AdRequest that related with ad has already been shown, load new AdRequest please"

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->RequestAlreadyShown:Lio/bidmachine/utils/BMError;

    .line 39
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x6a

    const-string v2, "AdRequest destroyed"

    const-string v3, "AdRequest destroyed, create new one please"

    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->RequestDestroyed:Lio/bidmachine/utils/BMError;

    .line 41
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v2, 0x6b

    const-string v3, "AdRequest expired"

    const-string v4, "AdRequest expired, load new one please"

    invoke-direct {v0, v2, v3, v4}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->RequestExpired:Lio/bidmachine/utils/BMError;

    .line 43
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v3, "Ads destroyed"

    const-string v4, "Ads destroyed, load new one please"

    invoke-direct {v0, v1, v3, v4}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Destroyed:Lio/bidmachine/utils/BMError;

    .line 45
    new-instance v0, Lio/bidmachine/utils/BMError;

    const-string v1, "Ads expired"

    const-string v3, "Ads was expired, load new one please"

    invoke-direct {v0, v2, v1, v3}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/bidmachine/utils/BMError;->Expired:Lio/bidmachine/utils/BMError;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, v0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/bidmachine/utils/BMError;)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Lio/bidmachine/utils/BMError;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lio/bidmachine/utils/BMError;->trackError:Z

    .line 93
    iput p1, p0, Lio/bidmachine/utils/BMError;->code:I

    .line 94
    iput-object p2, p0, Lio/bidmachine/utils/BMError;->brief:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    .line 96
    iput-object p4, p0, Lio/bidmachine/utils/BMError;->originError:Lio/bidmachine/utils/BMError;

    return-void
.end method

.method public static adapterNotFoundError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .locals 3

    .line 65
    new-instance v0, Lio/bidmachine/utils/BMError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adapter not found ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x65

    const-string v2, "Adapter not found"

    invoke-direct {v0, v1, v2, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static catchError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .locals 3

    .line 75
    new-instance v0, Lio/bidmachine/utils/BMError;

    const/16 v1, 0x68

    const-string v2, "Catch error"

    invoke-direct {v0, v1, v2, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static noFillError(Lio/bidmachine/utils/BMError;)Lio/bidmachine/utils/BMError;
    .locals 6

    const/16 v0, 0x67

    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getCode()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 50
    new-instance v1, Lio/bidmachine/utils/BMError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No fill ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getBrief()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No ads fill ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lio/bidmachine/utils/BMError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/bidmachine/utils/BMError;)V

    return-object v1

    .line 55
    :cond_0
    new-instance v1, Lio/bidmachine/utils/BMError;

    const-string v2, "No fill"

    const-string v3, "No ads fill"

    invoke-direct {v1, v0, v2, v3, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;Lio/bidmachine/utils/BMError;)V

    return-object v1
.end method

.method public static paramError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .locals 3

    .line 60
    new-instance v0, Lio/bidmachine/utils/BMError;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Param error: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x6e

    const-string v2, "Param error"

    invoke-direct {v0, v1, v2, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static requestError(Ljava/lang/String;)Lio/bidmachine/utils/BMError;
    .locals 3

    .line 70
    new-instance v0, Lio/bidmachine/utils/BMError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request error ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x6e

    const-string v2, "Request Error"

    invoke-direct {v0, v1, v2, p0}, Lio/bidmachine/utils/BMError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 129
    :cond_1
    check-cast p1, Lio/bidmachine/utils/BMError;

    .line 131
    iget v2, p0, Lio/bidmachine/utils/BMError;->code:I

    iget v3, p1, Lio/bidmachine/utils/BMError;->code:I

    if-eq v2, v3, :cond_2

    return v1

    .line 132
    :cond_2
    iget-object v2, p0, Lio/bidmachine/utils/BMError;->brief:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lio/bidmachine/utils/BMError;->brief:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lio/bidmachine/utils/BMError;->brief:Ljava/lang/String;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 133
    :cond_4
    iget-object v2, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    iget-object p1, p1, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    if-nez p1, :cond_6

    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getBrief()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lio/bidmachine/utils/BMError;->brief:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()I
    .locals 1

    .line 100
    iget v0, p0, Lio/bidmachine/utils/BMError;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginError()Lio/bidmachine/utils/BMError;
    .locals 1

    .line 113
    iget-object v0, p0, Lio/bidmachine/utils/BMError;->originError:Lio/bidmachine/utils/BMError;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 138
    iget v0, p0, Lio/bidmachine/utils/BMError;->code:I

    mul-int/lit8 v0, v0, 0x1f

    .line 139
    iget-object v1, p0, Lio/bidmachine/utils/BMError;->brief:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 140
    iget-object v1, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public isTrackError()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lio/bidmachine/utils/BMError;->trackError:Z

    return v0
.end method

.method public setTrackError(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lio/bidmachine/utils/BMError;->trackError:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/bidmachine/utils/BMError;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/utils/BMError;->brief:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/bidmachine/utils/BMError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
