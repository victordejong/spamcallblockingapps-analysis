.class public final Lcom/explorestack/iab/vast/tags/d;
.super Lcom/explorestack/iab/vast/tags/i;
.source "SourceFile"

# interfaces
.implements Lcom/explorestack/iab/vast/a;


# instance fields
.field public final a:Lcom/explorestack/iab/utils/h;

.field public final b:Lcom/explorestack/iab/vast/tags/l;

.field public c:Lcom/explorestack/iab/vast/tags/f;

.field private final d:Lcom/explorestack/iab/utils/h;

.field private final e:Lcom/explorestack/iab/utils/h;

.field private final f:Lcom/explorestack/iab/utils/h;

.field private final g:Lcom/explorestack/iab/utils/h;

.field private final h:Lcom/explorestack/iab/utils/h;

.field private final i:Lcom/explorestack/iab/utils/h;

.field private final j:Lcom/explorestack/iab/utils/h;

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/Float;

.field private o:Z

.field private p:Z

.field private q:Z


# direct methods
.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lcom/explorestack/iab/vast/tags/i;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 13
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->d:Lcom/explorestack/iab/utils/h;

    .line 15
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->a:Lcom/explorestack/iab/utils/h;

    .line 17
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->e:Lcom/explorestack/iab/utils/h;

    .line 19
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->f:Lcom/explorestack/iab/utils/h;

    .line 21
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->g:Lcom/explorestack/iab/utils/h;

    .line 23
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->h:Lcom/explorestack/iab/utils/h;

    .line 25
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->i:Lcom/explorestack/iab/utils/h;

    .line 27
    new-instance v0, Lcom/explorestack/iab/utils/h;

    invoke-direct {v0}, Lcom/explorestack/iab/utils/h;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->j:Lcom/explorestack/iab/utils/h;

    .line 29
    new-instance v0, Lcom/explorestack/iab/vast/tags/l;

    invoke-direct {v0}, Lcom/explorestack/iab/vast/tags/l;-><init>()V

    iput-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->b:Lcom/explorestack/iab/vast/tags/l;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/d;->o:Z

    .line 46
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/d;->p:Z

    .line 47
    iput-boolean v0, p0, Lcom/explorestack/iab/vast/tags/d;->q:Z

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "Extension"

    .line 51
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1e

    .line 53
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 56
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Video"

    .line 57
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->d:Lcom/explorestack/iab/utils/h;

    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/d;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/h;)V

    goto :goto_0

    :cond_1
    const-string v4, "LoadingView"

    .line 59
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 60
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->i:Lcom/explorestack/iab/utils/h;

    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/d;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/h;)V

    goto :goto_0

    :cond_2
    const-string v4, "Countdown"

    .line 61
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 62
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->j:Lcom/explorestack/iab/utils/h;

    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/d;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/h;)V

    goto :goto_0

    :cond_3
    const-string v4, "Progress"

    .line 63
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 64
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->g:Lcom/explorestack/iab/utils/h;

    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/d;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/h;)V

    goto :goto_0

    :cond_4
    const-string v4, "ClosableView"

    .line 65
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 66
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->f:Lcom/explorestack/iab/utils/h;

    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/d;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/h;)V

    goto :goto_0

    :cond_5
    const-string v4, "Mute"

    .line 67
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 68
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->e:Lcom/explorestack/iab/utils/h;

    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/d;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/h;)V

    goto :goto_0

    :cond_6
    const-string v4, "CTA"

    .line 69
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 70
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->a:Lcom/explorestack/iab/utils/h;

    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/d;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/h;)V

    goto :goto_0

    :cond_7
    const-string v4, "RepeatView"

    .line 71
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 72
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->h:Lcom/explorestack/iab/utils/h;

    invoke-static {p1, v3}, Lcom/explorestack/iab/vast/tags/d;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/explorestack/iab/utils/h;)V

    goto/16 :goto_0

    :cond_8
    const-string v4, "Postbanner"

    .line 73
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 74
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->b:Lcom/explorestack/iab/vast/tags/l;

    invoke-virtual {v3, p1}, Lcom/explorestack/iab/vast/tags/l;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_9
    const-string v4, "Autorotate"

    .line 75
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 76
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->m:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_a
    const-string v4, "R1"

    .line 77
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 78
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/d;->p:Z

    goto/16 :goto_0

    :cond_b
    const-string v4, "R2"

    .line 79
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 80
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/d;->q:Z

    goto/16 :goto_0

    :cond_c
    const-string v4, "CtaText"

    .line 81
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 82
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->a:Lcom/explorestack/iab/utils/h;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 1348
    iput-object v4, v3, Lcom/explorestack/iab/utils/h;->j:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v4, "ShowCta"

    .line 83
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 84
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->a:Lcom/explorestack/iab/utils/h;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2112
    iput-object v4, v3, Lcom/explorestack/iab/utils/h;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_e
    const-string v4, "ShowMute"

    .line 85
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 86
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->e:Lcom/explorestack/iab/utils/h;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 3112
    iput-object v4, v3, Lcom/explorestack/iab/utils/h;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_f
    const-string v4, "ShowCompanion"

    .line 87
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 88
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->b:Lcom/explorestack/iab/vast/tags/l;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    .line 3127
    iput-boolean v4, v3, Lcom/explorestack/iab/vast/tags/l;->h:Z

    goto/16 :goto_0

    :cond_10
    const-string v4, "CompanionCloseTime"

    .line 89
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 90
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/iab/vast/tags/d;->f(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 92
    iget-object v4, p0, Lcom/explorestack/iab/vast/tags/d;->b:Lcom/explorestack/iab/vast/tags/l;

    int-to-float v3, v3

    .line 4115
    iput v3, v4, Lcom/explorestack/iab/vast/tags/l;->f:F

    goto/16 :goto_0

    :cond_11
    const-string v4, "VideoClickable"

    .line 94
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 95
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/explorestack/iab/vast/tags/d;->o:Z

    goto/16 :goto_0

    :cond_12
    const-string v4, "CtaXPosition"

    .line 96
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 97
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->a:Lcom/explorestack/iab/utils/h;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/iab/vast/tags/d;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 4124
    iput-object v4, v3, Lcom/explorestack/iab/utils/h;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_13
    const-string v4, "CtaYPosition"

    .line 98
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 99
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->a:Lcom/explorestack/iab/utils/h;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/iab/vast/tags/d;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 4136
    iput-object v4, v3, Lcom/explorestack/iab/utils/h;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_14
    const-string v4, "CloseXPosition"

    .line 100
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 101
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->f:Lcom/explorestack/iab/utils/h;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/iab/vast/tags/d;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 5124
    iput-object v4, v3, Lcom/explorestack/iab/utils/h;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_15
    const-string v4, "CloseYPosition"

    .line 102
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 103
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->f:Lcom/explorestack/iab/utils/h;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/iab/vast/tags/d;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 5136
    iput-object v4, v3, Lcom/explorestack/iab/utils/h;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_16
    const-string v4, "MuteXPosition"

    .line 104
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 105
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->e:Lcom/explorestack/iab/utils/h;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/iab/vast/tags/d;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 6124
    iput-object v4, v3, Lcom/explorestack/iab/utils/h;->e:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_17
    const-string v4, "MuteYPosition"

    .line 106
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 107
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->e:Lcom/explorestack/iab/utils/h;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/explorestack/iab/vast/tags/d;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 6136
    iput-object v4, v3, Lcom/explorestack/iab/utils/h;->f:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_18
    const-string v4, "AssetsColor"

    .line 108
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 109
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/iab/vast/tags/d;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 111
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_19
    const-string v4, "AssetsBackgroundColor"

    .line 113
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 114
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/explorestack/iab/vast/tags/d;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 116
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->l:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_1a
    const-string v4, "Companion"

    .line 118
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 119
    new-instance v3, Lcom/explorestack/iab/vast/tags/f;

    invoke-direct {v3, p1}, Lcom/explorestack/iab/vast/tags/f;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 120
    invoke-virtual {v3}, Lcom/explorestack/iab/vast/tags/f;->x_()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/explorestack/iab/vast/tags/f;->f()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->c:Lcom/explorestack/iab/vast/tags/f;

    goto/16 :goto_0

    :cond_1b
    const-string v4, "CloseTime"

    .line 123
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 124
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->d(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 126
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iput-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->n:Ljava/lang/Float;

    goto/16 :goto_0

    :cond_1c
    const-string v4, "ShowProgress"

    .line 128
    invoke-static {v3, v4}, Lcom/explorestack/iab/vast/tags/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 129
    iget-object v3, p0, Lcom/explorestack/iab/vast/tags/d;->g:Lcom/explorestack/iab/utils/h;

    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->e(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 7112
    iput-object v4, v3, Lcom/explorestack/iab/utils/h;->d:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 131
    :cond_1d
    invoke-static {p1}, Lcom/explorestack/iab/vast/tags/d;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 134
    :cond_1e
    invoke-interface {p1, v4, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/explorestack/iab/vast/tags/l;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->b:Lcom/explorestack/iab/vast/tags/l;

    return-object v0
.end method

.method public final b()Lcom/explorestack/iab/utils/h;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->d:Lcom/explorestack/iab/utils/h;

    return-object v0
.end method

.method public final c()Lcom/explorestack/iab/utils/h;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->a:Lcom/explorestack/iab/utils/h;

    return-object v0
.end method

.method public final d()Lcom/explorestack/iab/utils/h;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->e:Lcom/explorestack/iab/utils/h;

    return-object v0
.end method

.method public final e()Lcom/explorestack/iab/utils/h;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->f:Lcom/explorestack/iab/utils/h;

    return-object v0
.end method

.method public final f()Lcom/explorestack/iab/utils/h;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->g:Lcom/explorestack/iab/utils/h;

    return-object v0
.end method

.method public final g()Lcom/explorestack/iab/utils/h;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->h:Lcom/explorestack/iab/utils/h;

    return-object v0
.end method

.method public final h()Lcom/explorestack/iab/utils/h;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->i:Lcom/explorestack/iab/utils/h;

    return-object v0
.end method

.method public final i()Lcom/explorestack/iab/utils/h;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->j:Lcom/explorestack/iab/utils/h;

    return-object v0
.end method

.method public final j()Ljava/lang/Integer;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->k:Ljava/lang/Integer;

    return-object v0
.end method

.method public final k()Ljava/lang/Integer;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->l:Ljava/lang/Integer;

    return-object v0
.end method

.method public final l()Ljava/lang/Boolean;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->m:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final m()Ljava/lang/Float;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/explorestack/iab/vast/tags/d;->n:Ljava/lang/Float;

    return-object v0
.end method

.method public final n()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/tags/d;->o:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/tags/d;->p:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/explorestack/iab/vast/tags/d;->q:Z

    return v0
.end method
