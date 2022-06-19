.class public Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;,
        Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$ExecuteEventListener;,
        Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

.field private final c:J

.field private final d:J

.field private final e:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

.field private final f:J

.field private final g:[Landroid/view/View;

.field private final h:J

.field private final i:I

.field private final j:I

.field private final k:Ljava/lang/String;

.field private final l:F

.field private final m:I

.field private final n:Landroid/view/animation/Interpolator;

.field private final o:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$ExecuteEventListener;


# direct methods
.method private constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)V
    .locals 6

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->a:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    move-result-object v1

    iput-object v1, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    .line 59
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->b(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->c:J

    .line 60
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->c(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->d:J

    .line 61
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->d(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->e:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    .line 62
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->e(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->f:J

    .line 63
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->f(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)[Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->g:[Landroid/view/View;

    .line 64
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->g(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->h:J

    .line 65
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->h(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)I

    move-result v3

    iput v3, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->i:I

    .line 66
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->i(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)I

    move-result v3

    iput v3, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->j:I

    .line 67
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->j(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->k:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->k(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)F

    move-result v3

    iput v3, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->l:F

    .line 69
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->l(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)I

    move-result v3

    iput v3, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->m:I

    .line 70
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->m(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->n:Landroid/view/animation/Interpolator;

    .line 71
    invoke-static {p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->n(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$ExecuteEventListener;

    move-result-object p1

    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->o:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$ExecuteEventListener;

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-nez p1, :cond_0

    const-string p1, "EventID redundant without specifying an event listener"

    .line 74
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;-><init>(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)V

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->m:I

    return v0
.end method

.method public getDelay()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->d:J

    return-wide v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getEffectDuration()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->h:J

    return-wide v0
.end method

.method public getEffectRotations()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->j:I

    return v0
.end method

.method public getEffectType()Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->e:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    return-object v0
.end method

.method public getEndPosition()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->l:F

    return v0
.end method

.method public getEventType()Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    return-object v0
.end method

.method public getFadeDuration()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->f:J

    return-wide v0
.end method

.method public getIndexPosition()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->i:I

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->n:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getLinkedViews()[Landroid/view/View;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->g:[Landroid/view/View;

    return-object v0
.end method

.method public isColorSet()Z
    .locals 1

    .line 141
    iget v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;->m:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
