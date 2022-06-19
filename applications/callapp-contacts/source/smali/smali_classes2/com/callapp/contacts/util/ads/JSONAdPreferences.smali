.class public Lcom/callapp/contacts/util/ads/JSONAdPreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private frequencyContact:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "frequency_contact"
    .end annotation
.end field

.field private frequencyNonContact:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "frequency_non_contact"
    .end annotation
.end field

.field private group:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "group"
    .end annotation
.end field

.field private interstitialAutoCloseSec:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "interstitial_auto_close_sec"
    .end annotation
.end field

.field private interstitialCap:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "interstitial_cap"
    .end annotation
.end field

.field private interstitialFirst:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "interstitial_first"
    .end annotation
.end field

.field private interstitialInterval:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "interstitial_interval"
    .end annotation
.end field

.field private priorityContact:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "priority_contact"
    .end annotation
.end field

.field private priorityNonContact:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "priority_non_contact"
    .end annotation
.end field

.field private refresh:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "refresh"
    .end annotation
.end field

.field private refreshInterval:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "refresh_interval"
    .end annotation
.end field

.field private retryAfterFail:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "retry_after_fail"
    .end annotation
.end field

.field private showInterstitial:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_interstitial"
    .end annotation
.end field

.field private showWithoutName:Z
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "show_without_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->frequencyNonContact:I

    .line 18
    iput v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->frequencyContact:I

    .line 36
    iput v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialCap:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 107
    :cond_1
    check-cast p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;

    .line 109
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->group:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->group:I

    if-eq v2, v3, :cond_2

    return v1

    .line 110
    :cond_2
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->priorityNonContact:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->priorityNonContact:I

    if-eq v2, v3, :cond_3

    return v1

    .line 111
    :cond_3
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->priorityContact:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->priorityContact:I

    if-eq v2, v3, :cond_4

    return v1

    .line 112
    :cond_4
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->frequencyNonContact:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->frequencyNonContact:I

    if-eq v2, v3, :cond_5

    return v1

    .line 113
    :cond_5
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->frequencyContact:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->frequencyContact:I

    if-eq v2, v3, :cond_6

    return v1

    .line 114
    :cond_6
    iget-boolean v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->showWithoutName:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->showWithoutName:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 115
    :cond_7
    iget-boolean v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->refresh:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->refresh:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 116
    :cond_8
    iget-boolean v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->showInterstitial:Z

    iget-boolean v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->showInterstitial:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 117
    :cond_9
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialInterval:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialInterval:I

    if-eq v2, v3, :cond_a

    return v1

    .line 118
    :cond_a
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialFirst:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialFirst:I

    if-eq v2, v3, :cond_b

    return v1

    .line 119
    :cond_b
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialCap:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialCap:I

    if-eq v2, v3, :cond_c

    return v1

    .line 120
    :cond_c
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialAutoCloseSec:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialAutoCloseSec:I

    if-eq v2, v3, :cond_d

    return v1

    .line 121
    :cond_d
    iget v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->refreshInterval:I

    iget v3, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->refreshInterval:I

    if-eq v2, v3, :cond_e

    return v1

    .line 122
    :cond_e
    iget-boolean v2, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->retryAfterFail:Z

    iget-boolean p1, p1, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->retryAfterFail:Z

    if-ne v2, p1, :cond_f

    return v0

    :cond_f
    :goto_0
    return v1
.end method

.method public getFrequencyContact()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->frequencyContact:I

    return v0
.end method

.method public getFrequencyNonContact()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->frequencyNonContact:I

    return v0
.end method

.method public getGroup()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->group:I

    return v0
.end method

.method public getInterstitialAutoCloseSec()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialAutoCloseSec:I

    return v0
.end method

.method public getInterstitialCap()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialCap:I

    return v0
.end method

.method public getInterstitialFirst()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialFirst:I

    return v0
.end method

.method public getInterstitialInterval()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialInterval:I

    return v0
.end method

.method public getPriorityContact()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->priorityContact:I

    return v0
.end method

.method public getPriorityNonContact()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->priorityNonContact:I

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->refreshInterval:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 127
    iget v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->group:I

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->priorityNonContact:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->priorityContact:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->frequencyNonContact:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 131
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->frequencyContact:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 132
    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->showWithoutName:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 133
    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->refresh:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->showInterstitial:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialInterval:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialFirst:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialCap:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->interstitialAutoCloseSec:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 139
    iget v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->refreshInterval:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 140
    iget-boolean v1, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->retryAfterFail:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public isRetryAfterFail()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->retryAfterFail:Z

    return v0
.end method

.method public shouldRefresh()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->refresh:Z

    return v0
.end method

.method public shouldShowInterstitial()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->showInterstitial:Z

    return v0
.end method

.method public shouldShowWithoutName()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/callapp/contacts/util/ads/JSONAdPreferences;->showWithoutName:Z

    return v0
.end method
