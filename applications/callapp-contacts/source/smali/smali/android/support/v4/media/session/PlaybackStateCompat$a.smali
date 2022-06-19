.class public final Landroid/support/v4/media/session/PlaybackStateCompat$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:J

.field private f:F

.field private g:J

.field private h:I

.field private i:Ljava/lang/CharSequence;

.field private j:J

.field private k:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->c:Ljava/util/List;

    const-wide/16 v0, -0x1

    .line 1121
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b:J

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->c:Ljava/util/List;

    const-wide/16 v1, -0x1

    .line 1121
    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b:J

    .line 1137
    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->d:I

    .line 1138
    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->e:J

    .line 1139
    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->f:F

    .line 1140
    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->j:J

    .line 1141
    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a:J

    .line 1142
    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->g:J

    .line 1143
    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->h:I

    .line 1144
    iget-object v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->i:Ljava/lang/CharSequence;

    .line 1145
    iget-object v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1146
    iget-object v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1148
    :cond_0
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b:J

    .line 1149
    iget-object p1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->k:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v4/media/session/PlaybackStateCompat$a;
    .locals 2

    const-wide/32 v0, 0x37ffff

    .line 1273
    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->g:J

    return-object p0
.end method

.method public final a(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$a;
    .locals 0

    .line 1223
    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->d:I

    .line 1224
    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->e:J

    .line 1225
    iput-wide p5, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->j:J

    .line 1226
    iput p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->f:F

    return-object p0
.end method

.method public final b()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 21

    move-object/from16 v0, p0

    .line 1375
    new-instance v18, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 v1, v18

    iget v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->d:I

    iget-wide v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->e:J

    iget-wide v5, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a:J

    iget v7, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->f:F

    iget-wide v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->g:J

    iget v10, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->h:I

    iget-object v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->i:Ljava/lang/CharSequence;

    iget-wide v12, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->j:J

    iget-object v14, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->c:Ljava/util/List;

    move-object/from16 v19, v1

    move/from16 v20, v2

    iget-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b:J

    move-wide v15, v1

    iget-object v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat$a;->k:Landroid/os/Bundle;

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct/range {v1 .. v17}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    return-object v18
.end method
