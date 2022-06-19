.class public final Lcom/google/android/gms/measurement/internal/hu;
.super Lcom/google/android/gms/measurement/internal/de;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/im;

.field private b:Lcom/google/android/gms/measurement/internal/dq;

.field private volatile c:Ljava/lang/Boolean;

.field private final d:Lcom/google/android/gms/measurement/internal/j;

.field private final e:Lcom/google/android/gms/measurement/internal/jg;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/measurement/internal/j;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/de;-><init>(Lcom/google/android/gms/measurement/internal/fd;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->f:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/jg;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/fd;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/jg;-><init>(Lcom/google/android/gms/common/util/e;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->e:Lcom/google/android/gms/measurement/internal/jg;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/im;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/im;-><init>(Lcom/google/android/gms/measurement/internal/hu;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->a:Lcom/google/android/gms/measurement/internal/im;

    .line 5
    new-instance v0, Lcom/google/android/gms/measurement/internal/hx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/hx;-><init>(Lcom/google/android/gms/measurement/internal/hu;Lcom/google/android/gms/measurement/internal/gb;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->d:Lcom/google/android/gms/measurement/internal/j;

    .line 6
    new-instance v0, Lcom/google/android/gms/measurement/internal/id;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/id;-><init>(Lcom/google/android/gms/measurement/internal/hu;Lcom/google/android/gms/measurement/internal/gb;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->g:Lcom/google/android/gms/measurement/internal/j;

    .line 7
    return-void
.end method

.method private final J()Z
    .locals 1

    .prologue
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method private final K()V
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->e:Lcom/google/android/gms/measurement/internal/jg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jg;->a()V

    .line 143
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hu;->d:Lcom/google/android/gms/measurement/internal/j;

    .line 144
    sget-object v0, Lcom/google/android/gms/measurement/internal/t;->I:Lcom/google/android/gms/measurement/internal/dr;

    .line 145
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 147
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/j;->a(J)V

    .line 148
    return-void
.end method

.method private final L()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 179
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 181
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hu;->c:Ljava/lang/Boolean;

    .line 182
    if-nez v2, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 185
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/el;->f()Ljava/lang/Boolean;

    move-result-object v2

    .line 187
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 232
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->c:Ljava/lang/Boolean;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->c:Ljava/lang/Boolean;

    .line 235
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->c()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dv;->G()I

    move-result v3

    if-ne v3, v0, :cond_3

    move v3, v0

    move v2, v0

    .line 226
    :goto_1
    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->k()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 227
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v3, "No way to upload. Consider using the full version of Analytics"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 229
    :goto_2
    if-eqz v1, :cond_2

    .line 230
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/el;->a(Z)V

    :cond_2
    move v0, v2

    .line 231
    goto :goto_0

    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Checking service availability"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    const v4, 0xbdfcb8

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/jw;->a(I)I

    move-result v3

    .line 195
    sparse-switch v3, :sswitch_data_0

    .line 223
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Unexpected service status"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v3, v1

    move v2, v1

    .line 225
    goto :goto_1

    .line 196
    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Service available"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move v3, v0

    move v2, v0

    .line 199
    goto :goto_1

    .line 200
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Service missing"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move v3, v0

    move v2, v1

    .line 203
    goto :goto_1

    .line 204
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Service updating"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move v3, v0

    move v2, v0

    .line 207
    goto/16 :goto_1

    .line 208
    :sswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v3

    const-string/jumbo v4, "Service container out of date"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/jw;->f()I

    move-result v3

    const/16 v4, 0x4423

    if-ge v3, v4, :cond_4

    move v3, v0

    move v2, v1

    .line 211
    goto/16 :goto_1

    .line 212
    :cond_4
    if-nez v2, :cond_5

    :goto_3
    move v3, v1

    move v2, v0

    .line 214
    goto/16 :goto_1

    :cond_5
    move v0, v1

    .line 212
    goto :goto_3

    .line 215
    :sswitch_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Service disabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move v3, v1

    move v2, v1

    .line 218
    goto/16 :goto_1

    .line 219
    :sswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v2, "Service invalid"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    move v3, v1

    move v2, v1

    .line 222
    goto/16 :goto_1

    :cond_6
    move v1, v3

    goto/16 :goto_2

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x9 -> :sswitch_5
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method private final M()V
    .locals 2

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 260
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/hu;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Inactivity, disconnecting from the service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/hu;->H()V

    goto :goto_0
.end method

.method private final N()V
    .locals 4

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 276
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hu;->f:Ljava/util/List;

    .line 278
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 280
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Task exception while flushing queue"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->g:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j;->c()V

    .line 287
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/hu;Lcom/google/android/gms/measurement/internal/dq;)Lcom/google/android/gms/measurement/internal/dq;
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->b:Lcom/google/android/gms/measurement/internal/dq;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/hu;)Lcom/google/android/gms/measurement/internal/im;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->a:Lcom/google/android/gms/measurement/internal/im;

    return-object v0
.end method

.method private final a(Z)Lcom/google/android/gms/measurement/internal/kb;
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 289
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->c()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->k()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/dv;->a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final a(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 252
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->b:Lcom/google/android/gms/measurement/internal/dq;

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->b:Lcom/google/android/gms/measurement/internal/dq;

    .line 254
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/hu;->F()V

    .line 258
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/hu;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/hu;->a(Landroid/content/ComponentName;)V

    return-void
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/hu;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 274
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Discarding data. Max runnable queue size reached"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->g:Lcom/google/android/gms/measurement/internal/j;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/j;->a(J)V

    .line 273
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/hu;->F()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/hu;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/hu;->N()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/measurement/internal/hu;)V
    .locals 0

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/hu;->M()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/gms/measurement/internal/hu;)Lcom/google/android/gms/measurement/internal/dq;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->b:Lcom/google/android/gms/measurement/internal/dq;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/measurement/internal/hu;)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/hu;->K()V

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->b:Lcom/google/android/gms/measurement/internal/dq;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final C()V
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Z)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/gms/measurement/internal/ih;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/ih;-><init>(Lcom/google/android/gms/measurement/internal/hu;Lcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 16
    return-void
.end method

.method protected final D()V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Z)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v0

    .line 114
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/hu;->J()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->f()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/du;->B()V

    .line 116
    :cond_0
    new-instance v1, Lcom/google/android/gms/measurement/internal/hy;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/hy;-><init>(Lcom/google/android/gms/measurement/internal/hu;Lcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method protected final E()V
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Z)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v0

    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->f()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/du;->C()Z

    .line 135
    new-instance v1, Lcom/google/android/gms/measurement/internal/ic;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/measurement/internal/ic;-><init>(Lcom/google/android/gms/measurement/internal/hu;Lcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method final F()V
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 150
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/hu;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/hu;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->a:Lcom/google/android/gms/measurement/internal/im;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/im;->b()V

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/b;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 159
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 160
    const/high16 v2, 0x10000

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 163
    :goto_1
    if-eqz v0, :cond_4

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance v1, Landroid/content/ComponentName;

    .line 166
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v2

    .line 167
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 169
    const-string/jumbo v3, "com.google.android.gms.measurement.AppMeasurementService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 171
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/hu;->a:Lcom/google/android/gms/measurement/internal/im;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/im;->a(Landroid/content/Intent;)V

    goto :goto_0

    .line 162
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 173
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    .line 175
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method final G()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final H()V
    .locals 3

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 243
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 244
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->a:Lcom/google/android/gms/measurement/internal/im;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/im;->a()V

    .line 245
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hu;->a:Lcom/google/android/gms/measurement/internal/im;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/hu;->b:Lcom/google/android/gms/measurement/internal/dq;

    .line 250
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method final I()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 301
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 302
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/hu;->L()Z

    move-result v1

    if-nez v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/jw;->f()I

    move-result v1

    const v2, 0x310c4

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a()Lcom/google/android/gms/measurement/internal/ab;
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->a()Lcom/google/android/gms/measurement/internal/ab;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/mj;)V
    .locals 2

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Z)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v0

    .line 129
    new-instance v1, Lcom/google/android/gms/measurement/internal/hz;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/hz;-><init>(Lcom/google/android/gms/measurement/internal/hu;Lcom/google/android/gms/measurement/internal/kb;Lcom/google/android/gms/internal/measurement/mj;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/measurement/mj;Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 291
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 293
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    const v1, 0xbdfcb8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(I)I

    move-result v0

    .line 294
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Not bundling data. Service unavailable or out of date"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Lcom/google/android/gms/internal/measurement/mj;[B)V

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/ie;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/gms/measurement/internal/ie;-><init>(Lcom/google/android/gms/measurement/internal/hu;Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/mj;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 83
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Z)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v4

    .line 85
    new-instance v0, Lcom/google/android/gms/measurement/internal/il;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/il;-><init>(Lcom/google/android/gms/measurement/internal/hu;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/kb;Lcom/google/android/gms/internal/measurement/mj;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method protected final a(Lcom/google/android/gms/internal/measurement/mj;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Z)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v5

    .line 95
    new-instance v0, Lcom/google/android/gms/measurement/internal/in;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/in;-><init>(Lcom/google/android/gms/measurement/internal/hu;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/kb;Lcom/google/android/gms/internal/measurement/mj;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/dq;)V
    .locals 0

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 237
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hu;->b:Lcom/google/android/gms/measurement/internal/dq;

    .line 239
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/hu;->K()V

    .line 240
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/hu;->N()V

    .line 241
    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/dq;Lcom/google/android/gms/common/internal/safeparcel/a;Lcom/google/android/gms/measurement/internal/kb;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0x64

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->m()V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 20
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/hu;->J()Z

    move-result v7

    move v5, v3

    move v4, v6

    .line 22
    :goto_0
    const/16 v0, 0x3e9

    if-ge v5, v0, :cond_5

    if-ne v4, v6, :cond_5

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    if-eqz v7, :cond_6

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->f()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/du;->a(I)Ljava/util/List;

    move-result-object v1

    .line 28
    if-eqz v1, :cond_6

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v4, v1

    .line 31
    :goto_1
    if-eqz p2, :cond_0

    if-ge v4, v6, :cond_0

    .line 32
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v2, v3

    :goto_2
    if-ge v2, v8, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/google/android/gms/common/internal/safeparcel/a;

    .line 34
    instance-of v9, v1, Lcom/google/android/gms/measurement/internal/r;

    if-eqz v9, :cond_1

    .line 35
    :try_start_0
    check-cast v1, Lcom/google/android/gms/measurement/internal/r;

    invoke-interface {p1, v1, p3}, Lcom/google/android/gms/measurement/internal/dq;->a(Lcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 37
    :catch_0
    move-exception v1

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v9

    const-string/jumbo v10, "Failed to send event to the service"

    invoke-virtual {v9, v10, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 40
    :cond_1
    instance-of v9, v1, Lcom/google/android/gms/measurement/internal/jv;

    if-eqz v9, :cond_2

    .line 41
    :try_start_1
    check-cast v1, Lcom/google/android/gms/measurement/internal/jv;

    invoke-interface {p1, v1, p3}, Lcom/google/android/gms/measurement/internal/dq;->a(Lcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 43
    :catch_1
    move-exception v1

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v9

    const-string/jumbo v10, "Failed to send user property to the service"

    invoke-virtual {v9, v10, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 46
    :cond_2
    instance-of v9, v1, Lcom/google/android/gms/measurement/internal/kn;

    if-eqz v9, :cond_3

    .line 47
    :try_start_2
    check-cast v1, Lcom/google/android/gms/measurement/internal/kn;

    invoke-interface {p1, v1, p3}, Lcom/google/android/gms/measurement/internal/dq;->a(Lcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 49
    :catch_2
    move-exception v1

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v9

    .line 51
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v9

    const-string/jumbo v10, "Failed to send conditional user property to the service"

    .line 52
    invoke-virtual {v9, v10, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v9, "Discarding data. Unrecognized parcel type."

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 56
    :cond_4
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_0

    .line 57
    :cond_5
    return-void

    :cond_6
    move v4, v3

    goto :goto_1
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/hp;)V
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 139
    new-instance v0, Lcom/google/android/gms/measurement/internal/ib;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/ib;-><init>(Lcom/google/android/gms/measurement/internal/hu;Lcom/google/android/gms/measurement/internal/hp;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/jv;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/hu;->J()Z

    move-result v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->f()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/du;->a(Lcom/google/android/gms/measurement/internal/jv;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 102
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/hu;->a(Z)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/google/android/gms/measurement/internal/hw;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/google/android/gms/measurement/internal/hw;-><init>(Lcom/google/android/gms/measurement/internal/hu;ZLcom/google/android/gms/measurement/internal/jv;Lcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 104
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/kn;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 66
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 72
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->f()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/du;->a(Lcom/google/android/gms/measurement/internal/kn;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    .line 73
    :goto_0
    new-instance v4, Lcom/google/android/gms/measurement/internal/kn;

    invoke-direct {v4, p1}, Lcom/google/android/gms/measurement/internal/kn;-><init>(Lcom/google/android/gms/measurement/internal/kn;)V

    .line 74
    invoke-direct {p0, v2}, Lcom/google/android/gms/measurement/internal/hu;->a(Z)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v5

    .line 75
    new-instance v0, Lcom/google/android/gms/measurement/internal/ij;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/ij;-><init>(Lcom/google/android/gms/measurement/internal/hu;ZZLcom/google/android/gms/measurement/internal/kn;Lcom/google/android/gms/measurement/internal/kb;Lcom/google/android/gms/measurement/internal/kn;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 76
    return-void

    .line 72
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/r;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/hu;->J()Z

    move-result v2

    .line 62
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ef;->f()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/du;->a(Lcom/google/android/gms/measurement/internal/r;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v3, v0

    .line 63
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Z)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v5

    .line 64
    new-instance v0, Lcom/google/android/gms/measurement/internal/if;

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/if;-><init>(Lcom/google/android/gms/measurement/internal/hu;ZZLcom/google/android/gms/measurement/internal/r;Lcom/google/android/gms/measurement/internal/kb;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 65
    return-void

    .line 62
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Z)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v0

    .line 124
    new-instance v1, Lcom/google/android/gms/measurement/internal/ia;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/measurement/internal/ia;-><init>(Lcom/google/android/gms/measurement/internal/hu;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/kn;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 78
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Z)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v6

    .line 80
    new-instance v0, Lcom/google/android/gms/measurement/internal/ii;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/ii;-><init>(Lcom/google/android/gms/measurement/internal/hu;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method protected final a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/measurement/internal/jv;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/de;->i()V

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Z)Lcom/google/android/gms/measurement/internal/kb;

    move-result-object v7

    .line 90
    new-instance v0, Lcom/google/android/gms/measurement/internal/ik;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/measurement/internal/ik;-><init>(Lcom/google/android/gms/measurement/internal/hu;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/kb;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/hu;->a(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method public final bridge synthetic b()Lcom/google/android/gms/measurement/internal/gk;
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->b()Lcom/google/android/gms/measurement/internal/gk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic c()Lcom/google/android/gms/measurement/internal/dv;
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->c()Lcom/google/android/gms/measurement/internal/dv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/measurement/internal/hu;
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->d()Lcom/google/android/gms/measurement/internal/hu;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/ho;
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->e()Lcom/google/android/gms/measurement/internal/ho;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/du;
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->f()Lcom/google/android/gms/measurement/internal/du;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/iz;
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->g()Lcom/google/android/gms/measurement/internal/iz;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()V
    .locals 0

    .prologue
    .line 305
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->l()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 306
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->n()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 308
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->o()V

    return-void
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 317
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 321
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 323
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 324
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/de;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method

.method protected final z()Z
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    return v0
.end method
