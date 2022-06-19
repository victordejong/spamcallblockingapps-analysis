.class final Lcom/google/android/gms/measurement/internal/fg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private A:J

.field private B:J

.field private C:J

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:J

.field private G:J

.field private final a:Lcom/google/android/gms/measurement/internal/fd;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:Z

.field private p:J

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/Boolean;

.field private u:J

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/String;

.field private x:J

.field private y:J

.field private z:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/fg;->b:Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 8
    return-void
.end method


# virtual methods
.method public final A()J
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 209
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 210
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->C:J

    return-wide v0
.end method

.method public final B()J
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 217
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 218
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->B:J

    return-wide v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 225
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 226
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->D:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 228
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 229
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->D:Ljava/lang/String;

    .line 230
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/fg;->i(Ljava/lang/String;)V

    .line 231
    return-object v0
.end method

.method public final E()J
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 238
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 239
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->p:J

    return-wide v0
.end method

.method public final F()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 246
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 247
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->q:Z

    return v0
.end method

.method public final G()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 254
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 255
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->r:Z

    return v0
.end method

.method public final H()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 262
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->t:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final I()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 270
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 271
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->v:Ljava/util/List;

    return-object v0
.end method

.method public final a(J)V
    .locals 5

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 75
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->h:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 76
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->h:J

    .line 77
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 265
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 266
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->t:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 267
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fg;->t:Ljava/lang/Boolean;

    .line 268
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 24
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fg;->c:Ljava/lang/String;

    .line 26
    return-void

    .line 24
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 273
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 274
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->v:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/jw;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 277
    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->v:Ljava/util/List;

    .line 278
    :cond_0
    return-void

    .line 277
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 139
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->o:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 140
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/fg;->o:Z

    .line 141
    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    return v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 15
    return-void
.end method

.method public final b(J)V
    .locals 5

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 83
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->i:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 84
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->i:J

    .line 85
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 33
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fg;->d:Ljava/lang/String;

    .line 35
    return-void

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 249
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 250
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->q:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 251
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/fg;->q:Z

    .line 252
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(J)V
    .locals 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 99
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->k:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 100
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->k:J

    .line 101
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 42
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->s:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 43
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fg;->s:Ljava/lang/String;

    .line 44
    return-void

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 257
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 258
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->r:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 259
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/fg;->r:Z

    .line 260
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(J)V
    .locals 5

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 115
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->m:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 116
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->m:J

    .line 117
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 49
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 51
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->w:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 52
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fg;->w:Ljava/lang/String;

    .line 53
    return-void

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e(J)V
    .locals 5

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 123
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->n:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 124
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->n:J

    .line 125
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 59
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 60
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fg;->e:Ljava/lang/String;

    .line 61
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final f(J)V
    .locals 5

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 131
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->u:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 132
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->u:J

    .line 133
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 67
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 68
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fg;->f:Ljava/lang/String;

    .line 69
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->w:Ljava/lang/String;

    return-object v0
.end method

.method public final g(J)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->b(Z)V

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 144
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 145
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/fg;->g:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 146
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->g:J

    .line 147
    return-void

    :cond_0
    move v0, v2

    .line 142
    goto :goto_0

    :cond_1
    move v1, v2

    .line 145
    goto :goto_1
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 91
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->j:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 92
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fg;->j:Ljava/lang/String;

    .line 93
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h(J)V
    .locals 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 156
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->F:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 157
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->F:J

    .line 158
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 107
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->l:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 108
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fg;->l:Ljava/lang/String;

    .line 109
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final i(J)V
    .locals 5

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 163
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 164
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->G:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 165
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->G:J

    .line 166
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 233
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 234
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->D:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/measurement/internal/jw;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 235
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/fg;->D:Ljava/lang/String;

    .line 236
    return-void

    .line 234
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 72
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->h:J

    return-wide v0
.end method

.method public final j(J)V
    .locals 5

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 180
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 181
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->x:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 182
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->x:J

    .line 183
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 80
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->i:J

    return-wide v0
.end method

.method public final k(J)V
    .locals 5

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 188
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 189
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->y:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 190
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->y:J

    .line 191
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 87
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final l(J)V
    .locals 5

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 196
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 197
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->z:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 198
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->z:J

    .line 199
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()J
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 95
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 96
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->k:J

    return-wide v0
.end method

.method public final m(J)V
    .locals 5

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 204
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 205
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->A:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 206
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->A:J

    .line 207
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 104
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final n(J)V
    .locals 5

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 212
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 213
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->C:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 214
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->C:J

    .line 215
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()J
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 111
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 112
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->m:J

    return-wide v0
.end method

.method public final o(J)V
    .locals 5

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 220
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 221
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->B:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 222
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->B:J

    .line 223
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()J
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 119
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 120
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->n:J

    return-wide v0
.end method

.method public final p(J)V
    .locals 5

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 241
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 242
    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/fg;->p:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 243
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/fg;->p:J

    .line 244
    return-void

    .line 242
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()J
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 127
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 128
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->u:J

    return-wide v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 136
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/fg;->o:Z

    return v0
.end method

.method public final s()J
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 149
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 150
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->g:J

    return-wide v0
.end method

.method public final t()J
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 152
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 153
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->F:J

    return-wide v0
.end method

.method public final u()J
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 161
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->G:J

    return-wide v0
.end method

.method public final v()V
    .locals 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 168
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 169
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->g:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 170
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Bundle index overflow. appId"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/fg;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/dy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    const-wide/16 v0, 0x0

    .line 173
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/fg;->E:Z

    .line 174
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->g:J

    .line 175
    return-void
.end method

.method public final w()J
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 177
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 178
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->x:J

    return-wide v0
.end method

.method public final x()J
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 185
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 186
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->y:J

    return-wide v0
.end method

.method public final y()J
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 193
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 194
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->z:J

    return-wide v0
.end method

.method public final z()J
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/fg;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 202
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/fg;->A:J

    return-wide v0
.end method
