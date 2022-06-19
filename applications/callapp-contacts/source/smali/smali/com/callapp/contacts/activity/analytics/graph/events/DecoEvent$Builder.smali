.class public Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:I

.field private final b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

.field private c:J

.field private d:J

.field private e:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

.field private f:J

.field private g:[Landroid/view/View;

.field private h:J

.field private i:I

.field private j:Ljava/lang/String;

.field private k:F

.field private l:I

.field private m:Landroid/view/animation/Interpolator;

.field private n:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$ExecuteEventListener;


# direct methods
.method public constructor <init>(F)V
    .locals 4

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 186
    iput-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->c:J

    const-wide/16 v2, 0x3e8

    .line 189
    iput-wide v2, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->f:J

    .line 191
    iput-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->h:J

    const/4 v0, -0x1

    .line 192
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->a:I

    const/4 v0, 0x2

    .line 193
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->i:I

    const-string v0, "#00000000"

    .line 196
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->l:I

    .line 207
    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_MOVE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    .line 208
    iput p1, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->k:F

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;)V
    .locals 4

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 186
    iput-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->c:J

    const-wide/16 v2, 0x3e8

    .line 189
    iput-wide v2, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->f:J

    .line 191
    iput-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->h:J

    const/4 v0, -0x1

    .line 192
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->a:I

    const/4 v0, 0x2

    .line 193
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->i:I

    const-string v0, "#00000000"

    .line 196
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->l:I

    .line 217
    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_EFFECT:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    iput-object v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    .line 218
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->e:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    return-void
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;I)V
    .locals 4

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 186
    iput-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->c:J

    const-wide/16 v2, 0x3e8

    .line 189
    iput-wide v2, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->f:J

    .line 191
    iput-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->h:J

    const/4 v0, -0x1

    .line 192
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->a:I

    const/4 v0, 0x2

    .line 193
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->i:I

    const-string v0, "#00000000"

    .line 196
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->l:I

    .line 237
    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_COLOR_CHANGE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-ne v0, p1, :cond_0

    .line 240
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    .line 241
    iput p2, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->l:I

    return-void

    .line 238
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must specify EVENT_COLOR_CHANGE when setting new color"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;Z)V
    .locals 4

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 186
    iput-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->c:J

    const-wide/16 v2, 0x3e8

    .line 189
    iput-wide v2, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->f:J

    .line 191
    iput-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->h:J

    const/4 v0, -0x1

    .line 192
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->a:I

    const/4 v0, 0x2

    .line 193
    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->i:I

    const-string v0, "#00000000"

    .line 196
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->l:I

    .line 230
    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid arguments for EventType. Use Alternative constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 233
    sget-object p1, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_SHOW:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;->EVENT_HIDE:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    :goto_1
    iput-object p1, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    return-void
.end method

.method static synthetic a(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->b:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$EventType;

    return-object p0
.end method

.method static synthetic b(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)J
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)J
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->e:Lcom/callapp/contacts/activity/analytics/graph/charts/DecoDrawEffect$EffectType;

    return-object p0
.end method

.method static synthetic e(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)J
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->f:J

    return-wide v0
.end method

.method static synthetic f(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)[Landroid/view/View;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->g:[Landroid/view/View;

    return-object p0
.end method

.method static synthetic g(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)J
    .locals 2

    .line 184
    iget-wide v0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->h:J

    return-wide v0
.end method

.method static synthetic h(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->a:I

    return p0
.end method

.method static synthetic i(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->i:I

    return p0
.end method

.method static synthetic j(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)Ljava/lang/String;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)F
    .locals 0

    .line 184
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->k:F

    return p0
.end method

.method static synthetic l(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)I
    .locals 0

    .line 184
    iget p0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->l:I

    return p0
.end method

.method static synthetic m(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->m:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic n(Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;)Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$ExecuteEventListener;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$Builder;->n:Lcom/callapp/contacts/activity/analytics/graph/events/DecoEvent$ExecuteEventListener;

    return-object p0
.end method
